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


.section
    .text
    .align 4
                    #regtab 
                    #      Define add_0 [a0_19, a1_19, a2_19, b0_19, b1_19, b2_19, c0_19, c1_19, c2_19] -> add_ret_0 
    .globl add
    .type add,@function
add:
                    #mem layout:|c2:8|ra_add:8|s0_add:8|a0:8|a1:8|a2:8|b0:8|b1:8|b2:8|c0:8|c1:8|i:4|temp_0:4|temp_1:1|none:7|temp_2:8|temp_3:8|temp_4:4|none:4|temp_5:8|temp_6:4|temp_7:4|temp_8:8|temp_9:8|temp_10:4|none:4|temp_11:8|temp_12:4|temp_13:4|temp_14:8|temp_15:8|temp_16:4|none:4|temp_17:8|temp_18:4|temp_19:4|temp_20:4|none:4
    addi    sp,sp,-232
    sd      ra,216(sp)
    sd      s0,208(sp)
    addi    s0,sp,232
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
                    #      alloc i32 temp_0_24 
                    #      alloc i1 temp_1_24 
                    #      alloc ptr->f32 temp_2_26 
                    #      alloc ptr->f32 temp_3_26 
                    #      alloc f32 temp_4_26 
                    #      alloc ptr->f32 temp_5_26 
                    #      alloc f32 temp_6_26 
                    #      alloc f32 temp_7_26 
                    #      alloc ptr->f32 temp_8_26 
                    #      alloc ptr->f32 temp_9_26 
                    #      alloc f32 temp_10_26 
                    #      alloc ptr->f32 temp_11_26 
                    #      alloc f32 temp_12_26 
                    #      alloc f32 temp_13_26 
                    #      alloc ptr->f32 temp_14_26 
                    #      alloc ptr->f32 temp_15_26 
                    #      alloc f32 temp_16_26 
                    #      alloc ptr->f32 temp_17_26 
                    #      alloc f32 temp_18_26 
                    #      alloc f32 temp_19_26 
                    #      alloc i32 temp_20_26 
                    #regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } | 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_21:i32 
                    #      i_21 = i32 0_0 
    li      s1, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21, tracked: true } | 
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_0_24:i32 
                    #      temp_0_24 = load *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      s2, M
                    #occupy reg s2 with *M_0
    lw      s3,0(s2)
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Slt i_21, temp_0_24 
    slt     s4,s1,s3
                    #      br i1 temp_1_24, label while.body_25, label while.exit_25 
    bnez    s4, .while.body_25
    j       .while.exit_25
                    #regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21, tracked: true } |     s3:Freed { symidx: temp_0_24, tracked: true } |     s4:Freed { symidx: temp_1_24, tracked: true } | 
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_2_26:ptr->f32 
                    #      temp_2_26 = getelementptr c0_19:ptr->f32 [Some(i_21)] 
    li      s2, 0
    li      s5, 1
    add     s2,s2,a6
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      new_var temp_3_26:ptr->f32 
                    #      new_var temp_4_26:f32 
                    #      temp_3_26 = getelementptr b0_19:ptr->f32 [Some(i_21)] 
    li      s6, 0
                    #found literal reg Some(s5) already exist with 1_0
    add     s6,s6,a3
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_4_26 = load temp_3_26:ptr->f32 
    flw     fa0,s6(0)
                    #      new_var temp_5_26:ptr->f32 
                    #      new_var temp_6_26:f32 
                    #      temp_5_26 = getelementptr a0_19:ptr->f32 [Some(i_21)] 
    li      s7, 0
                    #found literal reg Some(s5) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_6_26 = load temp_5_26:ptr->f32 
    flw     fa1,s7(0)
                    #      new_var temp_7_26:f32 
                    #      temp_7_26 = Add f32 temp_6_26, temp_4_26 
    fadd.s  fa2,fa1,fa0
                    #      store temp_7_26:f32 temp_2_26:ptr->f32 
    fsd     fa2,0(s2)
                    #      mu c0_19:61 
                    #      c0_19 = chi c0_19:61 
                    #      new_var temp_8_26:ptr->f32 
                    #      temp_8_26 = getelementptr c1_19:ptr->f32 [Some(i_21)] 
    li      s8, 0
                    #found literal reg Some(s5) already exist with 1_0
    add     s8,s8,a7
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      new_var temp_9_26:ptr->f32 
                    #      new_var temp_10_26:f32 
                    #      temp_9_26 = getelementptr b1_19:ptr->f32 [Some(i_21)] 
    li      s9, 0
                    #found literal reg Some(s5) already exist with 1_0
    add     s9,s9,a4
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_10_26 = load temp_9_26:ptr->f32 
    flw     fa3,s9(0)
                    #      new_var temp_11_26:ptr->f32 
                    #      new_var temp_12_26:f32 
                    #      temp_11_26 = getelementptr a1_19:ptr->f32 [Some(i_21)] 
    li      s10, 0
                    #found literal reg Some(s5) already exist with 1_0
    add     s10,s10,a1
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_12_26 = load temp_11_26:ptr->f32 
    flw     fa4,s10(0)
                    #      new_var temp_13_26:f32 
                    #      temp_13_26 = Add f32 temp_12_26, temp_10_26 
    fadd.s  fa5,fa4,fa3
                    #      store temp_13_26:f32 temp_8_26:ptr->f32 
    fsd     fa5,0(s8)
                    #      mu c1_19:82 
                    #      c1_19 = chi c1_19:82 
                    #      new_var temp_14_26:ptr->f32 
                    #      temp_14_26 = getelementptr c2_19:ptr->f32 [Some(i_21)] 
    li      s11, 0
                    #found literal reg Some(s5) already exist with 1_0
    sd      a0,200(sp)
    mul     a0,s5,s1
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      new_var temp_15_26:ptr->f32 
                    #      new_var temp_16_26:f32 
                    #      temp_15_26 = getelementptr b2_19:ptr->f32 [Some(i_21)] 
    li      s5, 0
    sd      a0,224(sp)
    li      a0, 1
    add     s5,s5,a5
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_16_26 = load temp_15_26:ptr->f32 
    flw     fa6,s5(0)
                    #      new_var temp_17_26:ptr->f32 
                    #      new_var temp_18_26:f32 
                    #      temp_17_26 = getelementptr a2_19:ptr->f32 [Some(i_21)] 
    li      a0, 0
    sd      a1,192(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_18_26 = load temp_17_26:ptr->f32 
    flw     fa7,a0(0)
                    #      new_var temp_19_26:f32 
                    #      temp_19_26 = Add f32 temp_18_26, temp_16_26 
    fadd.s  f8,fa7,fa6
                    #      store temp_19_26:f32 temp_14_26:ptr->f32 
    fsd     f8,0(s11)
                    #      mu c2_19:103 
                    #      c2_19 = chi c2_19:103 
                    #      new_var temp_20_26:i32 
                    #      temp_20_26 = Add i32 i_21, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sd      a0,16(sp)
    add     a0,s1,a1
                    #      i_21 = i32 temp_20_26 
    mv      s1, a0
                    #      jump label: while.head_25 
    sd      s7,96(sp)
    sd      s11,40(sp)
    fsw     f8,8(sp)
    sb      s4,135(sp)
    sd      s9,72(sp)
    sd      s6,112(sp)
    sd      s5,32(sp)
    sw      a0,4(sp)
    ld      a0,200(sp)
    sd      s2,120(sp)
    sd      s8,80(sp)
    fsw     fa2,88(sp)
    fsw     fa5,48(sp)
    fsw     fa1,92(sp)
    fsw     fa3,68(sp)
    fsw     fa7,12(sp)
    sw      s3,136(sp)
    fsw     fa0,108(sp)
    ld      a1,192(sp)
    fsw     fa4,52(sp)
    sd      s10,56(sp)
    fsw     fa6,28(sp)
    j       .while.head_25
                    #regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21, tracked: true } |     s3:Freed { symidx: temp_0_24, tracked: true } |     s4:Freed { symidx: temp_1_24, tracked: true } | 
                    #      label while.exit_25: 
.while.exit_25:
                    #      ret 0_0 
    ld      ra,216(sp)
    ld      s0,208(sp)
    sd      a0,200(sp)
    li      a0, 0
    addi    sp,sp,232
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     s1:Freed { symidx: i_21, tracked: true } |     s3:Freed { symidx: temp_0_24, tracked: true } |     s4:Freed { symidx: temp_1_24, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a0:12|a1:12|a2:12|b0:12|b1:12|b2:12|c0:24|c1:12|c2:12|i:4|temp_21:4|temp_22:1|none:7|temp_23:8|temp_24:4|none:4|temp_25:8|temp_26:4|none:4|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:4|none:4|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|temp_35:4|temp_36:4|x:4|temp_37:4|temp_38:1|none:3|temp_39:8|temp_40:4|temp_41:4|temp_42:4|temp_43:4|temp_44:1|none:7|temp_45:8|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:1|none:7|temp_51:8|temp_52:4|temp_53:4|temp_54:4|none:4
    addi    sp,sp,-352
    sd      ra,344(sp)
    sd      s0,336(sp)
    addi    s0,sp,352
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
                    #      alloc i32 temp_21_40 
                    #      alloc i1 temp_22_40 
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
                    #      alloc ptr->f32 temp_33_42 
                    #      alloc f32 temp_34_42 
                    #      alloc i32 temp_35_42 
                    #      alloc i32 temp_36_33 
                    #      alloc i32 x_33 
                    #      alloc i32 temp_37_52 
                    #      alloc i1 temp_38_52 
                    #      alloc ptr->f32 temp_39_54 
                    #      alloc f32 temp_40_54 
                    #      alloc i32 temp_41_54 
                    #      alloc i32 temp_42_54 
                    #      alloc i32 temp_43_61 
                    #      alloc i1 temp_44_61 
                    #      alloc ptr->f32 temp_45_63 
                    #      alloc f32 temp_46_63 
                    #      alloc i32 temp_47_63 
                    #      alloc i32 temp_48_63 
                    #      alloc i32 temp_49_70 
                    #      alloc i1 temp_50_70 
                    #      alloc ptr->f32 temp_51_72 
                    #      alloc f32 temp_52_72 
                    #      alloc i32 temp_53_72 
                    #      alloc i32 temp_54_72 
                    #regtab 
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
                    #regtab     a4:Freed { symidx: i_33, tracked: true } | 
                    #      label while.head_41: 
.while.head_41:
                    #      new_var temp_21_40:i32 
                    #      temp_21_40 = load *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      a0, M
                    #occupy reg a0 with *M_0
    lw      a1,0(a0)
                    #      new_var temp_22_40:i1 
                    #      temp_22_40 = icmp i32 Slt i_33, temp_21_40 
    slt     a2,a4,a1
                    #      br i1 temp_22_40, label while.body_41, label while.exit_41 
    bnez    a2, .while.body_41
    j       .while.exit_41
                    #regtab     a1:Freed { symidx: temp_21_40, tracked: true } |     a2:Freed { symidx: temp_22_40, tracked: true } |     a4:Freed { symidx: i_33, tracked: true } | 
                    #      label while.body_41: 
.while.body_41:
                    #      new_var temp_23_42:ptr->f32 
                    #      temp_23_42 = getelementptr a0_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      a3, 1
    mul     a5,a3,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_24_42:f32 
                    #      temp_24_42 = sitofp i32 i_33 to f32 
                    #      store temp_24_42:f32 temp_23_42:ptr->f32 
    fsd     fa0,0(a0)
                    #      mu a0_33:153 
                    #      a0_33 = chi a0_33:153 
                    #      new_var temp_25_42:ptr->f32 
                    #      temp_25_42 = getelementptr a1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_26_42:f32 
                    #      temp_26_42 = sitofp i32 i_33 to f32 
                    #      store temp_26_42:f32 temp_25_42:ptr->f32 
    fsd     fa1,0(a6)
                    #      mu a1_33:162 
                    #      a1_33 = chi a1_33:162 
                    #      new_var temp_27_42:ptr->f32 
                    #      temp_27_42 = getelementptr a2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,a4
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_28_42:f32 
                    #      temp_28_42 = sitofp i32 i_33 to f32 
                    #      store temp_28_42:f32 temp_27_42:ptr->f32 
    fsd     fa2,0(s1)
                    #      mu a2_33:171 
                    #      a2_33 = chi a2_33:171 
                    #      new_var temp_29_42:ptr->f32 
                    #      temp_29_42 = getelementptr b0_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s4,a3,a4
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      new_var temp_30_42:f32 
                    #      temp_30_42 = sitofp i32 i_33 to f32 
                    #      store temp_30_42:f32 temp_29_42:ptr->f32 
    fsd     fa3,0(s3)
                    #      mu b0_33:180 
                    #      b0_33 = chi b0_33:180 
                    #      new_var temp_31_42:ptr->f32 
                    #      temp_31_42 = getelementptr b1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s6,a3,a4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      new_var temp_32_42:f32 
                    #      temp_32_42 = sitofp i32 i_33 to f32 
                    #      store temp_32_42:f32 temp_31_42:ptr->f32 
    fsd     fa4,0(s5)
                    #      mu b1_33:189 
                    #      b1_33 = chi b1_33:189 
                    #      new_var temp_33_42:ptr->f32 
                    #      temp_33_42 = getelementptr b2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      s7, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s8,a3,a4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_34_42:f32 
                    #      temp_34_42 = sitofp i32 i_33 to f32 
                    #      store temp_34_42:f32 temp_33_42:ptr->f32 
    fsd     fa5,0(s7)
                    #      mu b2_33:198 
                    #      b2_33 = chi b2_33:198 
                    #      new_var temp_35_42:i32 
                    #      temp_35_42 = Add i32 i_33, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s9,a4,a3
                    #      i_33 = i32 temp_35_42 
    mv      a4, s9
                    #      jump label: while.head_41 
    sd      s7,112(sp)
    fsw     fa5,108(sp)
    sw      a5,332(sp)
    sw      s2,308(sp)
    sd      a0,192(sp)
    sw      s8,272(sp)
    sw      s9,104(sp)
    fsw     fa2,156(sp)
    sw      a1,208(sp)
    fsw     fa0,188(sp)
    fsw     fa4,124(sp)
    sd      s5,128(sp)
    sw      s6,284(sp)
    fsw     fa3,140(sp)
    sw      s4,296(sp)
    sd      a6,176(sp)
    sw      a7,320(sp)
    fsw     fa1,172(sp)
    sd      s3,144(sp)
    sd      s1,160(sp)
    sb      a2,207(sp)
    j       .while.head_41
                    #regtab     a1:Freed { symidx: temp_21_40, tracked: true } |     a2:Freed { symidx: temp_22_40, tracked: true } |     a4:Freed { symidx: i_33, tracked: true } | 
                    #      label while.exit_41: 
.while.exit_41:
                    #      new_var temp_36_33:i32 
                    #      temp_36_33 =  Call i32 add_0(a0_33, a1_33, a2_33, b0_33, b1_33, b2_33, c0_33, c1_33, c2_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,332(sp)
    sw      a1,208(sp)
    lw      a1,320(sp)
    sb      a2,207(sp)
    lw      a2,308(sp)
    lw      a3,296(sp)
    sw      a4,212(sp)
    lw      a4,284(sp)
    lw      a5,272(sp)
    lw      a6,260(sp)
    lw      a7,236(sp)
                    #arg load ended
    call    add
    sw      a0,100(sp)
                    #      i_33 = i32 temp_36_33 
    mv      a1, a0
                    #      new_var x_33:i32 
                    #      jump label: while.head_53 
    j       .while.head_53
                    #regtab     a0:Freed { symidx: temp_36_33, tracked: true } |     a1:Freed { symidx: i_33, tracked: true } | 
                    #      label while.head_53: 
.while.head_53:
                    #      new_var temp_37_52:i32 
                    #      temp_37_52 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a2, N
                    #occupy reg a2 with *N_0
    lw      a3,0(a2)
                    #      new_var temp_38_52:i1 
                    #      temp_38_52 = icmp i32 Slt i_33, temp_37_52 
    slt     a4,a1,a3
                    #      br i1 temp_38_52, label while.body_53, label while.exit_53 
    bnez    a4, .while.body_53
    j       .while.exit_53
                    #regtab     a0:Freed { symidx: temp_36_33, tracked: true } |     a1:Freed { symidx: i_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } | 
                    #      label while.body_53: 
.while.body_53:
                    #      new_var temp_39_54:ptr->f32 
                    #      new_var temp_40_54:f32 
                    #      temp_39_54 = getelementptr c0_33:Array:f32:[Some(6_0)] [Some(i_33)] 
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_40_54 = load temp_39_54:ptr->f32 
    flw     fa0,a2(0)
                    #      new_var temp_41_54:i32 
                    #      temp_41_54 = fptosi f32 temp_40_54 to i32 
                    #      x_33 = i32 temp_41_54 
    mv      s1, a7
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
    sw      s1,96(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    lw      a0,96(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_42_54:i32 
                    #      temp_42_54 = Add i32 i_33, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     a0,a1,a5
                    #      i_33 = i32 temp_42_54 
    mv      a1, a0
                    #      jump label: while.head_53 
    sw      a3,92(sp)
    sw      a0,68(sp)
    lw      a0,100(sp)
    sb      a4,91(sp)
    fsw     fa0,76(sp)
    sw      a6,260(sp)
    sw      a7,72(sp)
    sd      a2,80(sp)
    j       .while.head_53
                    #regtab     a0:Freed { symidx: temp_36_33, tracked: true } |     a1:Freed { symidx: i_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } | 
                    #      label while.exit_53: 
.while.exit_53:
                    #      x_33 = i32 10_0 
    li      a2, 10
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      i_33 = i32 0_0 
                    #      jump label: while.head_62 
    j       .while.head_62
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } | 
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_43_61:i32 
                    #      temp_43_61 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a5,0(a0)
                    #      new_var temp_44_61:i1 
                    #      temp_44_61 = icmp i32 Slt i_33, temp_43_61 
    slt     a6,a1,a5
                    #      br i1 temp_44_61, label while.body_62, label while.exit_62 
    bnez    a6, .while.body_62
    j       .while.exit_62
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } | 
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_45_63:ptr->f32 
                    #      new_var temp_46_63:f32 
                    #      temp_45_63 = getelementptr c1_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      a7, 1
    mul     s1,a7,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_46_63 = load temp_45_63:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_47_63:i32 
                    #      temp_47_63 = fptosi f32 temp_46_63 to i32 
                    #      x_33 = i32 temp_47_63 
    mv      a2, s2
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
    sw      s1,236(sp)
    sw      s2,40(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,48(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_48_63:i32 
                    #      temp_48_63 = Add i32 i_33, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     a0,a1,a7
                    #      i_33 = i32 temp_48_63 
    mv      a1, a0
                    #      jump label: while.head_62 
    sw      a5,64(sp)
    sw      a0,36(sp)
    fsw     fa0,44(sp)
    sb      a6,63(sp)
    j       .while.head_62
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } | 
                    #      label while.exit_62: 
.while.exit_62:
                    #      x_33 = i32 10_0 
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      i_33 = i32 0_0 
                    #      jump label: while.head_71 
    j       .while.head_71
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } | 
                    #      label while.head_71: 
.while.head_71:
                    #      new_var temp_49_70:i32 
                    #      temp_49_70 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a7,0(a0)
                    #      new_var temp_50_70:i1 
                    #      temp_50_70 = icmp i32 Slt i_33, temp_49_70 
    slt     s1,a1,a7
                    #      br i1 temp_50_70, label while.body_71, label while.exit_71 
    bnez    s1, .while.body_71
    j       .while.exit_71
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } |     a7:Freed { symidx: temp_49_70, tracked: true } |     s1:Freed { symidx: temp_50_70, tracked: true } | 
                    #      label while.body_71: 
.while.body_71:
                    #      new_var temp_51_72:ptr->f32 
                    #      new_var temp_52_72:f32 
                    #      temp_51_72 = getelementptr c2_33:Array:f32:[Some(3_0)] [Some(i_33)] 
    li      a0, 0
    li      s2, 1
    mul     s3,s2,a1
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_52_72 = load temp_51_72:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_53_72:i32 
                    #      temp_53_72 = fptosi f32 temp_52_72 to i32 
                    #      x_33 = i32 temp_53_72 
    mv      a2, s4
                    #       Call void putint_0(x_33) 
                    #saved register dumping to mem
    sb      s1,31(sp)
    sw      s3,224(sp)
    sw      s4,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,16(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_54_72:i32 
                    #      temp_54_72 = Add i32 i_33, 1_0 
    li      a0, 1
    add     s1,a1,a0
                    #      i_33 = i32 temp_54_72 
    mv      a1, s1
                    #      jump label: while.head_71 
    fsw     fa0,12(sp)
    sw      a7,32(sp)
    sw      s1,4(sp)
    j       .while.head_71
                    #regtab     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } |     a7:Freed { symidx: temp_49_70, tracked: true } |     s1:Freed { symidx: temp_50_70, tracked: true } | 
                    #      label while.exit_71: 
.while.exit_71:
                    #      x_33 = i32 10_0 
                    #       Call void putch_0(x_33) 
                    #saved register dumping to mem
    sb      s1,31(sp)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,344(sp)
    ld      s0,336(sp)
    li      a0, 0
    addi    sp,sp,352
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: i_33, tracked: true } |     a2:Freed { symidx: x_33, tracked: true } |     a3:Freed { symidx: temp_37_52, tracked: true } |     a4:Freed { symidx: temp_38_52, tracked: true } |     a5:Freed { symidx: temp_43_61, tracked: true } |     a6:Freed { symidx: temp_44_61, tracked: true } |     a7:Freed { symidx: temp_49_70, tracked: true } | 
.section
    .data
    .align 4
    .globl N
                    #      global i32 N_0 
    .type N,@object
N:
    .word 0
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
