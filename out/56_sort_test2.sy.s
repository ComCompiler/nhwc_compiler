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
                    #      Define insertsort_0 [a_17] -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
                    #mem layout:|ra_insertsort:8|s0_insertsort:8|a:8|i:4|temp_0:4|temp_1:1|none:3|temp:4|temp_2:8|temp_3:4|j:4|temp_4:4|none:4|temp_5:8|temp_6:4|temp_7:1|temp_8:1|temp_9:1|none:1|temp_10:4|none:4|temp_11:8|temp_12:8|temp_13:4|temp_14:4|temp_15:4|none:4|temp_16:8|temp_17:4|none:4
    addi    sp,sp,-136
    sd      ra,128(sp)
    sd      s0,120(sp)
    addi    s0,sp,136
                    #      new_var a_17:ptr->i32 
                    #      alloc i32 i_19 
                    #      alloc i32 temp_0_22 
                    #      alloc i1 temp_1_22 
                    #      alloc i32 temp_24 
                    #      alloc ptr->i32 temp_2_24 
                    #      alloc i32 temp_3_24 
                    #      alloc i32 j_24 
                    #      alloc i32 temp_4_24 
                    #      alloc ptr->i32 temp_5_29 
                    #      alloc i32 temp_6_29 
                    #      alloc i1 temp_7_29 
                    #      alloc i1 temp_8_29 
                    #      alloc i1 temp_9_29 
                    #      alloc i32 temp_10_31 
                    #      alloc ptr->i32 temp_11_31 
                    #      alloc ptr->i32 temp_12_31 
                    #      alloc i32 temp_13_31 
                    #      alloc i32 temp_14_31 
                    #      alloc i32 temp_15_24 
                    #      alloc ptr->i32 temp_16_24 
                    #      alloc i32 temp_17_24 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_19:i32 
                    #      i_19 = i32 1_0 
    li      a1, 1
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_1_22:i1 
                    #      temp_1_22 = icmp i32 Slt i_19, temp_0_22 
    slt     a4,a1,a3
                    #      br i1 temp_1_22, label while.body_23, label while.exit_23 
    bnez    a4, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_24:i32 
                    #      new_var temp_2_24:ptr->i32 
                    #      new_var temp_3_24:i32 
                    #      temp_2_24 = getelementptr a_17:ptr->i32 [Some(i_19)] 
    li      a2, 0
    li      a5, 1
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_3_24 = load temp_2_24:ptr->i32 
    lw      a6,0(a2)
                    #      temp_24 = i32 temp_3_24 
    mv      a7, a6
                    #      new_var j_24:i32 
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = Sub i32 i_19, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    sub     s1,a1,a5
                    #      j_24 = i32 temp_4_24 
    mv      s2, s1
                    #      jump label: while.head_30 
    j       .while.head_30
                    #      label while.head_30: 
.while.head_30:
                    #      new_var temp_5_29:ptr->i32 
                    #      new_var temp_6_29:i32 
                    #      temp_5_29 = getelementptr a_17:ptr->i32 [Some(j_24)] 
    li      a5, 0
    li      s3, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_6_29 = load temp_5_29:ptr->i32 
    lw      s4,0(a5)
                    #      new_var temp_7_29:i1 
                    #      temp_7_29 = icmp i32 Slt temp_24, temp_6_29 
    slt     s5,a7,s4
                    #      new_var temp_8_29:i1 
                    #      temp_8_29 = icmp i32 Sgt j_24, -1_0 
    li      s6, -1
    slt     s7,s6,s2
                    #      new_var temp_9_29:i1 
                    #      temp_9_29 = And i1 temp_8_29, temp_7_29 
    and     s8,s7,s5
                    #      br i1 temp_9_29, label while.body_30, label while.exit_30 
    bnez    s8, .while.body_30
    j       .while.exit_30
                    #      label while.body_30: 
.while.body_30:
                    #      new_var temp_10_31:i32 
                    #      temp_10_31 = Add i32 j_24, 1_0 
    li      s3, 1
    add     s6,s2,s3
                    #      new_var temp_11_31:ptr->i32 
                    #      temp_11_31 = getelementptr a_17:ptr->i32 [Some(temp_10_31)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      new_var temp_12_31:ptr->i32 
                    #      new_var temp_13_31:i32 
                    #      temp_12_31 = getelementptr a_17:ptr->i32 [Some(j_24)] 
    li      s10, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_13_31 = load temp_12_31:ptr->i32 
    lw      s11,0(s10)
                    #      store temp_13_31:i32 temp_11_31:ptr->i32 
    sd      s11,0(s9)
                    #      mu a_17:80 
                    #      a_17 = chi a_17:80 
                    #      new_var temp_14_31:i32 
                    #      temp_14_31 = Sub i32 j_24, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    sd      a0,112(sp)
    sub     a0,s2,s3
                    #      j_24 = i32 temp_14_31 
    mv      s2, a0
                    #      jump label: while.head_30 
    sw      s6,52(sp)
    sd      a5,64(sp)
    sb      s7,58(sp)
    sb      s8,57(sp)
    sw      s4,60(sp)
    sw      s11,28(sp)
    sb      s5,59(sp)
    sw      a0,24(sp)
    ld      a0,112(sp)
    sd      s9,40(sp)
    sd      s10,32(sp)
    j       .while.head_30
                    #      label while.exit_30: 
.while.exit_30:
                    #      new_var temp_15_24:i32 
                    #      temp_15_24 = Add i32 j_24, 1_0 
    li      s3, 1
    add     s6,s2,s3
                    #      new_var temp_16_24:ptr->i32 
                    #      temp_16_24 = getelementptr a_17:ptr->i32 [Some(temp_15_24)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store temp_24:i32 temp_16_24:ptr->i32 
    sd      a7,0(s9)
                    #      mu a_17:93 
                    #      a_17 = chi a_17:93 
                    #      new_var temp_17_24:i32 
                    #      temp_17_24 = Add i32 i_19, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    add     s10,a1,s3
                    #      i_19 = i32 temp_17_24 
    mv      a1, s10
                    #      jump label: while.head_23 
    sb      a4,103(sp)
    sw      s2,80(sp)
    sw      s6,20(sp)
    sd      a5,64(sp)
    sb      s7,58(sp)
    sb      s8,57(sp)
    sw      a3,104(sp)
    sw      s4,60(sp)
    sb      s5,59(sp)
    sw      a6,84(sp)
    sw      s1,76(sp)
    sd      s9,8(sp)
    sw      a7,96(sp)
    sw      s10,4(sp)
    sd      a2,88(sp)
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      ret 0_0 
    ld      ra,128(sp)
    ld      s0,120(sp)
    sd      a0,112(sp)
    li      a0, 0
    addi    sp,sp,136
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_18:8|temp_19:8|temp_20:8|temp_21:8|temp_22:8|temp_23:8|temp_24:8|temp_25:8|temp_26:8|temp_27:8|i:4|temp_28:4|temp_29:4|temp_30:1|none:3|tmp:4|none:4|temp_31:8|temp_32:4|temp_33:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc Array:i32:[Some(10_0)] a_38 
                    #      alloc ptr->i32 temp_18_38 
                    #      alloc ptr->i32 temp_19_38 
                    #      alloc ptr->i32 temp_20_38 
                    #      alloc ptr->i32 temp_21_38 
                    #      alloc ptr->i32 temp_22_38 
                    #      alloc ptr->i32 temp_23_38 
                    #      alloc ptr->i32 temp_24_38 
                    #      alloc ptr->i32 temp_25_38 
                    #      alloc ptr->i32 temp_26_38 
                    #      alloc ptr->i32 temp_27_38 
                    #      alloc i32 i_38 
                    #      alloc i32 temp_28_38 
                    #      alloc i32 temp_29_53 
                    #      alloc i1 temp_30_53 
                    #      alloc i32 tmp_55 
                    #      alloc ptr->i32 temp_31_55 
                    #      alloc i32 temp_32_55 
                    #      alloc i32 temp_33_55 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_38:Array:i32:[Some(10_0)] 
                    #      new_var temp_18_38:ptr->i32 
                    #      temp_18_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_18_38:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_38:108 
                    #      a_38 = chi a_38:108 
                    #      new_var temp_19_38:ptr->i32 
                    #      temp_19_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_19_38:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_38:114 
                    #      a_38 = chi a_38:114 
                    #      new_var temp_20_38:ptr->i32 
                    #      temp_20_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_20_38:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_38:120 
                    #      a_38 = chi a_38:120 
                    #      new_var temp_21_38:ptr->i32 
                    #      temp_21_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_21_38:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_38:126 
                    #      a_38 = chi a_38:126 
                    #      new_var temp_22_38:ptr->i32 
                    #      temp_22_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_22_38:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_38:132 
                    #      a_38 = chi a_38:132 
                    #      new_var temp_23_38:ptr->i32 
                    #      temp_23_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_23_38:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_38:138 
                    #      a_38 = chi a_38:138 
                    #      new_var temp_24_38:ptr->i32 
                    #      temp_24_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_24_38:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_38:144 
                    #      a_38 = chi a_38:144 
                    #      new_var temp_25_38:ptr->i32 
                    #      temp_25_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_25_38:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_38:150 
                    #      a_38 = chi a_38:150 
                    #      new_var temp_26_38:ptr->i32 
                    #      temp_26_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_26_38:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_38:156 
                    #      a_38 = chi a_38:156 
                    #      new_var temp_27_38:ptr->i32 
                    #      temp_27_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_27_38:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_38:162 
                    #      a_38 = chi a_38:162 
                    #      new_var i_38:i32 
                    #      new_var temp_28_38:i32 
                    #      temp_28_38 =  Call i32 insertsort_0(a_38) 
                    #saved register dumping to mem
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,56(sp)
    mv      a0, a5
                    #arg load ended
    call    insertsort
    sw      a0,32(sp)
                    #      i_38 = i32 temp_28_38 
    mv      s1, a0
                    #      jump label: while.head_54 
    j       .while.head_54
                    #      label while.head_54: 
.while.head_54:
                    #      new_var temp_29_53:i32 
                    #      temp_29_53 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a6,0(a4)
                    #      new_var temp_30_53:i1 
                    #      temp_30_53 = icmp i32 Slt i_38, temp_29_53 
    slt     s2,s1,a6
                    #      br i1 temp_30_53, label while.body_54, label while.exit_54 
    bnez    s2, .while.body_54
    j       .while.exit_54
                    #      label while.body_54: 
.while.body_54:
                    #      new_var tmp_55:i32 
                    #      new_var temp_31_55:ptr->i32 
                    #      new_var temp_32_55:i32 
                    #      temp_31_55 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(i_38)] 
    li      a4, 0
    li      s3, 1
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_32_55 = load temp_31_55:ptr->i32 
    lw      s4,0(a4)
                    #      tmp_55 = i32 temp_32_55 
    mv      s5, s4
                    #       Call void putint_0(tmp_55) 
                    #saved register dumping to mem
    sw      s1,36(sp)
    sb      s2,27(sp)
    sw      s4,4(sp)
    sw      s5,20(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    putint
                    #      tmp_55 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_55) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_33_55:i32 
                    #      temp_33_55 = Add i32 i_38, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      i_38 = i32 temp_33_55 
    mv      a0, s2
                    #      jump label: while.head_54 
    sw      s2,0(sp)
    sw      a6,28(sp)
    sw      a0,36(sp)
    lw      a0,32(sp)
    lw      s1,36(sp)
    sd      a4,8(sp)
    j       .while.head_54
                    #      label while.exit_54: 
.while.exit_54:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,32(sp)
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
