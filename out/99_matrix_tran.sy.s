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
                    #      Define tran_0 [a0_19, a1_19, a2_19, b0_19, b1_19, b2_19, c0_19, c1_19, c2_19] -> tran_ret_0 
    .globl tran
    .type tran,@function
tran:
                    #mem layout:|c2:8|ra_tran:8|s0_tran:8|a0:8|a1:8|a2:8|b0:8|b1:8|b2:8|c0:8|c1:8|i:4|none:4|temp_0:8|temp_1:8|temp_2:4|none:4|temp_3:8|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:8|temp_8:4|none:4|temp_9:8|temp_10:8|temp_11:4|none:4|temp_12:8|temp_13:8|temp_14:4|none:4|temp_15:8|temp_16:8|temp_17:4|none:4|temp_18:8|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:8|temp_23:4|none:4|temp_24:8|temp_25:8|temp_26:4|none:4
    addi    sp,sp,-312
    sd      ra,296(sp)
    sd      s0,288(sp)
    addi    s0,sp,312
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
                    #      alloc ptr->f32 temp_0_21 
                    #      alloc ptr->f32 temp_1_21 
                    #      alloc f32 temp_2_21 
                    #      alloc ptr->f32 temp_3_21 
                    #      alloc ptr->f32 temp_4_21 
                    #      alloc f32 temp_5_21 
                    #      alloc ptr->f32 temp_6_21 
                    #      alloc ptr->f32 temp_7_21 
                    #      alloc f32 temp_8_21 
                    #      alloc ptr->f32 temp_9_21 
                    #      alloc ptr->f32 temp_10_21 
                    #      alloc f32 temp_11_21 
                    #      alloc ptr->f32 temp_12_21 
                    #      alloc ptr->f32 temp_13_21 
                    #      alloc f32 temp_14_21 
                    #      alloc ptr->f32 temp_15_21 
                    #      alloc ptr->f32 temp_16_21 
                    #      alloc f32 temp_17_21 
                    #      alloc ptr->f32 temp_18_21 
                    #      alloc ptr->f32 temp_19_21 
                    #      alloc f32 temp_20_21 
                    #      alloc ptr->f32 temp_21_21 
                    #      alloc ptr->f32 temp_22_21 
                    #      alloc f32 temp_23_21 
                    #      alloc ptr->f32 temp_24_21 
                    #      alloc ptr->f32 temp_25_21 
                    #      alloc f32 temp_26_21 
                    #regtab     a0:Freed { symidx: a0_19, tracked: true } |     a1:Freed { symidx: a1_19, tracked: true } |     a2:Freed { symidx: a2_19, tracked: true } |     a3:Freed { symidx: b0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } | 
                    #      label L1_0: 
.L1_0:
                    #      new_var i_21:i32 
                    #      i_21 = i32 0_0 
    li      s1, 0
                    #      new_var temp_0_21:ptr->f32 
                    #      temp_0_21 = getelementptr c1_19:ptr->f32 [Some(2_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 2
    add     s2,s2,a7
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      new_var temp_1_21:ptr->f32 
                    #      new_var temp_2_21:f32 
                    #      temp_1_21 = getelementptr a2_19:ptr->f32 [Some(1_0)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s6, 1
    add     s5,s5,a2
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_2_21 = load temp_1_21:ptr->f32 
    flw     fa0,s5(0)
                    #      store temp_2_21:f32 temp_0_21:ptr->f32 
    fsd     fa0,0(s2)
                    #      mu c1_19:41 
                    #      c1_19 = chi c1_19:41 
                    #      new_var temp_3_21:ptr->f32 
                    #      temp_3_21 = getelementptr c2_19:ptr->f32 [Some(1_0)] 
    li      s7, 0
                    #found literal reg Some(s6) already exist with 1_0
                    #found literal reg Some(s3) already exist with 1_0
    mul     s8,s6,s3
    add     s7,s7,s8
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_4_21:ptr->f32 
                    #      new_var temp_5_21:f32 
                    #      temp_4_21 = getelementptr a1_19:ptr->f32 [Some(2_0)] 
    li      s9, 0
                    #found literal reg Some(s6) already exist with 1_0
                    #found literal reg Some(s4) already exist with 2_0
    add     s9,s9,a1
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_5_21 = load temp_4_21:ptr->f32 
    flw     fa1,s9(0)
                    #      store temp_5_21:f32 temp_3_21:ptr->f32 
    fsd     fa1,0(s7)
                    #      mu c2_19:53 
                    #      c2_19 = chi c2_19:53 
                    #      new_var temp_6_21:ptr->f32 
                    #      temp_6_21 = getelementptr c0_19:ptr->f32 [Some(1_0)] 
    li      s10, 0
                    #found literal reg Some(s6) already exist with 1_0
                    #found literal reg Some(s3) already exist with 1_0
    add     s10,s10,a6
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_7_21:ptr->f32 
                    #      new_var temp_8_21:f32 
                    #      temp_7_21 = getelementptr a1_19:ptr->f32 [Some(0_0)] 
    li      s11, 0
                    #found literal reg Some(s6) already exist with 1_0
    li      s3, 0
    add     s11,s11,a1
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_8_21 = load temp_7_21:ptr->f32 
    flw     fa2,s11(0)
                    #      store temp_8_21:f32 temp_6_21:ptr->f32 
    fsd     fa2,0(s10)
                    #      mu c0_19:65 
                    #      c0_19 = chi c0_19:65 
                    #      new_var temp_9_21:ptr->f32 
                    #      temp_9_21 = getelementptr c0_19:ptr->f32 [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s6) already exist with 1_0
                    #found literal reg Some(s4) already exist with 2_0
    add     s3,s3,a6
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      new_var temp_10_21:ptr->f32 
                    #      new_var temp_11_21:f32 
                    #      temp_10_21 = getelementptr a2_19:ptr->f32 [Some(0_0)] 
    li      s4, 0
                    #found literal reg Some(s6) already exist with 1_0
    sd      a0,280(sp)
    li      a0, 0
    add     s4,s4,a2
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_11_21 = load temp_10_21:ptr->f32 
    flw     fa3,s4(0)
                    #      store temp_11_21:f32 temp_9_21:ptr->f32 
    fsd     fa3,0(s3)
                    #      mu c0_19:77 
                    #      c0_19 = chi c0_19:77 
                    #      new_var temp_12_21:ptr->f32 
                    #      temp_12_21 = getelementptr c1_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(s6) already exist with 1_0
    sd      a1,272(sp)
    li      a1, 0
    add     a0,a0,a7
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_13_21:ptr->f32 
                    #      new_var temp_14_21:f32 
                    #      temp_13_21 = getelementptr a0_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
                    #found literal reg Some(s6) already exist with 1_0
    sd      a0,112(sp)
    li      a0, 1
    sd      a2,264(sp)
    mul     a2,s6,a0
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_14_21 = load temp_13_21:ptr->f32 
    flw     fa4,a1(0)
                    #      store temp_14_21:f32 temp_12_21:ptr->f32 
    fsd     fa4,0(a0)
                    #      mu c1_19:89 
                    #      c1_19 = chi c1_19:89 
                    #      new_var temp_15_21:ptr->f32 
                    #      temp_15_21 = getelementptr c2_19:ptr->f32 [Some(0_0)] 
    li      s6, 0
    sd      a0,112(sp)
    li      a0, 1
    sd      a1,104(sp)
    li      a1, 0
    add     s6,s6,s8
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      new_var temp_16_21:ptr->f32 
                    #      new_var temp_17_21:f32 
                    #      temp_16_21 = getelementptr a0_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,280(sp)
    li      a2, 2
    sd      a3,256(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_17_21 = load temp_16_21:ptr->f32 
    flw     fa5,a0(0)
                    #      store temp_17_21:f32 temp_15_21:ptr->f32 
    fsd     fa5,0(s6)
                    #      mu c2_19:101 
                    #      c2_19 = chi c2_19:101 
                    #      new_var temp_18_21:ptr->f32 
                    #      temp_18_21 = getelementptr c1_19:ptr->f32 [Some(1_0)] 
    li      a1, 0
    li      a2, 1
    sd      a0,80(sp)
    li      a0, 1
    add     a1,a1,a7
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_19_21:ptr->f32 
                    #      new_var temp_20_21:f32 
                    #      temp_19_21 = getelementptr a1_19:ptr->f32 [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    sd      a1,64(sp)
    li      a1, 1
    sd      a3,280(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_20_21 = load temp_19_21:ptr->f32 
    flw     fa6,a0(0)
                    #      store temp_20_21:f32 temp_18_21:ptr->f32 
    fsd     fa6,0(a1)
                    #      mu c1_19:113 
                    #      c1_19 = chi c1_19:113 
                    #      new_var temp_21_21:ptr->f32 
                    #      temp_21_21 = getelementptr c2_19:ptr->f32 [Some(2_0)] 
    li      a2, 0
    sd      a0,56(sp)
    li      a0, 1
    sd      a1,64(sp)
    li      a1, 2
    add     a2,a2,s8
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_22_21:ptr->f32 
                    #      new_var temp_23_21:f32 
                    #      temp_22_21 = getelementptr a2_19:ptr->f32 [Some(2_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,40(sp)
    li      a2, 2
    sd      a3,272(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_23_21 = load temp_22_21:ptr->f32 
    flw     fa7,a0(0)
                    #      store temp_23_21:f32 temp_21_21:ptr->f32 
    fsd     fa7,0(a1)
                    #      mu c2_19:125 
                    #      c2_19 = chi c2_19:125 
                    #      new_var temp_24_21:ptr->f32 
                    #      temp_24_21 = getelementptr c0_19:ptr->f32 [Some(0_0)] 
    li      a2, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,40(sp)
    li      a1, 0
    add     a2,a2,a6
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_25_21:ptr->f32 
                    #      new_var temp_26_21:f32 
                    #      temp_25_21 = getelementptr a0_19:ptr->f32 [Some(0_0)] 
    li      a0, 0
    li      a1, 1
    sd      a2,16(sp)
    li      a2, 0
    sd      a3,264(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_26_21 = load temp_25_21:ptr->f32 
    flw     f8,a0(0)
                    #      store temp_26_21:f32 temp_24_21:ptr->f32 
    fsd     f8,0(a1)
                    #      mu c0_19:137 
                    #      c0_19 = chi c0_19:137 
                    #      ret 0_0 
    ld      ra,296(sp)
    ld      s0,288(sp)
    sd      a0,8(sp)
    li      a0, 0
    addi    sp,sp,312
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: temp_24_21, tracked: true } |     a2:Freed { symidx: 0_0, tracked: false } |     a3:Freed { symidx: a0_19, tracked: true } |     a4:Freed { symidx: b1_19, tracked: true } |     a5:Freed { symidx: b2_19, tracked: true } |     a6:Freed { symidx: c0_19, tracked: true } |     a7:Freed { symidx: c1_19, tracked: true } |     f8:Freed { symidx: temp_26_21, tracked: true } |     fa0:Freed { symidx: temp_2_21, tracked: true } |     fa1:Freed { symidx: temp_5_21, tracked: true } |     fa2:Freed { symidx: temp_8_21, tracked: true } |     fa3:Freed { symidx: temp_11_21, tracked: true } |     fa4:Freed { symidx: temp_14_21, tracked: true } |     fa5:Freed { symidx: temp_17_21, tracked: true } |     fa6:Freed { symidx: temp_20_21, tracked: true } |     fa7:Freed { symidx: temp_23_21, tracked: true } |     s10:Freed { symidx: temp_6_21, tracked: true } |     s11:Freed { symidx: temp_7_21, tracked: true } |     s1:Freed { symidx: i_21, tracked: true } |     s2:Freed { symidx: temp_0_21, tracked: true } |     s3:Freed { symidx: temp_9_21, tracked: true } |     s4:Freed { symidx: temp_10_21, tracked: true } |     s5:Freed { symidx: temp_1_21, tracked: true } |     s6:Freed { symidx: temp_15_21, tracked: true } |     s7:Freed { symidx: temp_3_21, tracked: true } |     s8:Freed { symidx: c2_19, tracked: true } |     s9:Freed { symidx: temp_4_21, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a0:12|a1:12|a2:12|b0:12|b1:12|b2:12|c0:24|c1:12|c2:12|i:4|temp_27:4|temp_28:1|none:7|temp_29:8|temp_30:4|none:4|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|none:4|temp_35:8|temp_36:4|none:4|temp_37:8|temp_38:4|none:4|temp_39:8|temp_40:4|temp_41:4|temp_42:4|x:4|temp_43:4|temp_44:1|none:3|temp_45:8|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:1|none:7|temp_51:8|temp_52:4|temp_53:4|temp_54:4|temp_55:4|temp_56:1|none:7|temp_57:8|temp_58:4|temp_59:4|temp_60:4|none:4
    addi    sp,sp,-352
    sd      ra,344(sp)
    sd      s0,336(sp)
    addi    s0,sp,352
                    #      alloc Array:f32:[Some(3_0)] a0_35 
                    #      alloc Array:f32:[Some(3_0)] a1_35 
                    #      alloc Array:f32:[Some(3_0)] a2_35 
                    #      alloc Array:f32:[Some(3_0)] b0_35 
                    #      alloc Array:f32:[Some(3_0)] b1_35 
                    #      alloc Array:f32:[Some(3_0)] b2_35 
                    #      alloc Array:f32:[Some(6_0)] c0_35 
                    #      alloc Array:f32:[Some(3_0)] c1_35 
                    #      alloc Array:f32:[Some(3_0)] c2_35 
                    #      alloc i32 i_35 
                    #      alloc i32 temp_27_42 
                    #      alloc i1 temp_28_42 
                    #      alloc ptr->f32 temp_29_44 
                    #      alloc f32 temp_30_44 
                    #      alloc ptr->f32 temp_31_44 
                    #      alloc f32 temp_32_44 
                    #      alloc ptr->f32 temp_33_44 
                    #      alloc f32 temp_34_44 
                    #      alloc ptr->f32 temp_35_44 
                    #      alloc f32 temp_36_44 
                    #      alloc ptr->f32 temp_37_44 
                    #      alloc f32 temp_38_44 
                    #      alloc ptr->f32 temp_39_44 
                    #      alloc f32 temp_40_44 
                    #      alloc i32 temp_41_44 
                    #      alloc i32 temp_42_35 
                    #      alloc i32 x_35 
                    #      alloc i32 temp_43_54 
                    #      alloc i1 temp_44_54 
                    #      alloc ptr->f32 temp_45_56 
                    #      alloc f32 temp_46_56 
                    #      alloc i32 temp_47_56 
                    #      alloc i32 temp_48_56 
                    #      alloc i32 temp_49_63 
                    #      alloc i1 temp_50_63 
                    #      alloc ptr->f32 temp_51_65 
                    #      alloc f32 temp_52_65 
                    #      alloc i32 temp_53_65 
                    #      alloc i32 temp_54_65 
                    #      alloc i32 temp_55_72 
                    #      alloc i1 temp_56_72 
                    #      alloc ptr->f32 temp_57_74 
                    #      alloc f32 temp_58_74 
                    #      alloc i32 temp_59_74 
                    #      alloc i32 temp_60_74 
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
                    #      new_var a0_35:Array:f32:[Some(3_0)] 
                    #      new_var a1_35:Array:f32:[Some(3_0)] 
                    #      new_var a2_35:Array:f32:[Some(3_0)] 
                    #      new_var b0_35:Array:f32:[Some(3_0)] 
                    #      new_var b1_35:Array:f32:[Some(3_0)] 
                    #      new_var b2_35:Array:f32:[Some(3_0)] 
                    #      new_var c0_35:Array:f32:[Some(6_0)] 
                    #      new_var c1_35:Array:f32:[Some(3_0)] 
                    #      new_var c2_35:Array:f32:[Some(3_0)] 
                    #      new_var i_35:i32 
                    #      i_35 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_43 
    j       .while.head_43
                    #regtab     a4:Freed { symidx: i_35, tracked: true } | 
                    #      label while.head_43: 
.while.head_43:
                    #      new_var temp_27_42:i32 
                    #      temp_27_42 = load *M_0:ptr->i32 
                    #   load label M as ptr to reg
    la      a0, M
                    #occupy reg a0 with *M_0
    lw      a1,0(a0)
                    #      new_var temp_28_42:i1 
                    #      temp_28_42 = icmp i32 Slt i_35, temp_27_42 
    slt     a2,a4,a1
                    #      br i1 temp_28_42, label while.body_43, label while.exit_43 
    bnez    a2, .while.body_43
    j       .while.exit_43
                    #regtab     a1:Freed { symidx: temp_27_42, tracked: true } |     a2:Freed { symidx: temp_28_42, tracked: true } |     a4:Freed { symidx: i_35, tracked: true } | 
                    #      label while.body_43: 
.while.body_43:
                    #      new_var temp_29_44:ptr->f32 
                    #      temp_29_44 = getelementptr a0_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      a3, 1
    mul     a5,a3,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_30_44:f32 
                    #      temp_30_44 = sitofp i32 i_35 to f32 
                    #      store temp_30_44:f32 temp_29_44:ptr->f32 
    fsd     fa0,0(a0)
                    #      mu a0_35:183 
                    #      a0_35 = chi a0_35:183 
                    #      new_var temp_31_44:ptr->f32 
                    #      temp_31_44 = getelementptr a1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_32_44:f32 
                    #      temp_32_44 = sitofp i32 i_35 to f32 
                    #      store temp_32_44:f32 temp_31_44:ptr->f32 
    fsd     fa1,0(a6)
                    #      mu a1_35:192 
                    #      a1_35 = chi a1_35:192 
                    #      new_var temp_33_44:ptr->f32 
                    #      temp_33_44 = getelementptr a2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,a4
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_34_44:f32 
                    #      temp_34_44 = sitofp i32 i_35 to f32 
                    #      store temp_34_44:f32 temp_33_44:ptr->f32 
    fsd     fa2,0(s1)
                    #      mu a2_35:201 
                    #      a2_35 = chi a2_35:201 
                    #      new_var temp_35_44:ptr->f32 
                    #      temp_35_44 = getelementptr b0_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s4,a3,a4
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      new_var temp_36_44:f32 
                    #      temp_36_44 = sitofp i32 i_35 to f32 
                    #      store temp_36_44:f32 temp_35_44:ptr->f32 
    fsd     fa3,0(s3)
                    #      mu b0_35:210 
                    #      b0_35 = chi b0_35:210 
                    #      new_var temp_37_44:ptr->f32 
                    #      temp_37_44 = getelementptr b1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s6,a3,a4
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      new_var temp_38_44:f32 
                    #      temp_38_44 = sitofp i32 i_35 to f32 
                    #      store temp_38_44:f32 temp_37_44:ptr->f32 
    fsd     fa4,0(s5)
                    #      mu b1_35:219 
                    #      b1_35 = chi b1_35:219 
                    #      new_var temp_39_44:ptr->f32 
                    #      temp_39_44 = getelementptr b2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      s7, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s8,a3,a4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      new_var temp_40_44:f32 
                    #      temp_40_44 = sitofp i32 i_35 to f32 
                    #      store temp_40_44:f32 temp_39_44:ptr->f32 
    fsd     fa5,0(s7)
                    #      mu b2_35:228 
                    #      b2_35 = chi b2_35:228 
                    #      new_var temp_41_44:i32 
                    #      temp_41_44 = Add i32 i_35, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s9,a4,a3
                    #      i_35 = i32 temp_41_44 
    mv      a4, s9
                    #      jump label: while.head_43 
    sb      a2,207(sp)
    fsw     fa1,172(sp)
    sw      s6,284(sp)
    sd      s7,112(sp)
    sw      a5,332(sp)
    sw      a1,208(sp)
    sw      s4,296(sp)
    sd      a6,176(sp)
    sw      a7,320(sp)
    sd      s5,128(sp)
    fsw     fa4,124(sp)
    sd      a0,192(sp)
    fsw     fa0,188(sp)
    sw      s2,308(sp)
    fsw     fa2,156(sp)
    sw      s8,272(sp)
    sd      s1,160(sp)
    sw      s9,104(sp)
    fsw     fa3,140(sp)
    fsw     fa5,108(sp)
    sd      s3,144(sp)
    j       .while.head_43
                    #regtab     a1:Freed { symidx: temp_27_42, tracked: true } |     a2:Freed { symidx: temp_28_42, tracked: true } |     a4:Freed { symidx: i_35, tracked: true } | 
                    #      label while.exit_43: 
.while.exit_43:
                    #      new_var temp_42_35:i32 
                    #      temp_42_35 =  Call i32 tran_0(a0_35, a1_35, a2_35, b0_35, b1_35, b2_35, c0_35, c1_35, c2_35) 
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
    call    tran
    sw      a0,100(sp)
                    #      i_35 = i32 temp_42_35 
    mv      a1, a0
                    #      new_var x_35:i32 
                    #      jump label: while.head_55 
    j       .while.head_55
                    #regtab     a0:Freed { symidx: temp_42_35, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } | 
                    #      label while.head_55: 
.while.head_55:
                    #      new_var temp_43_54:i32 
                    #      temp_43_54 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a2, N
                    #occupy reg a2 with *N_0
    lw      a3,0(a2)
                    #      new_var temp_44_54:i1 
                    #      temp_44_54 = icmp i32 Slt i_35, temp_43_54 
    slt     a4,a1,a3
                    #      br i1 temp_44_54, label while.body_55, label while.exit_55 
    bnez    a4, .while.body_55
    j       .while.exit_55
                    #regtab     a0:Freed { symidx: temp_42_35, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } | 
                    #      label while.body_55: 
.while.body_55:
                    #      new_var temp_45_56:ptr->f32 
                    #      new_var temp_46_56:f32 
                    #      temp_45_56 = getelementptr c0_35:Array:f32:[Some(6_0)] [Some(i_35)] 
    li      a2, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_46_56 = load temp_45_56:ptr->f32 
    flw     fa0,a2(0)
                    #      new_var temp_47_56:i32 
                    #      temp_47_56 = fptosi f32 temp_46_56 to i32 
                    #      x_35 = i32 temp_47_56 
    mv      s1, a7
                    #       Call void putint_0(x_35) 
                    #saved register dumping to mem
    sw      s1,96(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    lw      a0,96(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_48_56:i32 
                    #      temp_48_56 = Add i32 i_35, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     a0,a1,a5
                    #      i_35 = i32 temp_48_56 
    mv      a1, a0
                    #      jump label: while.head_55 
    sd      a2,80(sp)
    sw      a3,92(sp)
    sw      a6,260(sp)
    sw      a7,72(sp)
    sb      a4,91(sp)
    sw      a0,68(sp)
    lw      a0,100(sp)
    fsw     fa0,76(sp)
    j       .while.head_55
                    #regtab     a0:Freed { symidx: temp_42_35, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } | 
                    #      label while.exit_55: 
.while.exit_55:
                    #      x_35 = i32 10_0 
    li      a2, 10
                    #       Call void putch_0(x_35) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      i_35 = i32 0_0 
                    #      jump label: while.head_64 
    j       .while.head_64
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } | 
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_49_63:i32 
                    #      temp_49_63 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a5,0(a0)
                    #      new_var temp_50_63:i1 
                    #      temp_50_63 = icmp i32 Slt i_35, temp_49_63 
    slt     a6,a1,a5
                    #      br i1 temp_50_63, label while.body_64, label while.exit_64 
    bnez    a6, .while.body_64
    j       .while.exit_64
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } | 
                    #      label while.body_64: 
.while.body_64:
                    #      new_var temp_51_65:ptr->f32 
                    #      new_var temp_52_65:f32 
                    #      temp_51_65 = getelementptr c1_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      a7, 1
    mul     s1,a7,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_52_65 = load temp_51_65:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_53_65:i32 
                    #      temp_53_65 = fptosi f32 temp_52_65 to i32 
                    #      x_35 = i32 temp_53_65 
    mv      a2, s2
                    #       Call void putint_0(x_35) 
                    #saved register dumping to mem
    sw      s1,236(sp)
    sw      s2,40(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,48(sp)
    mv      a0, a2
                    #arg load ended
    call    putint
                    #      new_var temp_54_65:i32 
                    #      temp_54_65 = Add i32 i_35, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     a0,a1,a7
                    #      i_35 = i32 temp_54_65 
    mv      a1, a0
                    #      jump label: while.head_64 
    sw      a5,64(sp)
    sb      a6,63(sp)
    sw      a0,36(sp)
    fsw     fa0,44(sp)
    j       .while.head_64
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } | 
                    #      label while.exit_64: 
.while.exit_64:
                    #      x_35 = i32 10_0 
                    #      i_35 = i32 0_0 
                    #       Call void putch_0(x_35) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putch
                    #      jump label: while.head_73 
    j       .while.head_73
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } | 
                    #      label while.head_73: 
.while.head_73:
                    #      new_var temp_55_72:i32 
                    #      temp_55_72 = load *N_0:ptr->i32 
                    #   load label N as ptr to reg
    la      a0, N
                    #occupy reg a0 with *N_0
    lw      a7,0(a0)
                    #      new_var temp_56_72:i1 
                    #      temp_56_72 = icmp i32 Slt i_35, temp_55_72 
    slt     s1,a1,a7
                    #      br i1 temp_56_72, label while.body_73, label while.exit_73 
    bnez    s1, .while.body_73
    j       .while.exit_73
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } |     a7:Freed { symidx: temp_55_72, tracked: true } |     s1:Freed { symidx: temp_56_72, tracked: true } | 
                    #      label while.body_73: 
.while.body_73:
                    #      new_var temp_57_74:ptr->f32 
                    #      new_var temp_58_74:f32 
                    #      temp_57_74 = getelementptr c2_35:Array:f32:[Some(3_0)] [Some(i_35)] 
    li      a0, 0
    li      s2, 1
    mul     s3,s2,a1
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_58_74 = load temp_57_74:ptr->f32 
    flw     fa0,a0(0)
                    #      new_var temp_59_74:i32 
                    #      temp_59_74 = fptosi f32 temp_58_74 to i32 
                    #      x_35 = i32 temp_59_74 
    mv      a2, s4
                    #       Call void putint_0(x_35) 
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
                    #      new_var temp_60_74:i32 
                    #      temp_60_74 = Add i32 i_35, 1_0 
    li      a0, 1
    add     s1,a1,a0
                    #      i_35 = i32 temp_60_74 
    mv      a1, s1
                    #      jump label: while.head_73 
    sw      a7,32(sp)
    fsw     fa0,12(sp)
    sw      s1,4(sp)
    j       .while.head_73
                    #regtab     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } |     a7:Freed { symidx: temp_55_72, tracked: true } |     s1:Freed { symidx: temp_56_72, tracked: true } | 
                    #      label while.exit_73: 
.while.exit_73:
                    #      x_35 = i32 10_0 
                    #       Call void putch_0(x_35) 
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
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: x_35, tracked: true } |     a3:Freed { symidx: temp_43_54, tracked: true } |     a4:Freed { symidx: temp_44_54, tracked: true } |     a5:Freed { symidx: temp_49_63, tracked: true } |     a6:Freed { symidx: temp_50_63, tracked: true } |     a7:Freed { symidx: temp_55_72, tracked: true } | 
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
