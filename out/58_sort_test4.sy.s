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
                    #      Define select_sort_0 [A_17, n_17] -> select_sort_ret_0 
    .globl select_sort
    .type select_sort,@function
select_sort:
                    #mem layout:|ra_select_sort:8|s0_select_sort:8|A:8|n:4|i:4|j:4|min:4|temp_0:4|temp_1:1|none:3|temp_2:4|temp_3:1|none:3|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:4|temp_8:1|none:3|temp_9:4|temp_10:1|none:3|tmp:4|none:4|temp_11:8|temp_12:4|none:4|temp_13:8|temp_14:8|temp_15:4|none:4|temp_16:8|temp_17:4|none:4
    addi    sp,sp,-160
    sd      ra,152(sp)
    sd      s0,144(sp)
    addi    s0,sp,160
                    #      new_var A_17:ptr->i32 
                    #      alloc i32 i_19 
                    #      alloc i32 j_19 
                    #      alloc i32 min_19 
                    #      alloc i32 temp_0_24 
                    #      alloc i1 temp_1_24 
                    #      alloc i32 temp_2_26 
                    #      alloc i1 temp_3_29 
                    #      alloc ptr->i32 temp_4_32 
                    #      alloc i32 temp_5_32 
                    #      alloc ptr->i32 temp_6_32 
                    #      alloc i32 temp_7_32 
                    #      alloc i1 temp_8_32 
                    #      alloc i32 temp_9_31 
                    #      alloc i1 temp_10_37 
                    #      alloc i32 tmp_39 
                    #      alloc ptr->i32 temp_11_39 
                    #      alloc i32 temp_12_39 
                    #      alloc ptr->i32 temp_13_39 
                    #      alloc ptr->i32 temp_14_39 
                    #      alloc i32 temp_15_39 
                    #      alloc ptr->i32 temp_16_39 
                    #      alloc i32 temp_17_26 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_19:i32 
                    #      new_var j_19:i32 
                    #      new_var min_19:i32 
                    #      i_19 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_0_24:i32 
                    #      temp_0_24 = Sub i32 n_17, 1_0 
    li      a3, 1
    sub     a4,a1,a3
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Slt i_19, temp_0_24 
    slt     a5,a2,a4
                    #      br i1 temp_1_24, label while.body_25, label while.exit_25 
    bnez    a5, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      min_19 = i32 i_19 
    mv      a3, a2
                    #      new_var temp_2_26:i32 
                    #      temp_2_26 = Add i32 i_19, 1_0 
    li      a6, 1
    add     a7,a2,a6
                    #      j_19 = i32 temp_2_26 
    mv      s1, a7
                    #      jump label: while.head_30 
    j       .while.head_30
                    #      label while.head_30: 
.while.head_30:
                    #      new_var temp_3_29:i1 
                    #      temp_3_29 = icmp i32 Slt j_19, n_17 
    slt     a6,s1,a1
                    #      br i1 temp_3_29, label while.body_30, label while.exit_30 
    bnez    a6, .while.body_30
    j       .while.exit_30
                    #      label while.body_30: 
.while.body_30:
                    #      new_var temp_4_32:ptr->i32 
                    #      new_var temp_5_32:i32 
                    #      temp_4_32 = getelementptr A_17:ptr->i32 [Some(j_19)] 
    li      s2, 0
    li      s3, 1
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_5_32 = load temp_4_32:ptr->i32 
    lw      s4,0(s2)
                    #      new_var temp_6_32:ptr->i32 
                    #      new_var temp_7_32:i32 
                    #      temp_6_32 = getelementptr A_17:ptr->i32 [Some(min_19)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_7_32 = load temp_6_32:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_8_32:i1 
                    #      temp_8_32 = icmp i32 Sgt temp_7_32, temp_5_32 
    slt     s7,s4,s6
                    #      br i1 temp_8_32, label branch_true_33, label branch_false_33 
    bnez    s7, .branch_true_33
    j       .branch_false_33
                    #      label branch_true_33: 
.branch_true_33:
                    #      min_19 = i32 j_19 
    mv      a3, s1
                    #      jump label: branch_false_33 
    j       .branch_false_33
                    #      label branch_false_33: 
.branch_false_33:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_9_31:i32 
                    #      temp_9_31 = Add i32 j_19, 1_0 
    li      s3, 1
    add     s8,s1,s3
                    #      j_19 = i32 temp_9_31 
    mv      s1, s8
                    #      jump label: while.head_30 
    sb      s7,75(sp)
    sd      s5,80(sp)
    sw      s4,92(sp)
    sb      a6,107(sp)
    sw      s8,68(sp)
    sd      s2,96(sp)
    sw      s6,76(sp)
    j       .while.head_30
                    #      label while.exit_30: 
.while.exit_30:
                    #      new_var temp_10_37:i1 
                    #      temp_10_37 = icmp i32 Ne min_19, i_19 
    xor     s2,a3,a2
    snez    s2, s2
                    #      br i1 temp_10_37, label branch_true_38, label branch_false_38 
    bnez    s2, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var tmp_39:i32 
                    #      new_var temp_11_39:ptr->i32 
                    #      new_var temp_12_39:i32 
                    #      temp_11_39 = getelementptr A_17:ptr->i32 [Some(min_19)] 
    li      s3, 0
    li      s4, 1
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_12_39 = load temp_11_39:ptr->i32 
    lw      s5,0(s3)
                    #      tmp_39 = i32 temp_12_39 
    mv      s6, s5
                    #      new_var temp_13_39:ptr->i32 
                    #      temp_13_39 = getelementptr A_17:ptr->i32 [Some(min_19)] 
    li      s7, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_14_39:ptr->i32 
                    #      new_var temp_15_39:i32 
                    #      temp_14_39 = getelementptr A_17:ptr->i32 [Some(i_19)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s8,s8,a0
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_15_39 = load temp_14_39:ptr->i32 
    lw      s9,0(s8)
                    #      store temp_15_39:i32 temp_13_39:ptr->i32 
    sd      s9,0(s7)
                    #      mu A_17:97 
                    #      A_17 = chi A_17:97 
                    #      new_var temp_16_39:ptr->i32 
                    #      temp_16_39 = getelementptr A_17:ptr->i32 [Some(i_19)] 
    li      s10, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store tmp_39:i32 temp_16_39:ptr->i32 
    sd      s6,0(s10)
                    #      mu A_17:103 
                    #      A_17 = chi A_17:103 
                    #      jump label: branch_false_38 
    sw      s9,20(sp)
    sd      s7,32(sp)
    sw      s5,44(sp)
    sd      s10,8(sp)
    sd      s3,48(sp)
    sd      s8,24(sp)
    sw      s6,60(sp)
    j       .branch_false_38
                    #      label branch_false_38: 
.branch_false_38:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_17_26:i32 
                    #      temp_17_26 = Add i32 i_19, 1_0 
    li      s3, 1
    add     s4,a2,s3
                    #      i_19 = i32 temp_17_26 
    mv      a2, s4
                    #      jump label: while.head_25 
    sw      a4,116(sp)
    sb      a5,115(sp)
    sw      s4,4(sp)
    sw      a3,120(sp)
    sw      a7,108(sp)
    sb      a6,107(sp)
    sw      s1,124(sp)
    sb      s2,67(sp)
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      ret 0_0 
    ld      ra,152(sp)
    ld      s0,144(sp)
    sd      a0,136(sp)
    li      a0, 0
    addi    sp,sp,160
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|i:4|temp_28:4|temp_29:4|temp_30:4|temp_31:1|none:3|tmp:4|temp_32:8|temp_33:4|temp_34:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc Array:i32:[Some(10_0)] a_47 
                    #      alloc ptr->i32 temp_18_47 
                    #      alloc ptr->i32 temp_19_47 
                    #      alloc ptr->i32 temp_20_47 
                    #      alloc ptr->i32 temp_21_47 
                    #      alloc ptr->i32 temp_22_47 
                    #      alloc ptr->i32 temp_23_47 
                    #      alloc ptr->i32 temp_24_47 
                    #      alloc ptr->i32 temp_25_47 
                    #      alloc ptr->i32 temp_26_47 
                    #      alloc ptr->i32 temp_27_47 
                    #      alloc i32 i_47 
                    #      alloc i32 temp_28_47 
                    #      alloc i32 temp_29_47 
                    #      alloc i32 temp_30_63 
                    #      alloc i1 temp_31_63 
                    #      alloc i32 tmp_65 
                    #      alloc ptr->i32 temp_32_65 
                    #      alloc i32 temp_33_65 
                    #      alloc i32 temp_34_65 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_47:Array:i32:[Some(10_0)] 
                    #      new_var temp_18_47:ptr->i32 
                    #      temp_18_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_18_47:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_47:118 
                    #      a_47 = chi a_47:118 
                    #      new_var temp_19_47:ptr->i32 
                    #      temp_19_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_19_47:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_47:124 
                    #      a_47 = chi a_47:124 
                    #      new_var temp_20_47:ptr->i32 
                    #      temp_20_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_20_47:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_47:130 
                    #      a_47 = chi a_47:130 
                    #      new_var temp_21_47:ptr->i32 
                    #      temp_21_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_21_47:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_47:136 
                    #      a_47 = chi a_47:136 
                    #      new_var temp_22_47:ptr->i32 
                    #      temp_22_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_22_47:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_47:142 
                    #      a_47 = chi a_47:142 
                    #      new_var temp_23_47:ptr->i32 
                    #      temp_23_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_23_47:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_47:148 
                    #      a_47 = chi a_47:148 
                    #      new_var temp_24_47:ptr->i32 
                    #      temp_24_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_24_47:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_47:154 
                    #      a_47 = chi a_47:154 
                    #      new_var temp_25_47:ptr->i32 
                    #      temp_25_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_25_47:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_47:160 
                    #      a_47 = chi a_47:160 
                    #      new_var temp_26_47:ptr->i32 
                    #      temp_26_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_26_47:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_47:166 
                    #      a_47 = chi a_47:166 
                    #      new_var temp_27_47:ptr->i32 
                    #      temp_27_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_27_47:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_47:172 
                    #      a_47 = chi a_47:172 
                    #      new_var i_47:i32 
                    #      i_47 = i32 0_0 
    li      a4, 0
                    #      new_var temp_28_47:i32 
                    #      temp_28_47 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a6, n
                    #occupy reg a6 with *n_0
    lw      s1,0(a6)
                    #      new_var temp_29_47:i32 
                    #      temp_29_47 =  Call i32 select_sort_0(a_47, temp_28_47) 
                    #saved register dumping to mem
    sw      s1,32(sp)
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,56(sp)
    mv      a0, a5
    sd      a1,48(sp)
    lw      a1,32(sp)
                    #arg load ended
    call    select_sort
    sw      a0,28(sp)
                    #      i_47 = i32 temp_29_47 
    mv      a4, a0
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_30_63:i32 
                    #      temp_30_63 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a6,0(a1)
                    #      new_var temp_31_63:i1 
                    #      temp_31_63 = icmp i32 Slt i_47, temp_30_63 
    slt     s1,a4,a6
                    #      br i1 temp_31_63, label while.body_64, label while.exit_64 
    bnez    s1, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      new_var tmp_65:i32 
                    #      new_var temp_32_65:ptr->i32 
                    #      new_var temp_33_65:i32 
                    #      temp_32_65 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(i_47)] 
    li      a1, 0
    li      s2, 1
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_33_65 = load temp_32_65:ptr->i32 
    lw      s3,0(a1)
                    #      tmp_65 = i32 temp_33_65 
    mv      s4, s3
                    #       Call void putint_0(tmp_65) 
                    #saved register dumping to mem
    sb      s1,23(sp)
    sw      s3,4(sp)
    sw      s4,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putint
                    #      tmp_65 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_65) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_34_65:i32 
                    #      temp_34_65 = Add i32 i_47, 1_0 
    li      a0, 1
    add     s1,a4,a0
                    #      i_47 = i32 temp_34_65 
    mv      a4, s1
                    #      jump label: while.head_64 
    sw      s1,0(sp)
    sd      a1,8(sp)
    lw      a0,28(sp)
    sw      a6,24(sp)
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,28(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
