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
                    #      Define EightWhile_0 [] -> EightWhile_ret_0 
    .globl EightWhile
    .type EightWhile,@function
EightWhile:
                    #mem layout:|ra_EightWhile:8|s0_EightWhile:8|a:4|b:4|c:4|d:4|temp_0:1|none:3|temp_1:4|temp_2:1|none:3|temp_3:4|temp_4:1|none:3|temp_5:4|temp_6:1|none:3|temp_7:4|temp_8:4|temp_9:1|none:3|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:4|temp_15:4|temp_16:4|temp_17:1|none:3|temp_18:4|temp_19:4|temp_20:4|temp_21:1|none:3|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:4|temp_40:4|temp_41:4|temp_42:4|temp_43:4|temp_44:4|none:4
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,200(sp)
    addi    s0,sp,216
                    #      alloc i32 a_21 
                    #      alloc i32 b_21 
                    #      alloc i32 c_21 
                    #      alloc i32 d_21 
                    #      alloc i1 temp_0_30 
                    #      alloc i32 temp_1_32 
                    #      alloc i1 temp_2_34 
                    #      alloc i32 temp_3_36 
                    #      alloc i1 temp_4_38 
                    #      alloc i32 temp_5_40 
                    #      alloc i1 temp_6_42 
                    #      alloc i32 temp_7_44 
                    #      alloc i32 temp_8_46 
                    #      alloc i1 temp_9_46 
                    #      alloc i32 temp_10_48 
                    #      alloc i32 temp_11_48 
                    #      alloc i32 temp_12_50 
                    #      alloc i1 temp_13_50 
                    #      alloc i32 temp_14_52 
                    #      alloc i32 temp_15_52 
                    #      alloc i32 temp_16_54 
                    #      alloc i1 temp_17_54 
                    #      alloc i32 temp_18_56 
                    #      alloc i32 temp_19_56 
                    #      alloc i32 temp_20_58 
                    #      alloc i1 temp_21_58 
                    #      alloc i32 temp_22_60 
                    #      alloc i32 temp_23_60 
                    #      alloc i32 temp_24_56 
                    #      alloc i32 temp_25_56 
                    #      alloc i32 temp_26_52 
                    #      alloc i32 temp_27_52 
                    #      alloc i32 temp_28_48 
                    #      alloc i32 temp_29_48 
                    #      alloc i32 temp_30_44 
                    #      alloc i32 temp_31_44 
                    #      alloc i32 temp_32_40 
                    #      alloc i32 temp_33_36 
                    #      alloc i32 temp_34_32 
                    #      alloc i32 temp_35_21 
                    #      alloc i32 temp_36_21 
                    #      alloc i32 temp_37_21 
                    #      alloc i32 temp_38_21 
                    #      alloc i32 temp_39_21 
                    #      alloc i32 temp_40_21 
                    #      alloc i32 temp_41_21 
                    #      alloc i32 temp_42_21 
                    #      alloc i32 temp_43_21 
                    #      alloc i32 temp_44_21 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_21:i32 
                    #      a_21 = i32 5_0 
    li      a0, 5
                    #      new_var b_21:i32 
                    #      new_var c_21:i32 
                    #      b_21 = i32 6_0 
    li      a1, 6
                    #      c_21 = i32 7_0 
    li      a2, 7
                    #      new_var d_21:i32 
                    #      d_21 = i32 10_0 
    li      a3, 10
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_0_30:i1 
                    #      temp_0_30 = icmp i32 Slt a_21, 20_0 
    li      a4, 20
    slt     a5,a0,a4
                    #      br i1 temp_0_30, label while.body_31, label while.exit_31 
    bnez    a5, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_1_32:i32 
                    #      temp_1_32 = Add i32 a_21, 3_0 
    li      a6, 3
    add     a7,a0,a6
                    #      a_21 = i32 temp_1_32 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.head_35: 
.while.head_35:
                    #      new_var temp_2_34:i1 
                    #      temp_2_34 = icmp i32 Slt b_21, 10_0 
    li      s1, 10
    slt     s2,a1,s1
                    #      br i1 temp_2_34, label while.body_35, label while.exit_35 
    bnez    s2, .while.body_35
    j       .while.exit_35
                    #      label while.body_35: 
.while.body_35:
                    #      new_var temp_3_36:i32 
                    #      temp_3_36 = Add i32 b_21, 1_0 
    li      s3, 1
    add     s4,a1,s3
                    #      b_21 = i32 temp_3_36 
                    #      jump label: while.head_39 
    j       .while.head_39
                    #      label while.head_39: 
.while.head_39:
                    #      new_var temp_4_38:i1 
                    #      temp_4_38 = icmp i32 Eq c_21, 7_0 
    li      s5, 7
    xor     s6,a2,s5
    seqz    s6, s6
                    #      br i1 temp_4_38, label while.body_39, label while.exit_39 
    bnez    s6, .while.body_39
    j       .while.exit_39
                    #      label while.body_39: 
.while.body_39:
                    #      new_var temp_5_40:i32 
                    #      temp_5_40 = Sub i32 c_21, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    sub     s7,a2,s3
                    #      c_21 = i32 temp_5_40 
                    #      jump label: while.head_43 
    j       .while.head_43
                    #      label while.head_43: 
.while.head_43:
                    #      new_var temp_6_42:i1 
                    #      temp_6_42 = icmp i32 Slt d_21, 20_0 
                    #found literal reg Some(a4) already exist with 20_0
    slt     s8,a3,a4
                    #      br i1 temp_6_42, label while.body_43, label while.exit_43 
    bnez    s8, .while.body_43
    j       .while.exit_43
                    #      label while.body_43: 
.while.body_43:
                    #      new_var temp_7_44:i32 
                    #      temp_7_44 = Add i32 d_21, 3_0 
                    #found literal reg Some(a6) already exist with 3_0
    add     s9,a3,a6
                    #      d_21 = i32 temp_7_44 
                    #      jump label: while.head_47 
    j       .while.head_47
                    #      label while.head_47: 
.while.head_47:
                    #      new_var temp_8_46:i32 
                    #      temp_8_46 = load *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s10, e
                    #occupy reg s10 with *e_0
    lw      s11,0(s10)
                    #      new_var temp_9_46:i1 
                    #      temp_9_46 = icmp i32 Sgt temp_8_46, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    slt     a4,s3,s11
                    #      br i1 temp_9_46, label while.body_47, label while.exit_47 
    bnez    a4, .while.body_47
    j       .while.exit_47
                    #      label while.body_47: 
.while.body_47:
                    #      new_var temp_10_48:i32 
                    #      temp_10_48 = load *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      a6, e
                    #occupy reg a6 with *e_0
    lw      s1,0(a6)
                    #      new_var temp_11_48:i32 
                    #      temp_11_48 = Sub i32 temp_10_48, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    sub     a6,s1,s3
                    #      store temp_11_48:i32 *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s3, e
                    #occupy reg s3 with *e_0
    sd      a6,0(s3)
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.head_51: 
.while.head_51:
                    #      new_var temp_12_50:i32 
                    #      temp_12_50 = load *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      s3, f
                    #occupy reg s3 with *f_0
    lw      s5,0(s3)
                    #      new_var temp_13_50:i1 
                    #      temp_13_50 = icmp i32 Sgt temp_12_50, 2_0 
    li      s3, 2
    slt     s10,s3,s5
                    #      br i1 temp_13_50, label while.body_51, label while.exit_51 
    bnez    s10, .while.body_51
    j       .while.exit_51
                    #      label while.body_51: 
.while.body_51:
                    #      new_var temp_14_52:i32 
                    #      temp_14_52 = load *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      s3, f
                    #occupy reg s3 with *f_0
    sw      a0,196(sp)
    lw      a0,0(s3)
                    #      new_var temp_15_52:i32 
                    #      temp_15_52 = Sub i32 temp_14_52, 2_0 
    li      s3, 2
    sw      a1,192(sp)
    sub     a1,a0,s3
                    #      store temp_15_52:i32 *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      s3, f
                    #occupy reg s3 with *f_0
    sd      a1,0(s3)
                    #      jump label: while.head_55 
    j       .while.head_55
                    #      label while.head_55: 
.while.head_55:
                    #      new_var temp_16_54:i32 
                    #      temp_16_54 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      s3, g
                    #occupy reg s3 with *g_0
    sw      a0,124(sp)
    lw      a0,0(s3)
                    #      new_var temp_17_54:i1 
                    #      temp_17_54 = icmp i32 Slt temp_16_54, 3_0 
    li      s3, 3
    sw      a1,120(sp)
    slt     a1,a0,s3
                    #      br i1 temp_17_54, label while.body_55, label while.exit_55 
    bnez    a1, .while.body_55
    j       .while.exit_55
                    #      label while.body_55: 
.while.body_55:
                    #      new_var temp_18_56:i32 
                    #      temp_18_56 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      s3, g
                    #occupy reg s3 with *g_0
    sw      a0,116(sp)
    lw      a0,0(s3)
                    #      new_var temp_19_56:i32 
                    #      temp_19_56 = Add i32 temp_18_56, 10_0 
    li      s3, 10
    sb      a1,115(sp)
    add     a1,a0,s3
                    #      store temp_19_56:i32 *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      s3, g
                    #occupy reg s3 with *g_0
    sd      a1,0(s3)
                    #      jump label: while.head_59 
    j       .while.head_59
                    #      label while.head_59: 
.while.head_59:
                    #      new_var temp_20_58:i32 
                    #      temp_20_58 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s3, h
                    #occupy reg s3 with *h_0
    sw      a0,108(sp)
    lw      a0,0(s3)
                    #      new_var temp_21_58:i1 
                    #      temp_21_58 = icmp i32 Slt temp_20_58, 10_0 
    li      s3, 10
    sw      a1,104(sp)
    slt     a1,a0,s3
                    #      br i1 temp_21_58, label while.body_59, label while.exit_59 
    bnez    a1, .while.body_59
    j       .while.exit_59
                    #      label while.body_59: 
.while.body_59:
                    #      new_var temp_22_60:i32 
                    #      temp_22_60 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s3, h
                    #occupy reg s3 with *h_0
    sw      a0,100(sp)
    lw      a0,0(s3)
                    #      new_var temp_23_60:i32 
                    #      temp_23_60 = Add i32 temp_22_60, 8_0 
    li      s3, 8
    sb      a1,99(sp)
    add     a1,a0,s3
                    #      store temp_23_60:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s3, h
                    #occupy reg s3 with *h_0
    sd      a1,0(s3)
                    #      jump label: while.head_59 
    j       .while.head_59
                    #      label while.exit_59: 
.while.exit_59:
                    #      new_var temp_24_56:i32 
                    #      temp_24_56 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s3, h
                    #occupy reg s3 with *h_0
    sw      a0,92(sp)
    lw      a0,0(s3)
                    #      new_var temp_25_56:i32 
                    #      temp_25_56 = Sub i32 temp_24_56, 1_0 
    li      s3, 1
    sw      a1,88(sp)
    sub     a1,a0,s3
                    #      store temp_25_56:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s3, h
                    #occupy reg s3 with *h_0
    sd      a1,0(s3)
                    #      jump label: while.head_55 
    j       .while.head_55
                    #      label while.exit_55: 
.while.exit_55:
                    #      new_var temp_26_52:i32 
                    #      temp_26_52 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      s3, g
                    #occupy reg s3 with *g_0
    sw      a0,84(sp)
    lw      a0,0(s3)
                    #      new_var temp_27_52:i32 
                    #      temp_27_52 = Sub i32 temp_26_52, 8_0 
    li      s3, 8
    sw      a1,80(sp)
    sub     a1,a0,s3
                    #      store temp_27_52:i32 *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      s3, g
                    #occupy reg s3 with *g_0
    sd      a1,0(s3)
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.exit_51: 
.while.exit_51:
                    #      new_var temp_28_48:i32 
                    #      temp_28_48 = load *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      s3, f
                    #occupy reg s3 with *f_0
    sw      a0,76(sp)
    lw      a0,0(s3)
                    #      new_var temp_29_48:i32 
                    #      temp_29_48 = Add i32 temp_28_48, 1_0 
    li      s3, 1
    sw      a1,72(sp)
    add     a1,a0,s3
                    #      store temp_29_48:i32 *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      s3, f
                    #occupy reg s3 with *f_0
    sd      a1,0(s3)
                    #      jump label: while.head_47 
    j       .while.head_47
                    #      label while.exit_47: 
.while.exit_47:
                    #      new_var temp_30_44:i32 
                    #      temp_30_44 = load *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s3, e
                    #occupy reg s3 with *e_0
    sw      a0,68(sp)
    lw      a0,0(s3)
                    #      new_var temp_31_44:i32 
                    #      temp_31_44 = Add i32 temp_30_44, 1_0 
    li      s3, 1
    sw      a1,64(sp)
    add     a1,a0,s3
                    #      store temp_31_44:i32 *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s3, e
                    #occupy reg s3 with *e_0
    sd      a1,0(s3)
                    #      jump label: while.head_43 
    j       .while.head_43
                    #      label while.exit_43: 
.while.exit_43:
                    #      new_var temp_32_40:i32 
                    #      temp_32_40 = Sub i32 d_21, 1_0 
    li      s3, 1
    sw      a0,60(sp)
    sub     a0,a3,s3
                    #      d_21 = i32 temp_32_40 
                    #      jump label: while.head_39 
    j       .while.head_39
                    #      label while.exit_39: 
.while.exit_39:
                    #      new_var temp_33_36:i32 
                    #      temp_33_36 = Add i32 c_21, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    sw      a0,52(sp)
    add     a0,a2,s3
                    #      c_21 = i32 temp_33_36 
                    #      jump label: while.head_35 
    j       .while.head_35
                    #      label while.exit_35: 
.while.exit_35:
                    #      new_var temp_34_32:i32 
                    #      temp_34_32 = Sub i32 b_21, 2_0 
    sw      a0,48(sp)
    li      a0, 2
    sw      a1,56(sp)
    sub     a1,s3,a0
                    #      b_21 = i32 temp_34_32 
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      new_var temp_35_21:i32 
                    #      temp_35_21 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a0, h
                    #occupy reg a0 with *h_0
    sw      a1,44(sp)
    lw      a1,0(a0)
                    #      new_var temp_36_21:i32 
                    #      temp_36_21 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a0, g
                    #occupy reg a0 with *g_0
    sw      a1,40(sp)
    lw      a1,0(a0)
                    #      new_var temp_37_21:i32 
                    #      temp_37_21 = Add i32 temp_36_21, temp_35_21 
    sw      a2,188(sp)
    add     a2,a1,a0
                    #      new_var temp_38_21:i32 
                    #      temp_38_21 = Sub i32 temp_37_21, d_21 
    sw      a0,40(sp)
    sub     a0,a2,a3
                    #      new_var temp_39_21:i32 
                    #      temp_39_21 = load *e_0:ptr->i32 
    sw      a0,28(sp)
                    #   load label e as ptr to reg
    la      a0, e
                    #occupy reg a0 with *e_0
    sw      a1,36(sp)
    lw      a1,0(a0)
                    #      new_var temp_40_21:i32 
                    #      temp_40_21 = Add i32 temp_39_21, temp_38_21 
    sw      a2,32(sp)
    add     a2,a1,a0
                    #      new_var temp_41_21:i32 
                    #      temp_41_21 = Add i32 b_21, d_21 
    sw      a0,28(sp)
    add     a0,s3,a3
                    #      new_var temp_42_21:i32 
                    #      temp_42_21 = Add i32 temp_41_21, c_21 
    sw      a1,24(sp)
    sw      a2,20(sp)
    add     a2,a0,a1
                    #      new_var temp_43_21:i32 
                    #      temp_43_21 = Add i32 a_21, temp_42_21 
    sw      a0,16(sp)
    sw      a1,188(sp)
    add     a1,a0,a2
                    #      new_var temp_44_21:i32 
                    #      temp_44_21 = Sub i32 temp_43_21, temp_40_21 
    sw      a0,196(sp)
    sw      a2,12(sp)
    sub     a2,a1,a0
                    #      ret temp_44_21 
    ld      ra,208(sp)
    ld      s0,200(sp)
    sw      a2,4(sp)
    sw      a0,20(sp)
    addi    sp,sp,216
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_45:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_45_71 
                    #      label L0_0: 
.L0_0:
                    #      store 1_0:i32 *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a0, g
                    #occupy reg a0 with *g_0
    li      a1, 1
    sd      a1,0(a0)
                    #      store 2_0:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a2, h
                    #occupy reg a2 with *h_0
    li      a3, 2
    sd      a3,0(a2)
                    #      store 4_0:i32 *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      a4, e
                    #occupy reg a4 with *e_0
    li      a5, 4
    sd      a5,0(a4)
                    #      store 6_0:i32 *f_0:ptr->i32 
                    #   load label f as ptr to reg
    la      a6, f
                    #occupy reg a6 with *f_0
    li      a7, 6
    sd      a7,0(a6)
                    #      new_var temp_45_71:i32 
                    #      temp_45_71 =  Call i32 EightWhile_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    EightWhile
    sw      a0,4(sp)
                    #      ret temp_45_71 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
.section        .data
    .align 4
    .globl e
                    #      global i32 e_0 
    .type e,@object
e:
    .word 0
    .align 4
    .globl f
                    #      global i32 f_0 
    .type f,@object
f:
    .word 0
    .align 4
    .globl h
                    #      global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl g
                    #      global i32 g_0 
    .type g,@object
g:
    .word 0
