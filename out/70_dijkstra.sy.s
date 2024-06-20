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


.section        .text
    .align 4
                    #      Define Dijkstra_0 [] -> Dijkstra_ret_0 
    .globl Dijkstra
    .type Dijkstra,@function
Dijkstra:
                    #mem layout:|ra_Dijkstra:8|s0_Dijkstra:8|i:4|j:4|temp_0:4|temp_1:1|none:3|temp_2:8|temp_3:1024|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:4|none:4|temp_8:8|temp_9:4|temp_10:4|temp_11:1|none:3|min_num:4|min_index:4|k:4|temp_12:4|temp_13:1|none:3|temp_14:64|temp_15:8|temp_16:4|temp_17:1|none:3|temp_18:64|temp_19:8|temp_20:4|temp_21:1|temp_22:1|none:2|temp_23:64|temp_24:8|temp_25:4|temp_26:4|temp_27:8|j:4|temp_28:4|temp_29:1|none:3|temp_30:1024|none:4|temp_31:8|temp_32:4|temp_33:1|none:3|temp_34:1024|temp_35:8|temp_36:4|temp_37:64|none:4|temp_38:8|temp_39:4|temp_40:4|temp_41:64|temp_42:8|temp_43:4|temp_44:1|none:3|temp_45:8|temp_46:1024|temp_47:8|temp_48:4|temp_49:64|none:4|temp_50:8|temp_51:4|temp_52:4|temp_53:4|temp_54:4
    li      a0, -4776
    li      a0, -4776
    add     sp,a0,sp
    li      a1, 4768
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 4760
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 4776
    li      a3, 4776
    add     s0,a3,sp
                    #      alloc i32 i_23 
                    #      alloc i32 j_23 
                    #      alloc i32 temp_0_26 
                    #      alloc i1 temp_1_26 
                    #      alloc ptr->i32 temp_2_28 
                    #      alloc Array:i32:[Some(16_0), Some(16_0)] temp_3_28 
                    #      alloc ptr->i32 temp_4_28 
                    #      alloc i32 temp_5_28 
                    #      alloc ptr->i32 temp_6_28 
                    #      alloc i32 temp_7_28 
                    #      alloc ptr->i32 temp_8_23 
                    #      alloc i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i1 temp_11_34 
                    #      alloc i32 min_num_36 
                    #      alloc i32 min_index_36 
                    #      alloc i32 k_36 
                    #      alloc i32 temp_12_40 
                    #      alloc i1 temp_13_40 
                    #      alloc Array:i32:[Some(16_0)] temp_14_43 
                    #      alloc ptr->i32 temp_15_43 
                    #      alloc i32 temp_16_43 
                    #      alloc i1 temp_17_43 
                    #      alloc Array:i32:[Some(16_0)] temp_18_43 
                    #      alloc ptr->i32 temp_19_43 
                    #      alloc i32 temp_20_43 
                    #      alloc i1 temp_21_43 
                    #      alloc i1 temp_22_43 
                    #      alloc Array:i32:[Some(16_0)] temp_23_45 
                    #      alloc ptr->i32 temp_24_45 
                    #      alloc i32 temp_25_45 
                    #      alloc i32 temp_26_42 
                    #      alloc ptr->i32 temp_27_36 
                    #      alloc i32 j_36 
                    #      alloc i32 temp_28_51 
                    #      alloc i1 temp_29_51 
                    #      alloc Array:i32:[Some(16_0), Some(16_0)] temp_30_54 
                    #      alloc ptr->i32 temp_31_54 
                    #      alloc i32 temp_32_54 
                    #      alloc i1 temp_33_54 
                    #      alloc Array:i32:[Some(16_0), Some(16_0)] temp_34_57 
                    #      alloc ptr->i32 temp_35_57 
                    #      alloc i32 temp_36_57 
                    #      alloc Array:i32:[Some(16_0)] temp_37_57 
                    #      alloc ptr->i32 temp_38_57 
                    #      alloc i32 temp_39_57 
                    #      alloc i32 temp_40_57 
                    #      alloc Array:i32:[Some(16_0)] temp_41_57 
                    #      alloc ptr->i32 temp_42_57 
                    #      alloc i32 temp_43_57 
                    #      alloc i1 temp_44_57 
                    #      alloc ptr->i32 temp_45_59 
                    #      alloc Array:i32:[Some(16_0), Some(16_0)] temp_46_59 
                    #      alloc ptr->i32 temp_47_59 
                    #      alloc i32 temp_48_59 
                    #      alloc Array:i32:[Some(16_0)] temp_49_59 
                    #      alloc ptr->i32 temp_50_59 
                    #      alloc i32 temp_51_59 
                    #      alloc i32 temp_52_59 
                    #      alloc i32 temp_53_53 
                    #      alloc i32 temp_54_36 
                    #      label L3_0: 
.L3_0:
                    #      new_var i_23:i32 
                    #      new_var j_23:i32 
                    #      i_23 = i32 1_0 
    li      a4, 1
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.head_27: 
.while.head_27:
                    #      new_var temp_0_26:i32 
                    #      temp_0_26 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a5, n
                    #occupy reg a5 with *n_0
    lw      a6,0(a5)
                    #      new_var temp_1_26:i1 
                    #      temp_1_26 = icmp i32 Sle i_23, temp_0_26 
    slt     a7,a6,a4
    xori    a7,a7,1
                    #      br i1 temp_1_26, label while.body_27, label while.exit_27 
    bnez    a7, .while.body_27
    j       .while.exit_27
                    #      label while.body_27: 
.while.body_27:
                    #      new_var temp_2_28:ptr->i32 
                    #      temp_2_28 = getelementptr dis_0:Array:i32:[Some(16_0)] [Some(i_23)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a4
                    #occupy reg s3 with dis_0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_3_28:Array:i32:[Some(16_0), Some(16_0)] 
                    #      temp_3_28 = load *e_0:ptr->Array:i32:[Some(16_0)] 
                    #   load label e as ptr to reg
    la      s4, e
                    #occupy reg s4 with *e_0
    lw      s5,0(s4)
                    #      new_var temp_4_28:ptr->i32 
                    #      new_var temp_5_28:i32 
                    #      temp_4_28 = getelementptr temp_3_28:Array:i32:[Some(16_0), Some(16_0)] [Some(1_0), Some(i_23)] 
    li      s6, 0
    li      s7, 16
                    #found literal reg Some(s2) already exist with 1_0
    add     s6,s6,s5
                    #found literal reg Some(s2) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_5_28 = load temp_4_28:ptr->i32 
    lw      s8,0(s6)
                    #      store temp_5_28:i32 temp_2_28:ptr->i32 
    sd      s8,0(s1)
                    #      mu dis_0:58 
                    #      dis_0 = chi dis_0:58 
                    #      new_var temp_6_28:ptr->i32 
                    #      temp_6_28 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(i_23)] 
    li      s9, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s10,s2,a4
                    #occupy reg s10 with book_0
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,s9
                    #      store 0_0:i32 temp_6_28:ptr->i32 
    li      s11, 0
    sd      s11,0(s9)
                    #      mu book_0:64 
                    #      book_0 = chi book_0:64 
                    #      new_var temp_7_28:i32 
                    #      temp_7_28 = Add i32 i_23, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     a0,a4,s2
                    #      i_23 = i32 temp_7_28 
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.exit_27: 
.while.exit_27:
                    #      new_var temp_8_23:ptr->i32 
                    #      temp_8_23 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s2) already exist with 1_0
    li      a2, 1
    mul     a3,s2,a2
                    #occupy reg a3 with book_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
                    #      store 1_0:i32 temp_8_23:ptr->i32 
                    #found literal reg Some(a2) already exist with 1_0
    sd      a2,0(a1)
                    #      mu book_0:74 
                    #      book_0 = chi book_0:74 
                    #      i_23 = i32 1_0 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.head_35: 
.while.head_35:
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Sub i32 temp_9_34, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    sub     a2,a3,s2
                    #      new_var temp_11_34:i1 
                    #      temp_11_34 = icmp i32 Sle i_23, temp_10_34 
    slt     a5,a2,a4
    xori    a5,a5,1
                    #      br i1 temp_11_34, label while.body_35, label while.exit_35 
    bnez    a5, .while.body_35
    j       .while.exit_35
                    #      label while.body_35: 
.while.body_35:
                    #      min_num_36 = i32 65535_0 
    li      s2, 65535
                    #      min_index_36 = i32 0_0 
    li      s3, 0
                    #      k_36 = i32 1_0 
    li      s4, 1
                    #      jump label: while.head_41 
    j       .while.head_41
                    #      label while.head_41: 
.while.head_41:
                    #      new_var temp_12_40:i32 
                    #      temp_12_40 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s7, n
                    #occupy reg s7 with *n_0
    lw      s10,0(s7)
                    #      new_var temp_13_40:i1 
                    #      temp_13_40 = icmp i32 Sle k_36, temp_12_40 
    slt     s7,s10,s4
    xori    s7,s7,1
                    #      br i1 temp_13_40, label while.body_41, label while.exit_41 
    bnez    s7, .while.body_41
    j       .while.exit_41
                    #      label while.body_41: 
.while.body_41:
                    #      new_var temp_14_43:Array:i32:[Some(16_0)] 
                    #      temp_14_43 = load *book_0:ptr->i32 
                    #   load label book as ptr to reg
    la      s11, book
                    #occupy reg s11 with *book_0
    li      a0, 3684
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s11)
                    #      new_var temp_15_43:ptr->i32 
                    #      new_var temp_16_43:i32 
                    #      temp_15_43 = getelementptr temp_14_43:Array:i32:[Some(16_0)] [Some(k_36)] 
    li      s11, 0
    li      a0, 3636
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3672
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a0,s4
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_16_43 = load temp_15_43:ptr->i32 
    lw      a0,0(s11)
                    #      new_var temp_17_43:i1 
                    #      temp_17_43 = icmp i32 Eq temp_16_43, 0_0 
    li      a1, 3636
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 3664
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_18_43:Array:i32:[Some(16_0)] 
                    #      temp_18_43 = load *dis_0:ptr->i32 
                    #   load label dis as ptr to reg
    la      a1, dis
                    #occupy reg a1 with *dis_0
    li      a0, 3564
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_19_43:ptr->i32 
                    #      new_var temp_20_43:i32 
                    #      temp_19_43 = getelementptr temp_18_43:Array:i32:[Some(16_0)] [Some(k_36)] 
    li      a1, 0
    li      a0, 3556
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 3563
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a0,s4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_20_43 = load temp_19_43:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_21_43:i1 
                    #      temp_21_43 = icmp i32 Sgt min_num_36, temp_20_43 
    li      a1, 3488
    add     a1,sp,a1
    sd      a1,0(a1)
    slt     a1,a0,s2
                    #      new_var temp_22_43:i1 
                    #      temp_22_43 = And i1 temp_21_43, temp_17_43 
    li      a0, 3484
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 3556
    add     a2,sp,a2
    sw      a2,0(a2)
    and     a2,a1,a0
                    #      br i1 temp_22_43, label branch_true_44, label branch_false_44 
    bnez    a2, .branch_true_44
    j       .branch_false_44
                    #      label branch_true_44: 
.branch_true_44:
                    #      new_var temp_23_45:Array:i32:[Some(16_0)] 
                    #      temp_23_45 = load *dis_0:ptr->i32 
    li      a0, 3563
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label dis as ptr to reg
    la      a0, dis
                    #occupy reg a0 with *dis_0
    li      a1, 3483
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_24_45:ptr->i32 
                    #      new_var temp_25_45:i32 
                    #      temp_24_45 = getelementptr temp_23_45:Array:i32:[Some(16_0)] [Some(k_36)] 
    li      a0, 0
    li      a1, 3476
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3482
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_25_45 = load temp_24_45:ptr->i32 
    lw      a1,0(a0)
                    #      min_num_36 = i32 temp_25_45 
                    #      min_index_36 = i32 k_36 
                    #      jump label: branch_false_44 
    j       .branch_false_44
                    #      label branch_false_44: 
.branch_false_44:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_26_42:i32 
                    #      temp_26_42 = Add i32 k_36, 1_0 
    li      a0, 3408
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a1, 3404
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s4,a0
                    #      k_36 = i32 temp_26_42 
                    #      jump label: while.head_41 
    j       .while.head_41
                    #      label while.exit_41: 
.while.exit_41:
                    #      new_var temp_27_36:ptr->i32 
                    #      temp_27_36 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(min_index_36)] 
    li      a0, 0
    li      a1, 3400
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 3476
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,s3
                    #occupy reg a2 with book_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_27_36:ptr->i32 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a1,0(a0)
                    #      mu book_0:157 
                    #      book_0 = chi book_0:157 
                    #      j_36 = i32 1_0 
    li      a1, 1
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.head_52: 
.while.head_52:
                    #      new_var temp_28_51:i32 
                    #      temp_28_51 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    li      a0, 3392
    add     a0,sp,a0
    sd      a0,0(a0)
    lw      a0,0(a2)
                    #      new_var temp_29_51:i1 
                    #      temp_29_51 = icmp i32 Sle j_36, temp_28_51 
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      br i1 temp_29_51, label while.body_52, label while.exit_52 
    bnez    a2, .while.body_52
    j       .while.exit_52
                    #      label while.body_52: 
.while.body_52:
                    #      new_var temp_30_54:Array:i32:[Some(16_0), Some(16_0)] 
                    #      temp_30_54 = load *e_0:ptr->Array:i32:[Some(16_0)] 
    li      a0, 3384
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label e as ptr to reg
    la      a0, e
                    #occupy reg a0 with *e_0
    li      a1, 3388
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_31_54:ptr->i32 
                    #      new_var temp_32_54:i32 
                    #      temp_31_54 = getelementptr temp_30_54:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
    li      a0, 0
    li      a1, 3376
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 16
    li      a2, 3383
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s3
    add     a0,a0,a2
    li      a1, 1
    li      a2, 3376
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 3668
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_32_54 = load temp_31_54:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_33_54:i1 
                    #      temp_33_54 = icmp i32 Slt temp_32_54, 65535_0 
    li      a0, 2344
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 65535
    li      a2, 3388
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_33_54, label branch_true_55, label branch_false_55 
    bnez    a2, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      new_var temp_34_57:Array:i32:[Some(16_0), Some(16_0)] 
                    #      temp_34_57 = load *e_0:ptr->Array:i32:[Some(16_0)] 
                    #   load label e as ptr to reg
    la      a0, e
                    #occupy reg a0 with *e_0
    li      a1, 2340
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_35_57:ptr->i32 
                    #      new_var temp_36_57:i32 
                    #      temp_35_57 = getelementptr temp_34_57:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
    li      a0, 0
    li      a1, 2332
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 16
    li      a2, 2339
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,s3
    add     a0,a0,a2
    li      a1, 1
    li      a2, 2332
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 3376
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_36_57 = load temp_35_57:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_37_57:Array:i32:[Some(16_0)] 
                    #      temp_37_57 = load *dis_0:ptr->i32 
    sd      a0,1304(sp)
                    #   load label dis as ptr to reg
    la      a0, dis
                    #occupy reg a0 with *dis_0
    sw      a1,1300(sp)
    lw      a1,0(a0)
                    #      new_var temp_38_57:ptr->i32 
                    #      new_var temp_39_57:i32 
                    #      temp_38_57 = getelementptr temp_37_57:Array:i32:[Some(16_0)] [Some(min_index_36)] 
    li      a0, 0
    sw      a1,1296(sp)
    li      a1, 1
    li      a2, 3388
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_39_57 = load temp_38_57:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_40_57:i32 
                    #      temp_40_57 = Add i32 temp_39_57, temp_36_57 
    sd      a0,1224(sp)
    sw      a2,1296(sp)
    add     a2,a1,a0
                    #      new_var temp_41_57:Array:i32:[Some(16_0)] 
                    #      temp_41_57 = load *dis_0:ptr->i32 
    sw      a0,1300(sp)
                    #   load label dis as ptr to reg
    la      a0, dis
                    #occupy reg a0 with *dis_0
    sw      a1,1220(sp)
    lw      a1,0(a0)
                    #      new_var temp_42_57:ptr->i32 
                    #      new_var temp_43_57:i32 
                    #      temp_42_57 = getelementptr temp_41_57:Array:i32:[Some(16_0)] [Some(j_36)] 
    li      a0, 0
    sw      a1,1212(sp)
    li      a1, 1
    sw      a2,1216(sp)
    li      a3, 2332
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_43_57 = load temp_42_57:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_44_57:i1 
                    #      temp_44_57 = icmp i32 Sgt temp_43_57, temp_40_57 
    sd      a0,1144(sp)
    li      a2, 3388
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_44_57, label branch_true_58, label branch_false_58 
    bnez    a2, .branch_true_58
    j       .branch_false_58
                    #      label branch_true_58: 
.branch_true_58:
                    #      new_var temp_45_59:ptr->i32 
                    #      temp_45_59 = getelementptr dis_0:Array:i32:[Some(16_0)] [Some(j_36)] 
    sw      a0,1216(sp)
    li      a0, 0
    sw      a1,1140(sp)
    li      a1, 1
    sb      a2,1139(sp)
    sw      a3,1212(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with dis_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_46_59:Array:i32:[Some(16_0), Some(16_0)] 
                    #      temp_46_59 = load *e_0:ptr->Array:i32:[Some(16_0)] 
                    #   load label e as ptr to reg
    la      a1, e
                    #occupy reg a1 with *e_0
    lw      a3,0(a1)
                    #      new_var temp_47_59:ptr->i32 
                    #      new_var temp_48_59:i32 
                    #      temp_47_59 = getelementptr temp_46_59:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
    li      a1, 0
    sd      a0,1128(sp)
    li      a0, 16
    add     a1,a1,a3
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_48_59 = load temp_47_59:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_49_59:Array:i32:[Some(16_0)] 
                    #      temp_49_59 = load *dis_0:ptr->i32 
    sw      a0,92(sp)
                    #   load label dis as ptr to reg
    la      a0, dis
                    #occupy reg a0 with *dis_0
    sd      a1,96(sp)
    lw      a1,0(a0)
                    #      new_var temp_50_59:ptr->i32 
                    #      new_var temp_51_59:i32 
                    #      temp_50_59 = getelementptr temp_49_59:Array:i32:[Some(16_0)] [Some(min_index_36)] 
    li      a0, 0
    sw      a1,88(sp)
    li      a1, 1
    li      a2, 3388
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,s3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_51_59 = load temp_50_59:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_52_59:i32 
                    #      temp_52_59 = Add i32 temp_51_59, temp_48_59 
    sd      a0,16(sp)
    sw      a2,88(sp)
    add     a2,a1,a0
                    #      store temp_52_59:i32 temp_45_59:ptr->i32 
    sw      a0,92(sp)
    sd      a2,0(a0)
                    #      mu dis_0:248 
                    #      dis_0 = chi dis_0:248 
                    #      jump label: branch_false_58 
    j       .branch_false_58
                    #      label branch_false_58: 
.branch_false_58:
                    #      label branch_false_55: 
.branch_false_55:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_53_53:i32 
                    #      temp_53_53 = Add i32 j_36, 1_0 
    sd      a0,1128(sp)
    sw      a1,12(sp)
    li      a1, 1
    sw      a2,8(sp)
    add     a2,a0,a1
                    #      j_36 = i32 temp_53_53 
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.exit_52: 
.while.exit_52:
                    #      new_var temp_54_36:i32 
                    #      temp_54_36 = Add i32 i_23, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    li      a0, 3388
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a4,a1
                    #      i_23 = i32 temp_54_36 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.exit_35: 
.while.exit_35:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|temp_55:4|temp_56:4|temp_57:4|temp_58:1|none:3|j:4|temp_59:4|temp_60:1|temp_61:1|none:2|temp_62:8|temp_63:4|none:4|temp_64:8|temp_65:4|temp_66:4|temp_67:1|none:3|temp_68:4|u:4|temp_69:4|v:4|none:4|temp_70:8|temp_71:4|temp_72:4|temp_73:4|temp_74:1|none:3|temp_75:64|temp_76:8|temp_77:4|temp_78:4
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,192(sp)
    addi    s0,sp,208
                    #      alloc i32 i_64 
                    #      alloc i32 temp_55_64 
                    #      alloc i32 temp_56_64 
                    #      alloc i32 temp_57_69 
                    #      alloc i1 temp_58_69 
                    #      alloc i32 j_71 
                    #      alloc i32 temp_59_73 
                    #      alloc i1 temp_60_73 
                    #      alloc i1 temp_61_76 
                    #      alloc ptr->i32 temp_62_76 
                    #      alloc i32 temp_63_75 
                    #      alloc ptr->i32 temp_64_76 
                    #      alloc i32 temp_65_71 
                    #      alloc i32 temp_66_83 
                    #      alloc i1 temp_67_83 
                    #      alloc i32 temp_68_85 
                    #      alloc i32 u_85 
                    #      alloc i32 temp_69_85 
                    #      alloc i32 v_85 
                    #      alloc ptr->i32 temp_70_85 
                    #      alloc i32 temp_71_85 
                    #      alloc i32 temp_72_85 
                    #      alloc i32 temp_73_91 
                    #      alloc i1 temp_74_91 
                    #      alloc Array:i32:[Some(16_0)] temp_75_93 
                    #      alloc ptr->i32 temp_76_93 
                    #      alloc i32 temp_77_93 
                    #      alloc i32 temp_78_93 
                    #      label L0_0: 
.L0_0:
                    #      new_var i_64:i32 
                    #      new_var temp_55_64:i32 
                    #      temp_55_64 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,184(sp)
                    #      store temp_55_64:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    sd      a0,0(a1)
                    #      new_var temp_56_64:i32 
                    #      temp_56_64 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,184(sp)
    sw      a0,180(sp)
                    #      store temp_56_64:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a2, m
                    #occupy reg a2 with *m_0
    sd      a0,0(a2)
                    #      i_64 = i32 1_0 
    li      a3, 1
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_57_69:i32 
                    #      temp_57_69 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a5,0(a4)
                    #      new_var temp_58_69:i1 
                    #      temp_58_69 = icmp i32 Sle i_64, temp_57_69 
    slt     a6,a5,a3
    xori    a6,a6,1
                    #      br i1 temp_58_69, label while.body_70, label while.exit_70 
    bnez    a6, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      j_71 = i32 1_0 
    li      a7, 1
                    #      jump label: while.head_74 
    j       .while.head_74
                    #      label while.head_74: 
.while.head_74:
                    #      new_var temp_59_73:i32 
                    #      temp_59_73 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s1, n
                    #occupy reg s1 with *n_0
    lw      s2,0(s1)
                    #      new_var temp_60_73:i1 
                    #      temp_60_73 = icmp i32 Sle j_71, temp_59_73 
    slt     s3,s2,a7
    xori    s3,s3,1
                    #      br i1 temp_60_73, label while.body_74, label while.exit_74 
    bnez    s3, .while.body_74
    j       .while.exit_74
                    #      label while.body_74: 
.while.body_74:
                    #      new_var temp_61_76:i1 
                    #      temp_61_76 = icmp i32 Eq i_64, j_71 
    xor     s4,a3,a7
    seqz    s4, s4
                    #      br i1 temp_61_76, label branch_true_77, label branch_false_77 
    bnez    s4, .branch_true_77
    j       .branch_false_77
                    #      label branch_true_77: 
.branch_true_77:
                    #      new_var temp_62_76:ptr->i32 
                    #      temp_62_76 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(i_64), Some(j_71)] 
    li      s5, 0
    li      s6, 16
    mul     s7,s6,a3
                    #occupy reg s7 with e_0
    add     s5,s5,s7
    li      s8, 1
    mul     s9,s8,a7
                    #occupy reg s9 with e_0
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,s5
                    #      store 0_0:i32 temp_62_76:ptr->i32 
    li      s10, 0
    sd      s10,0(s5)
                    #      mu e_0:303 
                    #      e_0 = chi e_0:303 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_77: 
.branch_false_77:
                    #      new_var temp_64_76:ptr->i32 
                    #      temp_64_76 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(i_64), Some(j_71)] 
    li      s11, 0
                    #found literal reg Some(s6) already exist with 16_0
    mul     a1,s6,a3
                    #occupy reg a1 with e_0
    add     s11,s11,a1
                    #found literal reg Some(s8) already exist with 1_0
    mul     a1,s8,a7
                    #occupy reg a1 with e_0
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,s11
                    #      store 65535_0:i32 temp_64_76:ptr->i32 
    li      a1, 65535
    sd      a1,0(s11)
                    #      mu e_0:313 
                    #      e_0 = chi e_0:313 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_63_75:i32 
                    #      temp_63_75 = Add i32 j_71, 1_0 
                    #found literal reg Some(s8) already exist with 1_0
    add     a1,a7,s8
                    #      j_71 = i32 temp_63_75 
                    #      jump label: while.head_74 
    j       .while.head_74
                    #      label while.exit_74: 
.while.exit_74:
                    #      new_var temp_65_71:i32 
                    #      temp_65_71 = Add i32 i_64, 1_0 
                    #found literal reg Some(s8) already exist with 1_0
    add     a2,a3,s8
                    #      i_64 = i32 temp_65_71 
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      i_64 = i32 1_0 
                    #      jump label: while.head_84 
    j       .while.head_84
                    #      label while.head_84: 
.while.head_84:
                    #      new_var temp_66_83:i32 
                    #      temp_66_83 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a4, m
                    #occupy reg a4 with *m_0
    lw      s1,0(a4)
                    #      new_var temp_67_83:i1 
                    #      temp_67_83 = icmp i32 Sle i_64, temp_66_83 
    slt     a4,s1,a3
    xori    a4,a4,1
                    #      br i1 temp_67_83, label while.body_84, label while.exit_84 
    bnez    a4, .while.body_84
    j       .while.exit_84
                    #      label while.body_84: 
.while.body_84:
                    #      new_var temp_68_85:i32 
                    #      temp_68_85 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s1,128(sp)
    sw      s2,164(sp)
    sb      s3,163(sp)
    sb      s4,162(sp)
    sd      s5,152(sp)
    sd      s11,136(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,180(sp)
    sw      a0,120(sp)
                    #      u_85 = i32 temp_68_85 
    mv      s1, a0
                    #      new_var temp_69_85:i32 
                    #      temp_69_85 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s1,116(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,120(sp)
    sw      a0,112(sp)
                    #      v_85 = i32 temp_69_85 
    mv      s1, a0
                    #      new_var temp_70_85:ptr->i32 
                    #      temp_70_85 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(u_85), Some(v_85)] 
    li      s2, 0
    li      s3, 16
    mul     s5,s3,s4
                    #occupy reg s5 with e_0
    add     s2,s2,s5
    li      s6, 1
    mul     s7,s6,s1
                    #occupy reg s7 with e_0
    add     s2,s2,s7
    slli s2,s2,2
    add     s2,s2,s2
                    #      new_var temp_71_85:i32 
                    #      temp_71_85 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s1,108(sp)
    sd      s2,96(sp)
    sw      s4,116(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,112(sp)
    sw      a0,92(sp)
                    #      store temp_71_85:i32 temp_70_85:ptr->i32 
    sd      a0,0(s1)
                    #      mu e_0:348 
                    #      e_0 = chi e_0:348 
                    #      new_var temp_72_85:i32 
                    #      temp_72_85 = Add i32 i_64, 1_0 
    li      s2, 1
    add     s3,a3,s2
                    #      i_64 = i32 temp_72_85 
                    #      jump label: while.head_84 
    j       .while.head_84
                    #      label while.exit_84: 
.while.exit_84:
                    #       Call void Dijkstra_0() 
                    #saved register dumping to mem
    sd      s1,96(sp)
    sw      s3,88(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    Dijkstra
                    #      i_64 = i32 1_0 
                    #      jump label: while.head_92 
    j       .while.head_92
                    #      label while.head_92: 
.while.head_92:
                    #      new_var temp_73_91:i32 
                    #      temp_73_91 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s1, n
                    #occupy reg s1 with *n_0
    lw      s2,0(s1)
                    #      new_var temp_74_91:i1 
                    #      temp_74_91 = icmp i32 Sle i_64, temp_73_91 
    slt     s3,s2,a3
    xori    s3,s3,1
                    #      br i1 temp_74_91, label while.body_92, label while.exit_92 
    bnez    s3, .while.body_92
    j       .while.exit_92
                    #      label while.body_92: 
.while.body_92:
                    #      new_var temp_75_93:Array:i32:[Some(16_0)] 
                    #      temp_75_93 = load *dis_0:ptr->i32 
                    #   load label dis as ptr to reg
    la      s4, dis
                    #occupy reg s4 with *dis_0
    lw      s5,0(s4)
                    #      new_var temp_76_93:ptr->i32 
                    #      new_var temp_77_93:i32 
                    #      temp_76_93 = getelementptr temp_75_93:Array:i32:[Some(16_0)] [Some(i_64)] 
    li      s6, 0
    li      s7, 1
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_77_93 = load temp_76_93:ptr->i32 
    lw      s8,0(s6)
                    #       Call void putint_0(temp_77_93) 
                    #saved register dumping to mem
    sw      s2,84(sp)
    sb      s3,83(sp)
    sw      s5,76(sp)
    sd      s6,8(sp)
    sw      s8,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,92(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_78_93:i32 
                    #      temp_78_93 = Add i32 i_64, 1_0 
    li      a0, 1
    add     s1,a3,a0
                    #      i_64 = i32 temp_78_93 
                    #      jump label: while.head_92 
    j       .while.head_92
                    #      label while.exit_92: 
.while.exit_92:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sw      s1,0(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,200(sp)
    ld      s0,192(sp)
    li      a0, 0
    addi    sp,sp,208
    ret
.section        .data
    .align 4
    .globl w
                    #      global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl v2
                    #      global i32 v2_0 
    .type v2,@object
v2:
    .word 0
    .align 4
    .globl v1
                    #      global i32 v1_0 
    .type v1,@object
v1:
    .word 0
    .align 4
    .globl m
                    #      global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl dis
                    #      global Array:i32:[Some(16_0)] dis_0 
    .type dis,@object
dis:
    .zero 64
    .align 4
    .globl book
                    #      global Array:i32:[Some(16_0)] book_0 
    .type book,@object
book:
    .zero 64
    .align 4
    .globl e
                    #      global Array:i32:[Some(16_0), Some(16_0)] e_0 
    .type e,@object
e:
    .zero 1024
    .align 4
    .globl INF
                    #      global i32 INF_0 
    .type INF,@object
INF:
    .word 65535
