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
                    #      Define sub_0 [a0_19, a1_19, a2_19, b0_19, b1_19, b2_19, c0_19, c1_19, c2_19] -> sub_ret_0 
    .globl sub
    .type sub,@function
sub:
                    #mem layout:|c2:8|ra_sub:8|s0_sub:8|a0:8|a1:8|a2:8|b0:8|b1:8|b2:8|c0:8|c1:8|i:4|temp_0:1|none:3|temp_1:8|temp_2:8|temp_3:4|none:4|temp_4:8|temp_5:4|temp_6:4|temp_7:8|temp_8:8|temp_9:4|none:4|temp_10:8|temp_11:4|temp_12:4|temp_13:8|temp_14:8|temp_15:4|none:4|temp_16:8|temp_17:4|temp_18:4|temp_19:4|none:4
    addi    sp,sp,-224
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,224
                    #      new_var a0_19:ptr->f32 
                    #      new_var a1_19:ptr->f32 
                    #      new_var a2_19:ptr->f32 
                    #      new_var b0_19:ptr->f32 
                    #      new_var b1_19:ptr->f32 
                    #      new_var b2_19:ptr->f32 
                    #      new_var c0_19:ptr->f32 
                    #      new_var c1_19:ptr->f32 
                    #      new_var c2_19:ptr->f32 
                    #      alloc i32 i_21 
                    #      alloc i1 temp_0_24 
                    #      alloc ptr->f32 temp_1_26 
                    #      alloc ptr->f32 temp_2_26 
                    #      alloc f32 temp_3_26 
                    #      alloc ptr->f32 temp_4_26 
                    #      alloc f32 temp_5_26 
                    #      alloc f32 temp_6_26 
                    #      alloc ptr->f32 temp_7_26 
                    #      alloc ptr->f32 temp_8_26 
                    #      alloc f32 temp_9_26 
                    #      alloc ptr->f32 temp_10_26 
                    #      alloc f32 temp_11_26 
                    #      alloc f32 temp_12_26 
                    #      alloc ptr->f32 temp_13_26 
                    #      alloc ptr->f32 temp_14_26 
                    #      alloc f32 temp_15_26 
                    #      alloc ptr->f32 temp_16_26 
                    #      alloc f32 temp_17_26 
                    #      alloc f32 temp_18_26 
                    #      alloc i32 temp_19_26 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_21:i32 
                    #      i_21 = i32 0_0 
    li      s1, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_0_24:i1 
                    #      temp_0_24 = icmp i32 Slt i_21, 3_0 
    li      s2, 3
    slt     s3,s1,s2
                    #      br i1 temp_0_24, label while.body_25, label while.exit_25 
    bnez    s3, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_1_26:ptr->f32 
                    #      temp_1_26 = getelementptr c0_19:ptr->f32 [Some(i_21)] 
    li      s2, 0
    li      s4, 1
    add     s2,s2,a6
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      new_var temp_2_26:ptr->f32 
                    #      new_var temp_3_26:f32 
                    #      temp_2_26 = getelementptr b0_19:ptr->f32 [Some(i_21)] 
    li      s5, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s5,s5,a3
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_3_26 = load temp_2_26:ptr->f32 
    flw     fa0,s5(0)
                    #      new_var temp_4_26:ptr->f32 
                    #      new_var temp_5_26:f32 
                    #      temp_4_26 = getelementptr a0_19:ptr->f32 [Some(i_21)] 
    li      s6, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_5_26 = load temp_4_26:ptr->f32 
    flw     fa1,s6(0)
                    #      new_var temp_6_26:f32 
                    #      temp_6_26 = Sub f32 temp_5_26, temp_3_26 
    fsub.s  fa2,fa1,fa0
                    #      store temp_6_26:f32 temp_1_26:ptr->f32 
    fsd     fa2,0(s2)
                    #      mu c0_19:58 
                    #      c0_19 = chi c0_19:58 
                    #      new_var temp_7_26:ptr->f32 
                    #      temp_7_26 = getelementptr c1_19:ptr->f32 [Some(i_21)] 
    li      s7, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s7,s7,a7
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_8_26:ptr->f32 
                    #      new_var temp_9_26:f32 
                    #      temp_8_26 = getelementptr b1_19:ptr->f32 [Some(i_21)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s8,s8,a4
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_9_26 = load temp_8_26:ptr->f32 
    flw     fa3,s8(0)
                    #      new_var temp_10_26:ptr->f32 
                    #      new_var temp_11_26:f32 
                    #      temp_10_26 = getelementptr a1_19:ptr->f32 [Some(i_21)] 
    li      s9, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s9,s9,a1
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_11_26 = load temp_10_26:ptr->f32 
    flw     fa4,s9(0)
                    #      new_var temp_12_26:f32 
                    #      temp_12_26 = Sub f32 temp_11_26, temp_9_26 
    fsub.s  fa5,fa4,fa3
                    #      store temp_12_26:f32 temp_7_26:ptr->f32 
    fsd     fa5,0(s7)
                    #      mu c1_19:79 
                    #      c1_19 = chi c1_19:79 
                    #      new_var temp_13_26:ptr->f32 
                    #      temp_13_26 = getelementptr c2_19:ptr->f32 [Some(i_21)] 
    li      s10, 0
                    #found literal reg Some(s4) already exist with 1_0
    mul     s11,s4,s1
    add     s10,s10,s11
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_14_26:ptr->f32 
                    #      new_var temp_15_26:f32 
                    #      temp_14_26 = getelementptr b2_19:ptr->f32 [Some(i_21)] 
    li      s4, 0
    sd      a0,192(sp)
    li      a0, 1
    add     s4,s4,a5
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_15_26 = load temp_14_26:ptr->f32 
    flw     fa6,s4(0)
                    #      new_var temp_16_26:ptr->f32 
                    #      new_var temp_17_26:f32 
                    #      temp_16_26 = getelementptr a2_19:ptr->f32 [Some(i_21)] 
    li      a0, 0
    sd      a1,184(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_17_26 = load temp_16_26:ptr->f32 
    flw     fa7,a0(0)
                    #      new_var temp_18_26:f32 
                    #      temp_18_26 = Sub f32 temp_17_26, temp_15_26 
    fsub.s  f8,fa7,fa6
                    #      store temp_18_26:f32 temp_13_26:ptr->f32 
    fsd     f8,0(s10)
                    #      mu c2_19:100 
                    #      c2_19 = chi c2_19:100 
                    #      new_var temp_19_26:i32 
                    #      temp_19_26 = Add i32 i_21, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a0,16(sp)
    add     a0,s1,a1
                    #      i_21 = i32 temp_19_26 
                    #      jump label: while.head_25 
    fsw     f8,8(sp)
    sd      s8,72(sp)
    fsw     fa7,12(sp)
    sd      s2,120(sp)
    sd      s9,56(sp)
    sb      s3,131(sp)
    sw      a0,4(sp)
    ld      a0,192(sp)
    fsw     fa0,108(sp)
    sd      s7,80(sp)
    sd      s11,216(sp)
    sd      s6,96(sp)
    fsw     fa6,28(sp)
    fsw     fa1,92(sp)
    fsw     fa5,48(sp)
    fsw     fa4,52(sp)
    ld      a1,184(sp)
    sd      s5,112(sp)
    sd      s10,40(sp)
    fsw     fa3,68(sp)
    fsw     fa2,88(sp)
    sd      s4,32(sp)
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      ret 0_0 
    ld      ra,208(sp)
    ld      s0,200(sp)
    sd      a0,192(sp)
    li      a0, 0
    addi    sp,sp,224
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a0:12|a1:12|a2:12|b0:12|b1:12|b2:12|c0:24|c1:12|c2:12|i:4|temp_20:1|none:3|temp_21:8|temp_22:4|none:4|temp_23:8|temp_24:4|none:4|temp_25:8|temp_26:4|none:4|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:4|none:4|temp_31:8|temp_32:4|temp_33:4|temp_34:4|x:4|temp_35:1|none:7|temp_36:8|temp_37:4|temp_38:4|temp_39:4|temp_40:1|none:3|temp_41:8|temp_42:4|temp_43:4|temp_44:4|temp_45:1|none:3|temp_46:8|temp_47:4|temp_48:4|temp_49:4|none:4
    addi    sp,sp,-328
    sd      ra,320(sp)
    sd      s0,312(sp)
    addi    s0,sp,328
                    #      alloc Array:f32:[Some(3_0)] a0_33 
                    #      alloc Array:f32:[Some(3_0)] a1_33 
                    #      alloc Array:f32:[Some(3_0)] a2_33 
                    #      alloc Array:f32:[Some(3_0)] b0_33 
                    #      alloc Array:f32:[Some(3_0)] b1_33 
                    #      alloc Array:f32:[Some(3_0)] b2_33 
                    #      alloc Array:f32:[Some(6_0)] c0_33 
                    #      alloc Array:f32:[Some(3_0)] c1_33 
                    #      alloc Array:f32:[Some(3_0)] c2_33 
                    #      alloc i32 i_33 
                    #      alloc i1 temp_20_40 
                    #      alloc ptr->f32 temp_21_42 
                    #      alloc f32 temp_22_42 
                    #      alloc ptr->f32 temp_23_42 
                    #      alloc f32 temp_24_42 
                    #      alloc ptr->f32 temp_25_42 
                    #      alloc f32 temp_26_42 
                    #      alloc ptr->f32 temp_27_42 
                    #      alloc f32 temp_28_42 
                    #      alloc ptr->f32 temp_29_42 
                    #      alloc f32 temp_30_42 
                    #      alloc ptr->f32 temp_31_42 
                    #      alloc f32 temp_32_42 
                    #      alloc i32 temp_33_42 
                    #      alloc i32 temp_34_33 
                    #      alloc i32 x_33 
                    #      alloc i1 temp_35_52 
                    #      alloc ptr->f32 temp_36_54 
                    #      alloc f32 temp_37_54 
                    #      alloc i32 temp_38_54 
                    #      alloc i32 temp_39_54 
                    #      alloc i1 temp_40_61 
                    #      alloc ptr->f32 temp_41_63 
                    #      alloc f32 temp_42_63 
                    #      alloc i32 temp_43_63 
                    #      alloc i32 temp_44_63 
                    #      alloc i1 temp_45_70 
                    #      alloc ptr->f32 temp_46_72 
                    #      alloc f32 temp_47_72 
                    #      alloc i32 temp_48_72 
                    #      alloc i32 temp_49_72 
                    #      label L0_0: 
.L0_0:
                    #      store 3_0:i32 *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    li      a1, 3
    sd      a1,0(a0)
                    #      store 3_0:i32 *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      a2, M
                    #occupy reg a2 with *M_0
                    #found literal reg Some(a1) already exist with 3_0
    sd      a1,0(a2)
                    #      store 3_0:i32 *L_0:ptr->i32 
                    #   load label L as ptr to reg
    la      a3, L
                    #occupy reg a3 with *L_0
                    #found literal reg Some(a1) already exist with 3_0
    sd      a1,0(a3)
                    #      new_var a0_33:Array:f32:[Some(3_0)] 
                    #      new_var a1_33:Array:f32:[Some(3_0)] 
                    #      new_var a2_33:Array:f32:[Some(3_0)] 
                    #      new_var b0_33:Array:f32:[Some(3_0)] 
                    #      new_var b1_33:Array:f32:[Some(3_0)] 
                    #      new_var b2_33:Array:f32:[Some(3_0)] 
                    #      new_var c0_33:Array:f32:[Some(6_0)] 
                    #      new_var c1_33:Array:f32:[Some(3_0)] 
                    #      new_var c2_33:Array:f32:[Some(3_0)] 
                    #      new_var i_33:i32 
                    #      i_33 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_41 
    j       .while.head_41
                    #      label while.head_41: 
.while.head_41:
                    #      new_var temp_20_40:i1 
                    #      temp_20_40 = icmp i32 Slt i_33, 3_0 
    li      a0, 3
    slt     a1,a4,a0
                    #      br i1 temp_20_40, label while.body_41, label while.exit_41 
    bnez    a1, .while.body_41
    j       .while.exit_41
                    #      label while.body_41: 
.while.body_41:
                    #      new_var temp_21_42:ptr->f32 
                    #      temp_21_42 = getelementptr a0_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      a2, 1
    mul     a3,a2,a4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_22_42:f32 
                    #      temp_22_42 = sitofp i32 i_33 to f32 
                    #      store temp_22_42:f32 temp_21_42:ptr->f32 
    fsd     fa0,0(a0)
                    #      mu a0_33:147 
                    #      a0_33 = chi a0_33:147 
                    #      new_var temp_23_42:ptr->f32 
                    #      temp_23_42 = getelementptr a1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a5, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     a6,a2,a4
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      new_var temp_24_42:f32 
                    #      temp_24_42 = sitofp i32 i_33 to f32 
                    #      store temp_24_42:f32 temp_23_42:ptr->f32 
    fsd     fa1,0(a5)
                    #      mu a1_33:156 
                    #      a1_33 = chi a1_33:156 
                    #      new_var temp_25_42:ptr->f32 
                    #      temp_25_42 = getelementptr a2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a7, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     s1,a2,a4
    add     a7,a7,s1
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      new_var temp_26_42:f32 
                    #      temp_26_42 = sitofp i32 i_33 to f32 
                    #      store temp_26_42:f32 temp_25_42:ptr->f32 
    fsd     fa2,0(a7)
                    #      mu a2_33:165 
                    #      a2_33 = chi a2_33:165 
                    #      new_var temp_27_42:ptr->f32 
                    #      temp_27_42 = getelementptr b0_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s2, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     s3,a2,a4
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      new_var temp_28_42:f32 
                    #      temp_28_42 = sitofp i32 i_33 to f32 
                    #      store temp_28_42:f32 temp_27_42:ptr->f32 
    fsd     fa3,0(s2)
                    #      mu b0_33:174 
                    #      b0_33 = chi b0_33:174 
                    #      new_var temp_29_42:ptr->f32 
                    #      temp_29_42 = getelementptr b1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s4, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     s5,a2,a4
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      new_var temp_30_42:f32 
                    #      temp_30_42 = sitofp i32 i_33 to f32 
                    #      store temp_30_42:f32 temp_29_42:ptr->f32 
    fsd     fa4,0(s4)
                    #      mu b1_33:183 
                    #      b1_33 = chi b1_33:183 
                    #      new_var temp_31_42:ptr->f32 
                    #      temp_31_42 = getelementptr b2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s6, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     s7,a2,a4
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      new_var temp_32_42:f32 
                    #      temp_32_42 = sitofp i32 i_33 to f32 
                    #      store temp_32_42:f32 temp_31_42:ptr->f32 
    fsd     fa5,0(s6)
                    #      mu b2_33:192 
                    #      b2_33 = chi b2_33:192 
                    #      new_var temp_33_42:i32 
                    #      temp_33_42 = Add i32 i_33, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    add     s8,a4,a2
                    #      i_33 = i32 temp_33_42 
                    #      jump label: while.head_41 
    sw      s5,260(sp)
    sw      a3,308(sp)
    fsw     fa4,108(sp)
    sd      a7,144(sp)
    sw      s7,248(sp)
    sd      s6,96(sp)
    fsw     fa0,172(sp)
    fsw     fa5,92(sp)
    sw      s8,88(sp)
    sd      s2,128(sp)
    sd      a0,176(sp)
    sw      s3,272(sp)
    sd      a5,160(sp)
    fsw     fa2,140(sp)
    sb      a1,187(sp)
    sd      s4,112(sp)
    fsw     fa1,156(sp)
    sw      s1,284(sp)
    fsw     fa3,124(sp)
    sw      a6,296(sp)
    j       .while.head_41
                    #      label while.exit_41: 
.while.exit_41:
                    #      new_var temp_34_33:i32 
                    #      temp_34_33 =  Call i32 sub_0(a0_33, a1_33, a2_33, b0_33, b1_33, b2_33, c0_33, c1_33, c2_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,308(sp)
    sb      a1,187(sp)
    lw      a1,296(sp)
    lw      a2,284(sp)
    lw      a3,272(sp)
    sw      a4,188(sp)
    lw      a4,260(sp)
    lw      a5,248(sp)
    lw      a6,236(sp)
    lw      a7,212(sp)
                    #arg load ended
    call    sub
    sw      a0,84(sp)
                    #      i_33 = i32 temp_34_33 
    mv      a1, a0
                    #      new_var x_33:i32 
                    #      jump label: while.head_53 
    j       .while.head_53
                    #      label while.head_53: 
.while.head_53:
                    #      new_var temp_35_52:i1 
                    #      temp_35_52 = icmp i32 Slt i_33, 3_0 
    li      a2, 3
    slt     a3,a1,a2
                    #      br i1 temp_35_52, label while.body_53, label while.exit_53 
    bnez    a3, .while.body_53
    j       .while.exit_53
                    #      label while.body_53: 
.while.body_53:
                    #      new_var temp_36_54:ptr->f32 
                    #      new_var temp_37_54:f32 
                    #      temp_36_54 = getelementptr c0_33:Array:f32:[Some(6_0)] [Some(i_33)] 
    li      a2, 0
    li      a4, 1
    mul     a5,a4,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_37_54 = load temp_36_54:ptr->f32 
    flw     fa0,a2(0)
                    #      new_var temp_38_54:i32 
                    #      temp_38_54 = fptosi f32 temp_37_54 to i32 
                    #      x_33 = i32 temp_38_54 
    mv      a7, a6
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
    mv      a0, a7
                    #arg load ended
    call    putint
                    #      new_var temp_39_54:i32 
                    #      temp_39_54 = Add i32 i_33, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a0,a1,a4
                    #      i_33 = i32 temp_39_54 
                    #      jump label: while.head_53 
    sb      a3,79(sp)
    sw      a7,80(sp)
    fsw     fa0,60(sp)
    sw      a0,52(sp)
    lw      a0,84(sp)
    sd      a2,64(sp)
    sw      a5,236(sp)
    sw      a6,56(sp)
    j       .while.head_53
                    #      label while.exit_53: 
.while.exit_53:
                    #      x_33 = i32 10_0 
    li      a2, 10
                    #      i_33 = i32 0_0 
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_40_61:i1 
                    #      temp_40_61 = icmp i32 Slt i_33, 3_0 
    li      a0, 3
    slt     a4,a1,a0
                    #      br i1 temp_40_61, label while.body_62, label while.exit_62 
    bnez    a4, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_41_63:ptr->f32 
                    #      new_var temp_42_63:f32 
                    #      temp_41_63 = getelementptr c1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_42_63 = load temp_41_63:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_43_63:i32 
                    #      temp_43_63 = fptosi f32 temp_42_63 to i32 
                    #      x_33 = i32 temp_43_63 
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sd      a0,40(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_44_63:i32 
                    #      temp_44_63 = Add i32 i_33, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     a0,a1,a5
                    #      i_33 = i32 temp_44_63 
                    #      jump label: while.head_62 
    sw      a7,32(sp)
    sb      a4,51(sp)
    fsw     fa0,36(sp)
    sw      a0,28(sp)
    sw      a6,212(sp)
    j       .while.head_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      x_33 = i32 10_0 
                    #      i_33 = i32 0_0 
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      jump label: while.head_71 
    j       .while.head_71
                    #      label while.head_71: 
.while.head_71:
                    #      new_var temp_45_70:i1 
                    #      temp_45_70 = icmp i32 Slt i_33, 3_0 
    li      a0, 3
    slt     a5,a1,a0
                    #      br i1 temp_45_70, label while.body_71, label while.exit_71 
    bnez    a5, .while.body_71
    j       .while.exit_71
                    #      label while.body_71: 
.while.body_71:
                    #      new_var temp_46_72:ptr->f32 
                    #      new_var temp_47_72:f32 
                    #      temp_46_72 = getelementptr c2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      a6, 1
    mul     a7,a6,a1
    add     a0,a0,a7
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_47_72 = load temp_46_72:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_48_72:i32 
                    #      temp_48_72 = fptosi f32 temp_47_72 to i32 
                    #      x_33 = i32 temp_48_72 
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
    sw      s1,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,16(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_49_72:i32 
                    #      temp_49_72 = Add i32 i_33, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     a0,a1,a6
                    #      i_33 = i32 temp_49_72 
                    #      jump label: while.head_71 
    sw      a7,200(sp)
    fsw     fa0,12(sp)
    sw      a0,4(sp)
    sb      a5,27(sp)
    j       .while.head_71
                    #      label while.exit_71: 
.while.exit_71:
                    #      x_33 = i32 10_0 
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,320(sp)
    ld      s0,312(sp)
    li      a0, 0
    addi    sp,sp,328
    ret
.section        .data
    .align 4
    .globl L
                    #      global i32 L_0 
    .type L,@object
L:
    .word 0
    .align 4
    .globl M
                    #      global i32 M_0 
    .type M,@object
M:
    .word 0
    .align 4
    .globl N
                    #      global i32 N_0 
    .type N,@object
N:
    .word 0
