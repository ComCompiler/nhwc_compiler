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
              #                    mem layout:|ra_main:8 at 520|s0_main:8 at 512|a:4 at 508|a:4 at 504|temp_4_cmp:1 at 503|none:3 at 500|a:4 at 496|temp_5_arithop:4 at 492|temp_6_:1 at 491|none:3 at 488|temp_7_index_ptr:8 at 480|temp_8_array_init_ptr:8 at 472|temp_9_array_init_ptr:8 at 464|temp_10_array_init_ptr:8 at 456|temp_11_array_init_ptr:8 at 448|c:64 at 384|b:4 at 380|temp_12_ptr2globl:16 at 364|none:4 at 360|temp_13_array_ptr:8 at 352|temp_14_array_ele:4 at 348|temp_15_:1 at 347|none:3 at 344|temp_16_array_init_ptr:8 at 336|temp_17_array_init_ptr:8 at 328|temp_18_array_init_ptr:8 at 320|c:140 at 180|none:4 at 176|temp_19_array_ptr:8 at 168|temp_20_array_ele:4 at 164|none:4 at 160|temp_21_array_ptr:8 at 152|temp_22_array_ele:4 at 148|none:4 at 144|temp_23_array_ptr:8 at 136|temp_24_array_ele:4 at 132|temp_25_ptr2globl:4 at 128|temp_26_ptr2globl:16 at 112|temp_27_array_ptr:8 at 104|temp_28_array_ele:4 at 100|temp_29_ptr2globl:16 at 84|none:4 at 80|temp_30_array_ptr:8 at 72|temp_31_array_ele:4 at 68|temp_32_ptr2globl:16 at 52|none:4 at 48|temp_33_array_ptr:8 at 40|temp_34_array_ele:4 at 36|temp_35_ptr2globl:16 at 20|none:4 at 16|temp_36_array_ptr:8 at 8|temp_37_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-528
              #                    store to ra_main_0 in mem offset legal
    sd      ra,520(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,512(sp)
    addi    s0,sp,528
              #                          alloc i32 a_19 
              #                          alloc i32 a_22 
              #                          alloc i1 temp_4_cmp_31 
              #                          alloc i32 a_33 
              #                          alloc i32 temp_5_arithop_33 
              #                          alloc i1 temp_6__566 
              #                          alloc ptr->i32 temp_7_index_ptr_42 
              #                          alloc ptr->i32 temp_8_array_init_ptr_46 
              #                          alloc ptr->i32 temp_9_array_init_ptr_46 
              #                          alloc ptr->i32 temp_10_array_init_ptr_46 
              #                          alloc ptr->i32 temp_11_array_init_ptr_46 
              #                          alloc Array:i32:[Some(2_0), Some(8_0)] c_46 
              #                          alloc i32 b_48 
              #                          alloc Array:i32:[Some(4_0)] temp_12_ptr2globl_50 
              #                          alloc ptr->i32 temp_13_array_ptr_50 
              #                          alloc i32 temp_14_array_ele_50 
              #                          alloc i1 temp_15__935 
              #                          alloc ptr->i32 temp_16_array_init_ptr_52 
              #                          alloc ptr->i32 temp_17_array_init_ptr_52 
              #                          alloc ptr->i32 temp_18_array_init_ptr_52 
              #                          alloc Array:i32:[Some(7_0), Some(1_0), Some(5_0)] c_52 
              #                          alloc ptr->i32 temp_19_array_ptr_52 
              #                          alloc i32 temp_20_array_ele_52 
              #                          alloc ptr->i32 temp_21_array_ptr_52 
              #                          alloc i32 temp_22_array_ele_52 
              #                          alloc ptr->i32 temp_23_array_ptr_52 
              #                          alloc i32 temp_24_array_ele_52 
              #                          alloc i32 temp_25_ptr2globl_19 
              #                          alloc Array:i32:[Some(4_0)] temp_26_ptr2globl_19 
              #                          alloc ptr->i32 temp_27_array_ptr_19 
              #                          alloc i32 temp_28_array_ele_19 
              #                          alloc Array:i32:[Some(4_0)] temp_29_ptr2globl_19 
              #                          alloc ptr->i32 temp_30_array_ptr_19 
              #                          alloc i32 temp_31_array_ele_19 
              #                          alloc Array:i32:[Some(4_0)] temp_32_ptr2globl_19 
              #                          alloc ptr->i32 temp_33_array_ptr_19 
              #                          alloc i32 temp_34_array_ele_19 
              #                          alloc Array:i32:[Some(4_0)] temp_35_ptr2globl_19 
              #                          alloc ptr->i32 temp_36_array_ptr_19 
              #                          alloc i32 temp_37_array_ele_19 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_19:i32 
              #                          a_19 = i32 1_0 
              #                    occupy a0 with a_19
    li      a0, 1
              #                    free a0
              #                          new_var a_22:i32 
              #                          a_22 = i32 2_0 
              #                    occupy a1 with a_22
    li      a1, 2
              #                    free a1
              #                          a_22 = i32 3_0 
              #                    occupy a1 with a_22
    li      a1, 3
              #                    free a1
              #                           Call void putint_0(a_22) 
              #                    saved register dumping to mem
              #                    store to a_19 in mem offset legal
    sw      a0,508(sp)
              #                    release a0 with a_19
              #                    store to a_22 in mem offset legal
    sw      a1,504(sp)
              #                    release a1 with a_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_22_0
              #                    load from a_22 in mem


    lw      a0,504(sp)
              #                    arg load ended


    call    putint
              #                           Call void putint_0(a_22) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_22_0
              #                    load from a_22 in mem


    lw      a0,504(sp)
              #                    arg load ended


    call    putint
              #                           Call void putint_0(a_19) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_19_0
              #                    load from a_19 in mem


    lw      a0,508(sp)
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
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab 
              #                          label while.head_32: 
.while.head_32:
              #                          new_var temp_4_cmp_31:i1 
              #                          temp_4_cmp_31 = icmp i32 Slt a_19, 5_0 
              #                    occupy a0 with a_19
              #                    load from a_19 in mem


    lw      a0,508(sp)
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_4_cmp_31
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_4_cmp_31, label while.body_32, label while.exit_32 
              #                    occupy a2 with temp_4_cmp_31
              #                    free a2
              #                    occupy a2 with temp_4_cmp_31
    bnez    a2, .while.body_32
              #                    free a2
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a2:Freed { symidx: temp_4_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          a_33 = i32 0_0 
              #                    occupy a1 with a_33
    li      a1, 0
              #                    free a1
              #                          new_var temp_5_arithop_33:i32 
              #                          temp_5_arithop_33 = Add i32 a_33, 1_0 
              #                    occupy a1 with a_33
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_5_arithop_33
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          a_33 = i32 temp_5_arithop_33 
              #                    occupy a4 with temp_5_arithop_33
              #                    occupy a1 with a_33
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_4_cmp_31, tracked: true } |     a4:Freed { symidx: temp_5_arithop_33, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_6__566:i1 
              #                          temp_6__566 = icmp i32 Ne a_33, 0_0 
              #                    occupy a1 with a_33
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a5 with temp_6__566
    xor     a5,a1,a3
    snez    a5, a5
              #                    free a1
              #                    free a3
              #                    free a5
              #                          br i1 temp_6__566, label branch_true_37, label branch_false_37 
              #                    occupy a5 with temp_6__566
              #                    free a5
              #                    occupy a5 with temp_6__566
    bnez    a5, .branch_true_37
              #                    free a5
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_4_cmp_31, tracked: true } |     a4:Freed { symidx: temp_5_arithop_33, tracked: true } |     a5:Freed { symidx: temp_6__566, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          jump label: while.exit_32 
              #                    store to a_33 in mem offset legal
    sw      a1,496(sp)
              #                    release a1 with a_33
              #                    store to temp_5_arithop_33 in mem offset legal
    sw      a4,492(sp)
              #                    release a4 with temp_5_arithop_33
              #                    store to temp_6__566 in mem offset legal
    sb      a5,491(sp)
              #                    release a5 with temp_6__566
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a2:Freed { symidx: temp_4_cmp_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                           Call void putint_0(a_19) 
              #                    saved register dumping to mem
              #                    store to a_19 in mem offset legal
    sw      a0,508(sp)
              #                    release a0 with a_19
              #                    store to temp_4_cmp_31 in mem offset legal
    sb      a2,503(sp)
              #                    release a2 with temp_4_cmp_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_19_0
              #                    load from a_19 in mem


    lw      a0,508(sp)
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
              #                          new_var temp_7_index_ptr_42:ptr->i32 
              #                          temp_7_index_ptr_42 = getelementptr c_0:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a0 with temp_7_index_ptr_42
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_c_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with _anonymous_of_c_0_0
    la      a4, c
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          store 1_0:i32 temp_7_index_ptr_42:ptr->i32 
              #                    occupy a0 with temp_7_index_ptr_42
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu c_0:77 
              #                          c_0 = chi c_0:77 
              #                          new_var c_46:Array:i32:[Some(2_0), Some(8_0)] 
              #                          new_var temp_8_array_init_ptr_46:ptr->i32 
              #                          temp_8_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_46
    li      a5, 0
              #                    occupy a6 with 8_0
    li      a6, 8
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with _anonymous_of_c_46_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
              #                    occupy s2 with _anonymous_of_c_46_0
    mul     s2,a1,a2
              #                    free a1
              #                    free a2
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,384
              #                    free a5
              #                          store 8_0:i32 temp_8_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy a5 with temp_8_array_init_ptr_46
              #                    found literal reg Some(a6) already exist with 8_0
              #                    occupy a6 with 8_0
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu c_46:84 
              #                          c_46 = chi c_46:84 
              #                          new_var temp_9_array_init_ptr_46:ptr->i32 
              #                          temp_9_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(3_0)] 
              #                    occupy s3 with temp_9_array_init_ptr_46
    li      s3, 0
              #                    found literal reg Some(a6) already exist with 8_0
              #                    occupy a6 with 8_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s4 with _anonymous_of_c_46_0
    mul     s4,a6,a7
              #                    free a6
              #                    free a7
    add     s3,s3,s4
              #                    free s4
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s6 with _anonymous_of_c_46_0
    mul     s6,a1,s5
              #                    free a1
              #                    free s5
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,384
              #                    free s3
              #                          store 3_0:i32 temp_9_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy s3 with temp_9_array_init_ptr_46
              #                    found literal reg Some(s5) already exist with 3_0
              #                    occupy s5 with 3_0
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          mu c_46:90 
              #                          c_46 = chi c_46:90 
              #                          new_var temp_10_array_init_ptr_46:ptr->i32 
              #                          temp_10_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_10_array_init_ptr_46
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 8_0
              #                    occupy a6 with 8_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s8 with _anonymous_of_c_46_0
    mul     s8,a6,a7
              #                    free a6
              #                    free a7
    add     s7,s7,s8
              #                    free s8
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s9 with _anonymous_of_c_46_0
    mul     s9,a1,a7
              #                    free a1
              #                    free a7
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,384
              #                    free s7
              #                          store 0_0:i32 temp_10_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy s7 with temp_10_array_init_ptr_46
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
    sw      a7,0(s7)
              #                    free a7
              #                    free s7
              #                          mu c_46:96 
              #                          c_46 = chi c_46:96 
              #                          new_var temp_11_array_init_ptr_46:ptr->i32 
              #                          temp_11_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s10 with temp_11_array_init_ptr_46
    li      s10, 0
              #                    found literal reg Some(a6) already exist with 8_0
              #                    occupy a6 with 8_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s11 with _anonymous_of_c_46_0
    mul     s11,a6,a7
              #                    free a6
              #                    free a7
    add     s10,s10,s11
              #                    free s11
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with _anonymous_of_c_46_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s10,s10,a3
              #                    free a3
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,384
              #                    free s10
              #                          store 9_0:i32 temp_11_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy s10 with temp_11_array_init_ptr_46
              #                    occupy a1 with 9_0
    li      a1, 9
    sw      a1,0(s10)
              #                    free a1
              #                    free s10
              #                          mu c_46:102 
              #                          c_46 = chi c_46:102 
              #                          b_48 = i32 2_0 
              #                    occupy a1 with b_48
    li      a1, 2
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_7_index_ptr_42, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_46, tracked: true } |     s10:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s3:Freed { symidx: temp_9_array_init_ptr_46, tracked: true } |     s7:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_12_ptr2globl_50:Array:i32:[Some(4_0)] 
              #                          temp_12_ptr2globl_50 = load *c_0:ptr->i32 
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
              #                    occupy a3 with temp_12_ptr2globl_50
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_13_array_ptr_50:ptr->i32 
              #                          temp_13_array_ptr_50 = getelementptr temp_12_ptr2globl_50:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a4 with temp_13_array_ptr_50
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s1 with _anonymous_of_temp_12_ptr2globl_50_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,364
              #                    free a4
              #                          new_var temp_14_array_ele_50:i32 
              #                          temp_14_array_ele_50 = load temp_13_array_ptr_50:ptr->i32 
              #                    occupy a4 with temp_13_array_ptr_50
              #                    occupy s2 with temp_14_array_ele_50
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          new_var temp_15__935:i1 
              #                          temp_15__935 = icmp i32 Ne temp_14_array_ele_50, 0_0 
              #                    occupy s2 with temp_14_array_ele_50
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with temp_15__935
    xor     s5,s2,s4
    snez    s5, s5
              #                    free s2
              #                    free s4
              #                    free s5
              #                          br i1 temp_15__935, label branch_true_51, label branch_false_51 
              #                    occupy s5 with temp_15__935
              #                    free s5
              #                    occupy s5 with temp_15__935
    bnez    s5, .branch_true_51
              #                    free s5
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_7_index_ptr_42, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_50, tracked: true } |     a4:Freed { symidx: temp_13_array_ptr_50, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_46, tracked: true } |     s10:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s2:Freed { symidx: temp_14_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_9_array_init_ptr_46, tracked: true } |     s5:Freed { symidx: temp_15__935, tracked: true } |     s7:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] 
              #                          new_var temp_16_array_init_ptr_52:ptr->i32 
              #                          temp_16_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a2 with temp_16_array_init_ptr_52
    li      a2, 0
              #                    occupy a6 with 5_0
    li      a6, 5
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with _anonymous_of_c_52_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a2,a2,s1
              #                    free s1
              #                    found literal reg Some(a6) already exist with 5_0
              #                    occupy a6 with 5_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s4 with _anonymous_of_c_52_0
    mul     s4,a6,a7
              #                    free a6
              #                    free a7
    add     a2,a2,s4
              #                    free s4
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s8 with _anonymous_of_c_52_0
    mul     s8,s6,a7
              #                    free s6
              #                    free a7
    add     a2,a2,s8
              #                    free s8
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,180
              #                    free a2
              #                          store 2_0:i32 temp_16_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy a2 with temp_16_array_init_ptr_52
              #                    occupy s9 with 2_0
    li      s9, 2
    sw      s9,0(a2)
              #                    free s9
              #                    free a2
              #                          mu c_52:127 
              #                          c_52 = chi c_52:127 
              #                          new_var temp_17_array_init_ptr_52:ptr->i32 
              #                          temp_17_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(1_0)] 
              #                    occupy s11 with temp_17_array_init_ptr_52
    li      s11, 0
              #                    found literal reg Some(a6) already exist with 5_0
              #                    occupy a6 with 5_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s1 with _anonymous_of_c_52_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     s11,s11,s1
              #                    free s1
              #                    found literal reg Some(a6) already exist with 5_0
              #                    occupy a6 with 5_0
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s1 with _anonymous_of_c_52_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     s11,s11,s1
              #                    free s1
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_c_52_0
    mul     a7,s6,a6
              #                    free s6
              #                    free a6
    add     s11,s11,a7
              #                    free a7
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,180
              #                    free s11
              #                          store 1_0:i32 temp_17_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy s11 with temp_17_array_init_ptr_52
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
    sw      s6,0(s11)
              #                    free s6
              #                    free s11
              #                          mu c_52:133 
              #                          c_52 = chi c_52:133 
              #                          new_var temp_18_array_init_ptr_52:ptr->i32 
              #                          temp_18_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(2_0)] 
              #                    occupy a6 with temp_18_array_init_ptr_52
    li      a6, 0
              #                    occupy a7 with 5_0
    li      a7, 5
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s4 with _anonymous_of_c_52_0
    mul     s4,a7,s1
              #                    free a7
              #                    free s1
    add     a6,a6,s4
              #                    free s4
              #                    found literal reg Some(a7) already exist with 5_0
              #                    occupy a7 with 5_0
              #                    found literal reg Some(s1) already exist with 0_0
              #                    occupy s1 with 0_0
              #                    occupy s4 with _anonymous_of_c_52_0
    mul     s4,a7,s1
              #                    free a7
              #                    free s1
    add     a6,a6,s4
              #                    free s4
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    found literal reg Some(s9) already exist with 2_0
              #                    occupy s9 with 2_0
              #                    occupy a7 with _anonymous_of_c_52_0
    mul     a7,s6,s9
              #                    free s6
              #                    free s9
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,180
              #                    free a6
              #                          store 8_0:i32 temp_18_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy a6 with temp_18_array_init_ptr_52
              #                    occupy a7 with 8_0
    li      a7, 8
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu c_52:139 
              #                          c_52 = chi c_52:139 
              #                          new_var temp_19_array_ptr_52:ptr->i32 
              #                          temp_19_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(0_0)] 
              #                    occupy a7 with temp_19_array_ptr_52
    li      a7, 0
              #                    occupy s1 with 5_0
    li      s1, 5
              #                    occupy a1 with b_48
              #                    occupy s4 with _anonymous_of_c_52_0
    mul     s4,s1,a1
              #                    free s1
              #                    free a1
    add     a7,a7,s4
              #                    free s4
              #                    found literal reg Some(s1) already exist with 5_0
              #                    occupy s1 with 5_0
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s6 with _anonymous_of_c_52_0
    mul     s6,s1,s4
              #                    free s1
              #                    free s4
    add     a7,a7,s6
              #                    free s6
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    found literal reg Some(s4) already exist with 0_0
              #                    occupy s4 with 0_0
              #                    occupy s6 with _anonymous_of_c_52_0
    mul     s6,s1,s4
              #                    free s1
              #                    free s4
    add     a7,a7,s6
              #                    free s6
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,180
              #                    free a7
              #                          new_var temp_20_array_ele_52:i32 
              #                          temp_20_array_ele_52 = load temp_19_array_ptr_52:ptr->i32 
              #                    occupy a7 with temp_19_array_ptr_52
              #                    occupy s1 with temp_20_array_ele_52
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                           Call void putint_0(temp_20_array_ele_52) 
              #                    saved register dumping to mem
              #                    store to temp_20_array_ele_52 in mem offset legal
    sw      s1,164(sp)
              #                    release s1 with temp_20_array_ele_52
              #                    store to temp_14_array_ele_50 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with temp_14_array_ele_50
              #                    store to temp_9_array_init_ptr_46 in mem offset legal
    sd      s3,464(sp)
              #                    release s3 with temp_9_array_init_ptr_46
              #                    store to temp_15__935 in mem offset legal
    sb      s5,347(sp)
              #                    release s5 with temp_15__935
              #                    store to temp_10_array_init_ptr_46 in mem offset legal
    sd      s7,456(sp)
              #                    release s7 with temp_10_array_init_ptr_46
              #                    store to temp_11_array_init_ptr_46 in mem offset legal
    sd      s10,448(sp)
              #                    release s10 with temp_11_array_init_ptr_46
              #                    store to temp_17_array_init_ptr_52 in mem offset legal
    sd      s11,328(sp)
              #                    release s11 with temp_17_array_init_ptr_52
              #                    store to temp_7_index_ptr_42 in mem offset legal
    sd      a0,480(sp)
              #                    release a0 with temp_7_index_ptr_42
              #                    store to b_48 in mem offset legal
    sw      a1,380(sp)
              #                    release a1 with b_48
              #                    store to temp_16_array_init_ptr_52 in mem offset legal
    sd      a2,336(sp)
              #                    release a2 with temp_16_array_init_ptr_52
              #                    store to temp_12_ptr2globl_50 in mem offset legal
    sw      a3,364(sp)
              #                    release a3 with temp_12_ptr2globl_50
              #                    store to temp_13_array_ptr_50 in mem offset legal
    sd      a4,352(sp)
              #                    release a4 with temp_13_array_ptr_50
              #                    store to temp_8_array_init_ptr_46 in mem offset legal
    sd      a5,472(sp)
              #                    release a5 with temp_8_array_init_ptr_46
              #                    store to temp_18_array_init_ptr_52 in mem offset legal
    sd      a6,320(sp)
              #                    release a6 with temp_18_array_init_ptr_52
              #                    store to temp_19_array_ptr_52 in mem offset legal
    sd      a7,168(sp)
              #                    release a7 with temp_19_array_ptr_52
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_array_ele_52_0
              #                    load from temp_20_array_ele_52 in mem


    lw      a0,164(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_21_array_ptr_52:ptr->i32 
              #                          temp_21_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_21_array_ptr_52
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with b_48
              #                    load from b_48 in mem


    lw      a2,380(sp)
              #                    occupy a3 with _anonymous_of_c_52_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_c_52_0
    mul     a5,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with _anonymous_of_c_52_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,180
              #                    free a0
              #                          new_var temp_22_array_ele_52:i32 
              #                          temp_22_array_ele_52 = load temp_21_array_ptr_52:ptr->i32 
              #                    occupy a0 with temp_21_array_ptr_52
              #                    occupy s2 with temp_22_array_ele_52
    lw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                           Call void putint_0(temp_22_array_ele_52) 
              #                    saved register dumping to mem
              #                    store to temp_22_array_ele_52 in mem offset legal
    sw      s2,148(sp)
              #                    release s2 with temp_22_array_ele_52
              #                    store to temp_21_array_ptr_52 in mem offset legal
    sd      a0,152(sp)
              #                    release a0 with temp_21_array_ptr_52
              #                    store to b_48 in mem offset legal
    sw      a2,380(sp)
              #                    release a2 with b_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_22_array_ele_52_0
              #                    load from temp_22_array_ele_52 in mem


    lw      a0,148(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_23_array_ptr_52:ptr->i32 
              #                          temp_23_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_23_array_ptr_52
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with b_48
              #                    load from b_48 in mem


    lw      a2,380(sp)
              #                    occupy a3 with _anonymous_of_c_52_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_c_52_0
    mul     a5,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s1 with _anonymous_of_c_52_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,180
              #                    free a0
              #                          new_var temp_24_array_ele_52:i32 
              #                          temp_24_array_ele_52 = load temp_23_array_ptr_52:ptr->i32 
              #                    occupy a0 with temp_23_array_ptr_52
              #                    occupy s2 with temp_24_array_ele_52
    lw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                           Call void putint_0(temp_24_array_ele_52) 
              #                    saved register dumping to mem
              #                    store to temp_24_array_ele_52 in mem offset legal
    sw      s2,132(sp)
              #                    release s2 with temp_24_array_ele_52
              #                    store to temp_23_array_ptr_52 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with temp_23_array_ptr_52
              #                    store to b_48 in mem offset legal
    sw      a2,380(sp)
              #                    release a2 with b_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_array_ele_52_0
              #                    load from temp_24_array_ele_52 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_51 
              #                    occupy s5 with _anonymous_of_temp_15__935_0
              #                    load from temp_15__935 in mem
    lb      s5,347(sp)
              #                    occupy a0 with _anonymous_of_temp_7_index_ptr_42_0
              #                    load from temp_7_index_ptr_42 in mem
    ld      a0,480(sp)
              #                    occupy a3 with _anonymous_of_temp_12_ptr2globl_50_0
              #                    load from temp_12_ptr2globl_50 in mem
    lw      a3,364(sp)
              #                    occupy s2 with _anonymous_of_temp_14_array_ele_50_0
              #                    load from temp_14_array_ele_50 in mem


    lw      s2,348(sp)
              #                    occupy a1 with _anonymous_of_b_48_0
              #                    load from b_48 in mem


    lw      a1,380(sp)
              #                    occupy s10 with _anonymous_of_temp_11_array_init_ptr_46_0
              #                    load from temp_11_array_init_ptr_46 in mem
    ld      s10,448(sp)
              #                    occupy a4 with _anonymous_of_temp_13_array_ptr_50_0
              #                    load from temp_13_array_ptr_50 in mem
    ld      a4,352(sp)
              #                    occupy s3 with _anonymous_of_temp_9_array_init_ptr_46_0
              #                    load from temp_9_array_init_ptr_46 in mem
    ld      s3,464(sp)
              #                    occupy a5 with _anonymous_of_temp_8_array_init_ptr_46_0
              #                    load from temp_8_array_init_ptr_46 in mem
    ld      a5,472(sp)
              #                    occupy s7 with _anonymous_of_temp_10_array_init_ptr_46_0
              #                    load from temp_10_array_init_ptr_46 in mem
    ld      s7,456(sp)
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_7_index_ptr_42, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_50, tracked: true } |     a4:Freed { symidx: temp_13_array_ptr_50, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_46, tracked: true } |     s10:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s2:Freed { symidx: temp_14_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_9_array_init_ptr_46, tracked: true } |     s5:Freed { symidx: temp_15__935, tracked: true } |     s7:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_7_index_ptr_42, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_50, tracked: true } |     a4:Freed { symidx: temp_13_array_ptr_50, tracked: true } |     a5:Freed { symidx: temp_8_array_init_ptr_46, tracked: true } |     s10:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s2:Freed { symidx: temp_14_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_9_array_init_ptr_46, tracked: true } |     s5:Freed { symidx: temp_15__935, tracked: true } |     s7:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_14_array_ele_50 in mem offset legal
    sw      s2,348(sp)
              #                    release s2 with temp_14_array_ele_50
              #                    store to temp_9_array_init_ptr_46 in mem offset legal
    sd      s3,464(sp)
              #                    release s3 with temp_9_array_init_ptr_46
              #                    store to temp_15__935 in mem offset legal
    sb      s5,347(sp)
              #                    release s5 with temp_15__935
              #                    store to temp_10_array_init_ptr_46 in mem offset legal
    sd      s7,456(sp)
              #                    release s7 with temp_10_array_init_ptr_46
              #                    store to temp_11_array_init_ptr_46 in mem offset legal
    sd      s10,448(sp)
              #                    release s10 with temp_11_array_init_ptr_46
              #                    store to temp_7_index_ptr_42 in mem offset legal
    sd      a0,480(sp)
              #                    release a0 with temp_7_index_ptr_42
              #                    store to b_48 in mem offset legal
    sw      a1,380(sp)
              #                    release a1 with b_48
              #                    store to temp_12_ptr2globl_50 in mem offset legal
    sw      a3,364(sp)
              #                    release a3 with temp_12_ptr2globl_50
              #                    store to temp_13_array_ptr_50 in mem offset legal
    sd      a4,352(sp)
              #                    release a4 with temp_13_array_ptr_50
              #                    store to temp_8_array_init_ptr_46 in mem offset legal
    sd      a5,472(sp)
              #                    release a5 with temp_8_array_init_ptr_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_25_ptr2globl_19:i32 
              #                          temp_25_ptr2globl_19 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_25_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_25_ptr2globl_19) 
              #                    saved register dumping to mem
              #                    store to temp_25_ptr2globl_19 in mem offset legal
    sw      a1,128(sp)
              #                    release a1 with temp_25_ptr2globl_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ptr2globl_19_0
              #                    load from temp_25_ptr2globl_19 in mem


    lw      a0,128(sp)
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
              #                          new_var temp_26_ptr2globl_19:Array:i32:[Some(4_0)] 
              #                          temp_26_ptr2globl_19 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_26_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_27_array_ptr_19:ptr->i32 
              #                          temp_27_array_ptr_19 = getelementptr temp_26_ptr2globl_19:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy a2 with temp_27_array_ptr_19
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_26_ptr2globl_19_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
              #                    free a2
              #                          new_var temp_28_array_ele_19:i32 
              #                          temp_28_array_ele_19 = load temp_27_array_ptr_19:ptr->i32 
              #                    occupy a2 with temp_27_array_ptr_19
              #                    occupy a6 with temp_28_array_ele_19
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                           Call void putint_0(temp_28_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_26_ptr2globl_19 in mem offset legal
    sw      a1,112(sp)
              #                    release a1 with temp_26_ptr2globl_19
              #                    store to temp_27_array_ptr_19 in mem offset legal
    sd      a2,104(sp)
              #                    release a2 with temp_27_array_ptr_19
              #                    store to temp_28_array_ele_19 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with temp_28_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_array_ele_19_0
              #                    load from temp_28_array_ele_19 in mem


    lw      a0,100(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_29_ptr2globl_19:Array:i32:[Some(4_0)] 
              #                          temp_29_ptr2globl_19 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_29_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_30_array_ptr_19:ptr->i32 
              #                          temp_30_array_ptr_19 = getelementptr temp_29_ptr2globl_19:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy a2 with temp_30_array_ptr_19
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with _anonymous_of_temp_29_ptr2globl_19_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,84
              #                    free a2
              #                          new_var temp_31_array_ele_19:i32 
              #                          temp_31_array_ele_19 = load temp_30_array_ptr_19:ptr->i32 
              #                    occupy a2 with temp_30_array_ptr_19
              #                    occupy a6 with temp_31_array_ele_19
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                           Call void putint_0(temp_31_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_29_ptr2globl_19 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_29_ptr2globl_19
              #                    store to temp_30_array_ptr_19 in mem offset legal
    sd      a2,72(sp)
              #                    release a2 with temp_30_array_ptr_19
              #                    store to temp_31_array_ele_19 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_31_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_31_array_ele_19_0
              #                    load from temp_31_array_ele_19 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_32_ptr2globl_19:Array:i32:[Some(4_0)] 
              #                          temp_32_ptr2globl_19 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_32_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_33_array_ptr_19:ptr->i32 
              #                          temp_33_array_ptr_19 = getelementptr temp_32_ptr2globl_19:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a2 with temp_33_array_ptr_19
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with _anonymous_of_temp_32_ptr2globl_19_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,52
              #                    free a2
              #                          new_var temp_34_array_ele_19:i32 
              #                          temp_34_array_ele_19 = load temp_33_array_ptr_19:ptr->i32 
              #                    occupy a2 with temp_33_array_ptr_19
              #                    occupy a6 with temp_34_array_ele_19
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                           Call void putint_0(temp_34_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_32_ptr2globl_19 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with temp_32_ptr2globl_19
              #                    store to temp_33_array_ptr_19 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_33_array_ptr_19
              #                    store to temp_34_array_ele_19 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_34_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_34_array_ele_19_0
              #                    load from temp_34_array_ele_19 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_35_ptr2globl_19:Array:i32:[Some(4_0)] 
              #                          temp_35_ptr2globl_19 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_35_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_36_array_ptr_19:ptr->i32 
              #                          temp_36_array_ptr_19 = getelementptr temp_35_ptr2globl_19:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy a2 with temp_36_array_ptr_19
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with _anonymous_of_temp_35_ptr2globl_19_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,20
              #                    free a2
              #                          new_var temp_37_array_ele_19:i32 
              #                          temp_37_array_ele_19 = load temp_36_array_ptr_19:ptr->i32 
              #                    occupy a2 with temp_36_array_ptr_19
              #                    occupy a6 with temp_37_array_ele_19
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                           Call void putint_0(temp_37_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_35_ptr2globl_19 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_35_ptr2globl_19
              #                    store to temp_36_array_ptr_19 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_36_array_ptr_19
              #                    store to temp_37_array_ele_19 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_37_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_array_ele_19_0
              #                    load from temp_37_array_ele_19 in mem


    lw      a0,4(sp)
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
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,520(sp)
              #                    load from s0_main_0 in mem
    ld      s0,512(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,528
              #                    free a0
    ret
              #                    regtab 
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_4_cmp_31, tracked: true } |     a4:Freed { symidx: temp_5_arithop_33, tracked: true } |     a5:Freed { symidx: temp_6__566, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          jump label: while.head_32 
              #                    store to a_19 in mem offset legal
    sw      a0,508(sp)
              #                    release a0 with a_19
              #                    store to a_33 in mem offset legal
    sw      a1,496(sp)
              #                    release a1 with a_33
              #                    store to temp_4_cmp_31 in mem offset legal
    sb      a2,503(sp)
              #                    release a2 with temp_4_cmp_31
              #                    store to temp_5_arithop_33 in mem offset legal
    sw      a4,492(sp)
              #                    release a4 with temp_5_arithop_33
              #                    store to temp_6__566 in mem offset legal
    sb      a5,491(sp)
              #                    release a5 with temp_6__566
    j       .while.head_32
.section ___var
    .data
    .align 4
    .globl c
              #                          global Array:i32:[Some(4_0)] c_0 
    .type c,@object
c:
    .word 6
    .word 7
    .word 8
    .word 9
    .zero 13
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 5
