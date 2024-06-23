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
              #                    mem layout:|ra_main:8 at 456|s0_main:8 at 448|a:4 at 444|a:4 at 440|temp_5_cmp:1 at 439|none:3 at 436|a:4 at 432|temp_6_arithop:4 at 428|temp_7_:1 at 427|none:3 at 424|temp_8_index_ptr:8 at 416|temp_9_array_init_ptr:8 at 408|temp_10_array_init_ptr:8 at 400|temp_11_array_init_ptr:8 at 392|temp_12_array_init_ptr:8 at 384|temp_13_array_init_ptr:8 at 376|c:64 at 312|b:4 at 308|none:4 at 304|temp_14_array_ptr:8 at 296|temp_15_array_ele:4 at 292|temp_16_:1 at 291|none:3 at 288|temp_17_array_init_ptr:8 at 280|temp_18_array_init_ptr:8 at 272|temp_19_array_init_ptr:8 at 264|temp_20_array_init_ptr:8 at 256|c:140 at 116|none:4 at 112|temp_21_array_ptr:8 at 104|temp_22_array_ele:4 at 100|none:4 at 96|temp_23_array_ptr:8 at 88|temp_24_array_ele:4 at 84|none:4 at 80|temp_25_array_ptr:8 at 72|temp_26_array_ele:4 at 68|temp_27_ptr2globl:4 at 64|temp_28_array_ptr:8 at 56|temp_29_array_ele:4 at 52|none:4 at 48|temp_30_array_ptr:8 at 40|temp_31_array_ele:4 at 36|none:4 at 32|temp_32_array_ptr:8 at 24|temp_33_array_ele:4 at 20|none:4 at 16|temp_34_array_ptr:8 at 8|temp_35_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-464
              #                    store to ra_main_0 in mem offset legal
    sd      ra,456(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,448(sp)
    addi    s0,sp,464
              #                          alloc i32 a_19 
              #                          alloc i32 a_22 
              #                          alloc i1 temp_5_cmp_31 
              #                          alloc i32 a_33 
              #                          alloc i32 temp_6_arithop_33 
              #                          alloc i1 temp_7__566 
              #                          alloc ptr->i32 temp_8_index_ptr_42 
              #                          alloc ptr->i32 temp_9_array_init_ptr_46 
              #                          alloc ptr->i32 temp_10_array_init_ptr_46 
              #                          alloc ptr->i32 temp_11_array_init_ptr_46 
              #                          alloc ptr->i32 temp_12_array_init_ptr_46 
              #                          alloc ptr->i32 temp_13_array_init_ptr_46 
              #                          alloc Array:i32:[Some(2_0), Some(8_0)] c_46 
              #                          alloc i32 b_48 
              #                          alloc ptr->i32 temp_14_array_ptr_50 
              #                          alloc i32 temp_15_array_ele_50 
              #                          alloc i1 temp_16__935 
              #                          alloc ptr->i32 temp_17_array_init_ptr_52 
              #                          alloc ptr->i32 temp_18_array_init_ptr_52 
              #                          alloc ptr->i32 temp_19_array_init_ptr_52 
              #                          alloc ptr->i32 temp_20_array_init_ptr_52 
              #                          alloc Array:i32:[Some(7_0), Some(1_0), Some(5_0)] c_52 
              #                          alloc ptr->i32 temp_21_array_ptr_52 
              #                          alloc i32 temp_22_array_ele_52 
              #                          alloc ptr->i32 temp_23_array_ptr_52 
              #                          alloc i32 temp_24_array_ele_52 
              #                          alloc ptr->i32 temp_25_array_ptr_52 
              #                          alloc i32 temp_26_array_ele_52 
              #                          alloc i32 temp_27_ptr2globl_19 
              #                          alloc ptr->i32 temp_28_array_ptr_19 
              #                          alloc i32 temp_29_array_ele_19 
              #                          alloc ptr->i32 temp_30_array_ptr_19 
              #                          alloc i32 temp_31_array_ele_19 
              #                          alloc ptr->i32 temp_32_array_ptr_19 
              #                          alloc i32 temp_33_array_ele_19 
              #                          alloc ptr->i32 temp_34_array_ptr_19 
              #                          alloc i32 temp_35_array_ele_19 
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
    sw      a0,444(sp)
              #                    release a0 with a_19
              #                    store to a_22 in mem offset legal
    sw      a1,440(sp)
              #                    release a1 with a_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_22_0
              #                    load from a_22 in mem


    lw      a0,440(sp)
              #                    arg load ended


    call    putint
              #                           Call void putint_0(a_22) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_22_0
              #                    load from a_22 in mem


    lw      a0,440(sp)
              #                    arg load ended


    call    putint
              #                           Call void putint_0(a_19) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_19_0
              #                    load from a_19 in mem


    lw      a0,444(sp)
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
              #                          new_var temp_5_cmp_31:i1 
              #                          temp_5_cmp_31 = icmp i32 Slt a_19, 5_0 
              #                    occupy a0 with a_19
              #                    load from a_19 in mem


    lw      a0,444(sp)
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_5_cmp_31
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_5_cmp_31, label while.body_32, label while.exit_32 
              #                    occupy a2 with temp_5_cmp_31
              #                    free a2
              #                    occupy a2 with temp_5_cmp_31
    bnez    a2, .while.body_32
              #                    free a2
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a2:Freed { symidx: temp_5_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          a_33 = i32 0_0 
              #                    occupy a1 with a_33
    li      a1, 0
              #                    free a1
              #                          new_var temp_6_arithop_33:i32 
              #                          temp_6_arithop_33 = Add i32 a_33, 1_0 
              #                    occupy a1 with a_33
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_6_arithop_33
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          a_33 = i32 temp_6_arithop_33 
              #                    occupy a4 with temp_6_arithop_33
              #                    occupy a1 with a_33
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_5_cmp_31, tracked: true } |     a4:Freed { symidx: temp_6_arithop_33, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_7__566:i1 
              #                          temp_7__566 = icmp i32 Ne a_33, 0_0 
              #                    occupy a1 with a_33
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a5 with temp_7__566
    xor     a5,a1,a3
    snez    a5, a5
              #                    free a1
              #                    free a3
              #                    free a5
              #                          br i1 temp_7__566, label branch_true_37, label branch_false_37 
              #                    occupy a5 with temp_7__566
              #                    free a5
              #                    occupy a5 with temp_7__566
    bnez    a5, .branch_true_37
              #                    free a5
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_5_cmp_31, tracked: true } |     a4:Freed { symidx: temp_6_arithop_33, tracked: true } |     a5:Freed { symidx: temp_7__566, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          jump label: while.exit_32 
              #                    store to temp_7__566 in mem offset legal
    sb      a5,427(sp)
              #                    release a5 with temp_7__566
              #                    store to a_33 in mem offset legal
    sw      a1,432(sp)
              #                    release a1 with a_33
              #                    store to temp_6_arithop_33 in mem offset legal
    sw      a4,428(sp)
              #                    release a4 with temp_6_arithop_33
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a2:Freed { symidx: temp_5_cmp_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                           Call void putint_0(a_19) 
              #                    saved register dumping to mem
              #                    store to a_19 in mem offset legal
    sw      a0,444(sp)
              #                    release a0 with a_19
              #                    store to temp_5_cmp_31 in mem offset legal
    sb      a2,439(sp)
              #                    release a2 with temp_5_cmp_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_19_0
              #                    load from a_19 in mem


    lw      a0,444(sp)
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
              #                          new_var temp_8_index_ptr_42:ptr->i32 
              #                          temp_8_index_ptr_42 = getelementptr *c_0:ptr->i32 [Some(2_0)] 
              #                    occupy a0 with temp_8_index_ptr_42
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          store 1_0:i32 temp_8_index_ptr_42:ptr->i32 
              #                    occupy a0 with temp_8_index_ptr_42
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu *c_0:80 
              #                          *c_0 = chi *c_0:80 
              #                          new_var c_46:Array:i32:[Some(2_0), Some(8_0)] 
              #                          new_var temp_9_array_init_ptr_46:ptr->i32 
              #                          temp_9_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [] 
              #                    occupy a5 with temp_9_array_init_ptr_46
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,312
              #                    free a5
              #                           Call void memset_0(temp_9_array_init_ptr_46, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    store to temp_8_index_ptr_42 in mem offset legal
    sd      a0,416(sp)
              #                    release a0 with temp_8_index_ptr_42
              #                    store to temp_9_array_init_ptr_46 in mem offset legal
    sd      a5,408(sp)
              #                    release a5 with temp_9_array_init_ptr_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_9_array_init_ptr_46_0
              #                    load from temp_9_array_init_ptr_46 in mem
    ld      a0,408(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                          new_var temp_10_array_init_ptr_46:ptr->i32 
              #                          temp_10_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_46
    li      a0, 0
              #                    occupy a1 with 8_0
    li      a1, 8
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,312
              #                    free a0
              #                          store 8_0:i32 temp_10_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_46
              #                    found literal reg Some(a1) already exist with 8_0
              #                    occupy a1 with 8_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu c_46:91 
              #                          c_46 = chi c_46:91 
              #                          new_var temp_11_array_init_ptr_46:ptr->i32 
              #                          temp_11_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(3_0)] 
              #                    occupy a7 with temp_11_array_init_ptr_46
    li      a7, 0
              #                    found literal reg Some(a1) already exist with 8_0
              #                    occupy a1 with 8_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a1,a2
              #                    free a1
              #                    free a2
    add     a7,a7,s1
              #                    free s1
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with 3_0
    li      s2, 3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a4,s2
              #                    free a4
              #                    free s2
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,312
              #                    free a7
              #                          store 3_0:i32 temp_11_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy a7 with temp_11_array_init_ptr_46
              #                    found literal reg Some(s2) already exist with 3_0
              #                    occupy s2 with 3_0
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu c_46:97 
              #                          c_46 = chi c_46:97 
              #                          new_var temp_12_array_init_ptr_46:ptr->i32 
              #                          temp_12_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s4 with temp_12_array_init_ptr_46
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 8_0
              #                    occupy a1 with 8_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a1,a2
              #                    free a1
              #                    free a2
    add     s4,s4,s5
              #                    free s5
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a4,s6
              #                    free a4
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,312
              #                    free s4
              #                          store 9_0:i32 temp_12_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy s4 with temp_12_array_init_ptr_46
              #                    occupy s8 with 9_0
    li      s8, 9
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu c_46:103 
              #                          c_46 = chi c_46:103 
              #                          new_var temp_13_array_init_ptr_46:ptr->i32 
              #                          temp_13_array_init_ptr_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s9 with temp_13_array_init_ptr_46
    li      s9, 0
              #                    found literal reg Some(a1) already exist with 8_0
              #                    occupy a1 with 8_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,a2
              #                    free a1
              #                    free a2
    add     s9,s9,s10
              #                    free s10
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s6,a2
              #                    free s6
              #                    free a2
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,312
              #                    free s9
              #                          store 0_0:i32 temp_13_array_init_ptr_46:ptr->Array:i32:[Some(8_0)] 
              #                    occupy s9 with temp_13_array_init_ptr_46
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
    sw      a2,0(s9)
              #                    free a2
              #                    free s9
              #                          mu c_46:109 
              #                          c_46 = chi c_46:109 
              #                          b_48 = i32 2_0 
              #                    occupy a1 with b_48
    li      a1, 2
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a7:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s4:Freed { symidx: temp_12_array_init_ptr_46, tracked: true } |     s9:Freed { symidx: temp_13_array_init_ptr_46, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_14_array_ptr_50:ptr->i32 
              #                          temp_14_array_ptr_50 = getelementptr *c_0:ptr->i32 [Some(2_0)] 
              #                    occupy a2 with temp_14_array_ptr_50
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *c_0
              #                       load label c as ptr to reg
    la      a6, c
              #                    occupy reg a6 with *c_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_15_array_ele_50:i32 
              #                          temp_15_array_ele_50 = load temp_14_array_ptr_50:ptr->i32 
              #                    occupy a2 with temp_14_array_ptr_50
              #                    occupy s1 with temp_15_array_ele_50
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_16__935:i1 
              #                          temp_16__935 = icmp i32 Ne temp_15_array_ele_50, 0_0 
              #                    occupy s1 with temp_15_array_ele_50
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_16__935
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_16__935, label branch_true_51, label branch_false_51 
              #                    occupy s3 with temp_16__935
              #                    free s3
              #                    occupy s3 with temp_16__935
    bnez    s3, .branch_true_51
              #                    free s3
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a2:Freed { symidx: temp_14_array_ptr_50, tracked: true } |     a7:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s1:Freed { symidx: temp_15_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_16__935, tracked: true } |     s4:Freed { symidx: temp_12_array_init_ptr_46, tracked: true } |     s9:Freed { symidx: temp_13_array_init_ptr_46, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] 
              #                          new_var temp_17_array_init_ptr_52:ptr->i32 
              #                          temp_17_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [] 
              #                    occupy a3 with temp_17_array_init_ptr_52
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,116
              #                    free a3
              #                           Call void memset_0(temp_17_array_init_ptr_52, 0_0, 140_0) 
              #                    saved register dumping to mem
              #                    store to temp_15_array_ele_50 in mem offset legal
    sw      s1,292(sp)
              #                    release s1 with temp_15_array_ele_50
              #                    store to temp_16__935 in mem offset legal
    sb      s3,291(sp)
              #                    release s3 with temp_16__935
              #                    store to temp_12_array_init_ptr_46 in mem offset legal
    sd      s4,384(sp)
              #                    release s4 with temp_12_array_init_ptr_46
              #                    store to temp_13_array_init_ptr_46 in mem offset legal
    sd      s9,376(sp)
              #                    release s9 with temp_13_array_init_ptr_46
              #                    store to temp_10_array_init_ptr_46 in mem offset legal
    sd      a0,400(sp)
              #                    release a0 with temp_10_array_init_ptr_46
              #                    store to b_48 in mem offset legal
    sw      a1,308(sp)
              #                    release a1 with b_48
              #                    store to temp_14_array_ptr_50 in mem offset legal
    sd      a2,296(sp)
              #                    release a2 with temp_14_array_ptr_50
              #                    store to temp_17_array_init_ptr_52 in mem offset legal
    sd      a3,280(sp)
              #                    release a3 with temp_17_array_init_ptr_52
              #                    store to temp_11_array_init_ptr_46 in mem offset legal
    sd      a7,392(sp)
              #                    release a7 with temp_11_array_init_ptr_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_array_init_ptr_52_0
              #                    load from temp_17_array_init_ptr_52 in mem
    ld      a0,280(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_140_0_0
    li      a2, 140
              #                    arg load ended


    call    memset
              #                          new_var temp_18_array_init_ptr_52:ptr->i32 
              #                          temp_18_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_52
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
              #                    free a0
              #                          store 8_0:i32 temp_18_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy a0 with temp_18_array_init_ptr_52
              #                    occupy s1 with 8_0
    li      s1, 8
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu c_52:135 
              #                          c_52 = chi c_52:135 
              #                          new_var temp_19_array_init_ptr_52:ptr->i32 
              #                          temp_19_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(1_0)] 
              #                    occupy s2 with temp_19_array_init_ptr_52
    li      s2, 0
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a1,a2
              #                    free a1
              #                    free a2
    add     s2,s2,s3
              #                    free s3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a1,a2
              #                    free a1
              #                    free a2
    add     s2,s2,s4
              #                    free s4
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,s5
              #                    free a5
              #                    free s5
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,116
              #                    free s2
              #                          store 1_0:i32 temp_19_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy s2 with temp_19_array_init_ptr_52
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu c_52:141 
              #                          c_52 = chi c_52:141 
              #                          new_var temp_20_array_init_ptr_52:ptr->i32 
              #                          temp_20_array_init_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_20_array_init_ptr_52
    li      s7, 0
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,a2
              #                    free a1
              #                    free a2
    add     s7,s7,s8
              #                    free s8
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a1,a2
              #                    free a1
              #                    free a2
    add     s7,s7,s9
              #                    free s9
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s5,a2
              #                    free s5
              #                    free a2
    add     s7,s7,s10
              #                    free s10
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,116
              #                    free s7
              #                          store 2_0:i32 temp_20_array_init_ptr_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
              #                    occupy s7 with temp_20_array_init_ptr_52
              #                    found literal reg Some(a6) already exist with 2_0
              #                    occupy a6 with 2_0
    sw      a6,0(s7)
              #                    free a6
              #                    free s7
              #                          mu c_52:147 
              #                          c_52 = chi c_52:147 
              #                          new_var temp_21_array_ptr_52:ptr->i32 
              #                          temp_21_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(0_0)] 
              #                    occupy s11 with temp_21_array_ptr_52
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a2 with b_48
              #                    load from b_48 in mem


    lw      a2,308(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s11,s11,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a1,a3
              #                    free a1
              #                    free a3
    add     s11,s11,a4
              #                    free a4
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,s5,a3
              #                    free s5
              #                    free a3
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,116
              #                    free s11
              #                          new_var temp_22_array_ele_52:i32 
              #                          temp_22_array_ele_52 = load temp_21_array_ptr_52:ptr->i32 
              #                    occupy s11 with temp_21_array_ptr_52
              #                    occupy a1 with temp_22_array_ele_52
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                           Call void putint_0(temp_22_array_ele_52) 
              #                    saved register dumping to mem
              #                    store to temp_19_array_init_ptr_52 in mem offset legal
    sd      s2,264(sp)
              #                    release s2 with temp_19_array_init_ptr_52
              #                    store to temp_20_array_init_ptr_52 in mem offset legal
    sd      s7,256(sp)
              #                    release s7 with temp_20_array_init_ptr_52
              #                    store to temp_21_array_ptr_52 in mem offset legal
    sd      s11,104(sp)
              #                    release s11 with temp_21_array_ptr_52
              #                    store to temp_18_array_init_ptr_52 in mem offset legal
    sd      a0,272(sp)
              #                    release a0 with temp_18_array_init_ptr_52
              #                    store to temp_22_array_ele_52 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with temp_22_array_ele_52
              #                    store to b_48 in mem offset legal
    sw      a2,308(sp)
              #                    release a2 with b_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_22_array_ele_52_0
              #                    load from temp_22_array_ele_52 in mem


    lw      a0,100(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_23_array_ptr_52:ptr->i32 
              #                          temp_23_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_23_array_ptr_52
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with b_48
              #                    load from b_48 in mem


    lw      a2,308(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
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
    sw      s2,84(sp)
              #                    release s2 with temp_24_array_ele_52
              #                    store to temp_23_array_ptr_52 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with temp_23_array_ptr_52
              #                    store to b_48 in mem offset legal
    sw      a2,308(sp)
              #                    release a2 with b_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_array_ele_52_0
              #                    load from temp_24_array_ele_52 in mem


    lw      a0,84(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_25_array_ptr_52:ptr->i32 
              #                          temp_25_array_ptr_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_25_array_ptr_52
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with b_48
              #                    load from b_48 in mem


    lw      a2,308(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    found literal reg Some(a1) already exist with 5_0
              #                    occupy a1 with 5_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
              #                    free a0
              #                          new_var temp_26_array_ele_52:i32 
              #                          temp_26_array_ele_52 = load temp_25_array_ptr_52:ptr->i32 
              #                    occupy a0 with temp_25_array_ptr_52
              #                    occupy s2 with temp_26_array_ele_52
    lw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                           Call void putint_0(temp_26_array_ele_52) 
              #                    saved register dumping to mem
              #                    store to temp_26_array_ele_52 in mem offset legal
    sw      s2,68(sp)
              #                    release s2 with temp_26_array_ele_52
              #                    store to temp_25_array_ptr_52 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_25_array_ptr_52
              #                    store to b_48 in mem offset legal
    sw      a2,308(sp)
              #                    release a2 with b_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_26_array_ele_52_0
              #                    load from temp_26_array_ele_52 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_51 
              #                    occupy a2 with _anonymous_of_temp_14_array_ptr_50_0
              #                    load from temp_14_array_ptr_50 in mem
    ld      a2,296(sp)
              #                    occupy a0 with _anonymous_of_temp_10_array_init_ptr_46_0
              #                    load from temp_10_array_init_ptr_46 in mem
    ld      a0,400(sp)
              #                    occupy s4 with _anonymous_of_temp_12_array_init_ptr_46_0
              #                    load from temp_12_array_init_ptr_46 in mem
    ld      s4,384(sp)
              #                    occupy s9 with _anonymous_of_temp_13_array_init_ptr_46_0
              #                    load from temp_13_array_init_ptr_46 in mem
    ld      s9,376(sp)
              #                    occupy s1 with _anonymous_of_temp_15_array_ele_50_0
              #                    load from temp_15_array_ele_50 in mem


    lw      s1,292(sp)
              #                    occupy a1 with _anonymous_of_b_48_0
              #                    load from b_48 in mem


    lw      a1,308(sp)
              #                    occupy a7 with _anonymous_of_temp_11_array_init_ptr_46_0
              #                    load from temp_11_array_init_ptr_46 in mem
    ld      a7,392(sp)
              #                    occupy s3 with _anonymous_of_temp_16__935_0
              #                    load from temp_16__935 in mem
    lb      s3,291(sp)
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a2:Freed { symidx: temp_14_array_ptr_50, tracked: true } |     a7:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s1:Freed { symidx: temp_15_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_16__935, tracked: true } |     s4:Freed { symidx: temp_12_array_init_ptr_46, tracked: true } |     s9:Freed { symidx: temp_13_array_init_ptr_46, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_10_array_init_ptr_46, tracked: true } |     a1:Freed { symidx: b_48, tracked: true } |     a2:Freed { symidx: temp_14_array_ptr_50, tracked: true } |     a7:Freed { symidx: temp_11_array_init_ptr_46, tracked: true } |     s1:Freed { symidx: temp_15_array_ele_50, tracked: true } |     s3:Freed { symidx: temp_16__935, tracked: true } |     s4:Freed { symidx: temp_12_array_init_ptr_46, tracked: true } |     s9:Freed { symidx: temp_13_array_init_ptr_46, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_15_array_ele_50 in mem offset legal
    sw      s1,292(sp)
              #                    release s1 with temp_15_array_ele_50
              #                    store to temp_16__935 in mem offset legal
    sb      s3,291(sp)
              #                    release s3 with temp_16__935
              #                    store to temp_12_array_init_ptr_46 in mem offset legal
    sd      s4,384(sp)
              #                    release s4 with temp_12_array_init_ptr_46
              #                    store to temp_13_array_init_ptr_46 in mem offset legal
    sd      s9,376(sp)
              #                    release s9 with temp_13_array_init_ptr_46
              #                    store to temp_10_array_init_ptr_46 in mem offset legal
    sd      a0,400(sp)
              #                    release a0 with temp_10_array_init_ptr_46
              #                    store to b_48 in mem offset legal
    sw      a1,308(sp)
              #                    release a1 with b_48
              #                    store to temp_14_array_ptr_50 in mem offset legal
    sd      a2,296(sp)
              #                    release a2 with temp_14_array_ptr_50
              #                    store to temp_11_array_init_ptr_46 in mem offset legal
    sd      a7,392(sp)
              #                    release a7 with temp_11_array_init_ptr_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_27_ptr2globl_19:i32 
              #                          temp_27_ptr2globl_19 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_27_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_27_ptr2globl_19) 
              #                    saved register dumping to mem
              #                    store to temp_27_ptr2globl_19 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_27_ptr2globl_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_ptr2globl_19_0
              #                    load from temp_27_ptr2globl_19 in mem


    lw      a0,64(sp)
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
              #                          new_var temp_28_array_ptr_19:ptr->i32 
              #                          temp_28_array_ptr_19 = getelementptr *c_0:ptr->i32 [Some(0_0)] 
              #                    occupy a0 with temp_28_array_ptr_19
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_29_array_ele_19:i32 
              #                          temp_29_array_ele_19 = load temp_28_array_ptr_19:ptr->i32 
              #                    occupy a0 with temp_28_array_ptr_19
              #                    occupy a5 with temp_29_array_ele_19
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void putint_0(temp_29_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_28_array_ptr_19 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_28_array_ptr_19
              #                    store to temp_29_array_ele_19 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_29_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_array_ele_19_0
              #                    load from temp_29_array_ele_19 in mem


    lw      a0,52(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_30_array_ptr_19:ptr->i32 
              #                          temp_30_array_ptr_19 = getelementptr *c_0:ptr->i32 [Some(1_0)] 
              #                    occupy a0 with temp_30_array_ptr_19
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_31_array_ele_19:i32 
              #                          temp_31_array_ele_19 = load temp_30_array_ptr_19:ptr->i32 
              #                    occupy a0 with temp_30_array_ptr_19
              #                    occupy a5 with temp_31_array_ele_19
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void putint_0(temp_31_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_30_array_ptr_19 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_30_array_ptr_19
              #                    store to temp_31_array_ele_19 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with temp_31_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_31_array_ele_19_0
              #                    load from temp_31_array_ele_19 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_32_array_ptr_19:ptr->i32 
              #                          temp_32_array_ptr_19 = getelementptr *c_0:ptr->i32 [Some(2_0)] 
              #                    occupy a0 with temp_32_array_ptr_19
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_33_array_ele_19:i32 
              #                          temp_33_array_ele_19 = load temp_32_array_ptr_19:ptr->i32 
              #                    occupy a0 with temp_32_array_ptr_19
              #                    occupy a5 with temp_33_array_ele_19
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void putint_0(temp_33_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_32_array_ptr_19 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_32_array_ptr_19
              #                    store to temp_33_array_ele_19 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_33_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_array_ele_19_0
              #                    load from temp_33_array_ele_19 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_34_array_ptr_19:ptr->i32 
              #                          temp_34_array_ptr_19 = getelementptr *c_0:ptr->i32 [Some(3_0)] 
              #                    occupy a0 with temp_34_array_ptr_19
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_35_array_ele_19:i32 
              #                          temp_35_array_ele_19 = load temp_34_array_ptr_19:ptr->i32 
              #                    occupy a0 with temp_34_array_ptr_19
              #                    occupy a5 with temp_35_array_ele_19
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void putint_0(temp_35_array_ele_19) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ptr_19 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_34_array_ptr_19
              #                    store to temp_35_array_ele_19 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_35_array_ele_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_35_array_ele_19_0
              #                    load from temp_35_array_ele_19 in mem


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
    ld      ra,456(sp)
              #                    load from s0_main_0 in mem
    ld      s0,448(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,464
              #                    free a0
    ret
              #                    regtab 
              #                    regtab     a0:Freed { symidx: a_19, tracked: true } |     a1:Freed { symidx: a_33, tracked: true } |     a2:Freed { symidx: temp_5_cmp_31, tracked: true } |     a4:Freed { symidx: temp_6_arithop_33, tracked: true } |     a5:Freed { symidx: temp_7__566, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          jump label: while.head_32 
              #                    store to temp_5_cmp_31 in mem offset legal
    sb      a2,439(sp)
              #                    release a2 with temp_5_cmp_31
              #                    store to a_19 in mem offset legal
    sw      a0,444(sp)
              #                    release a0 with a_19
              #                    store to temp_7__566 in mem offset legal
    sb      a5,427(sp)
              #                    release a5 with temp_7__566
              #                    store to a_33 in mem offset legal
    sw      a1,432(sp)
              #                    release a1 with a_33
              #                    store to temp_6_arithop_33 in mem offset legal
    sw      a4,428(sp)
              #                    release a4 with temp_6_arithop_33
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
    .zero 4
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 5
