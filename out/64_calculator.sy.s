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
                    #      Define isdigit_0 [x_24] -> isdigit_ret_0 
    .globl isdigit
    .type isdigit,@function
isdigit:
                    #mem layout:|ra_isdigit:8|s0_isdigit:8|x:4|temp_0:1|temp_1:1|temp_2:1|none:1
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_0_27 
                    #      alloc i1 temp_1_27 
                    #      alloc i1 temp_2_27 
                    #      label L30_0: 
.L30_0:
                    #      new_var temp_0_27:i1 
                    #      temp_0_27 = icmp i32 Sle 57_0, x_24 
    li      a1, 57
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      new_var temp_1_27:i1 
                    #      temp_1_27 = icmp i32 Sge x_24, 48_0 
    li      a3, 48
    slt     a4,a0,a3
    xori    a4,a4,1
                    #      new_var temp_2_27:i1 
                    #      temp_2_27 = And i1 temp_1_27, temp_0_27 
    and     a5,a4,a2
                    #      br i1 temp_2_27, label branch_true_28, label branch_false_28 
    bnez    a5, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #      label branch_false_28: 
.branch_false_28:
                    #      label L31_0: 
.L31_0:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      Define power_0 [b_31, a_31] -> power_ret_0 
    .globl power
    .type power,@function
power:
                    #mem layout:|ra_power:8|s0_power:8|b:4|a:4|result:4|temp_3:1|none:3|temp_4:4|temp_5:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 result_33 
                    #      alloc i1 temp_3_35 
                    #      alloc i32 temp_4_37 
                    #      alloc i32 temp_5_37 
                    #      label L29_0: 
.L29_0:
                    #      result_33 = i32 1_0 
    li      a2, 1
                    #      jump label: while.head_36 
    j       .while.head_36
                    #      label while.head_36: 
.while.head_36:
                    #      new_var temp_3_35:i1 
                    #      temp_3_35 = icmp i32 Ne a_31, 0_0 
    li      a3, 0
    xor     a4,a1,a3
    snez    a4, a4
                    #      br i1 temp_3_35, label while.body_36, label while.exit_36 
    bnez    a4, .while.body_36
    j       .while.exit_36
                    #      label while.body_36: 
.while.body_36:
                    #      new_var temp_4_37:i32 
                    #      temp_4_37 = Mul i32 result_33, b_31 
    mul     a3,a2,a0
                    #      result_33 = i32 temp_4_37 
    mv      a2, a3
                    #      new_var temp_5_37:i32 
                    #      temp_5_37 = Sub i32 a_31, 1_0 
    li      a5, 1
    sub     a6,a1,a5
                    #      a_31 = i32 temp_5_37 
    mv      a1, a6
                    #      jump label: while.head_36 
    sb      a4,11(sp)
    sw      a3,4(sp)
    sw      a6,0(sp)
    j       .while.head_36
                    #      label while.exit_36: 
.while.exit_36:
                    #      ret result_33 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a2,12(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
                    #      Define getstr_0 [get_41] -> getstr_ret_0 
    .globl getstr
    .type getstr,@function
getstr:
                    #mem layout:|ra_getstr:8|s0_getstr:8|get:8|temp_6:4|x:4|length:4|temp_7:1|temp_8:1|temp_9:1|none:1|temp_10:8|temp_11:4|temp_12:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      new_var get_41:ptr->i32 
                    #      alloc i32 temp_6_43 
                    #      alloc i32 x_43 
                    #      alloc i32 length_43 
                    #      alloc i1 temp_7_46 
                    #      alloc i1 temp_8_46 
                    #      alloc i1 temp_9_46 
                    #      alloc ptr->i32 temp_10_48 
                    #      alloc i32 temp_11_48 
                    #      alloc i32 temp_12_48 
                    #      label L28_0: 
.L28_0:
                    #      new_var temp_6_43:i32 
                    #      temp_6_43 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sd      a0,32(sp)
    sw      a0,28(sp)
                    #      x_43 = i32 temp_6_43 
    mv      a1, a0
                    #      length_43 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_47 
    j       .while.head_47
                    #      label while.head_47: 
.while.head_47:
                    #      new_var temp_7_46:i1 
                    #      temp_7_46 = icmp i32 Ne 10_0, x_43 
    li      a3, 10
    xor     a4,a3,a1
    snez    a4, a4
                    #      new_var temp_8_46:i1 
                    #      temp_8_46 = icmp i32 Ne x_43, 13_0 
    li      a5, 13
    xor     a6,a1,a5
    snez    a6, a6
                    #      new_var temp_9_46:i1 
                    #      temp_9_46 = And i1 temp_8_46, temp_7_46 
    and     a7,a6,a4
                    #      br i1 temp_9_46, label while.body_47, label while.exit_47 
    bnez    a7, .while.body_47
    j       .while.exit_47
                    #      label while.body_47: 
.while.body_47:
                    #      new_var temp_10_48:ptr->i32 
                    #      temp_10_48 = getelementptr get_41:ptr->i32 [Some(length_43)] 
    li      a3, 0
    li      a5, 1
    mul     s1,a5,a2
    add     a3,a3,s1
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store x_43:i32 temp_10_48:ptr->i32 
    sd      a1,0(a3)
                    #      mu get_41:101 
                    #      get_41 = chi get_41:101 
                    #      new_var temp_11_48:i32 
                    #      temp_11_48 = Add i32 length_43, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     s2,a2,a5
                    #      length_43 = i32 temp_11_48 
    mv      a2, s2
                    #      new_var temp_12_48:i32 
                    #      temp_12_48 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sd      s1,32(sp)
    sw      s2,4(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,28(sp)
    sw      a0,0(sp)
                    #      x_43 = i32 temp_12_48 
    mv      a1, a0
                    #      jump label: while.head_47 
    sw      a0,0(sp)
    lw      a0,28(sp)
    sb      a7,17(sp)
    sd      a3,8(sp)
    sb      a6,18(sp)
    sb      a4,19(sp)
    j       .while.head_47
                    #      label while.exit_47: 
.while.exit_47:
                    #      ret length_43 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a2,20(sp)
    sw      a0,28(sp)
    addi    sp,sp,56
    ret
                    #      Define intpush_0 [x_53] -> intpush_ret_0 
    .globl intpush
    .type intpush,@function
intpush:
                    #mem layout:|ra_intpush:8|s0_intpush:8|x:4|temp_13:4|temp_14:4|temp_15:4|temp_16:8
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_13_55 
                    #      alloc i32 temp_14_55 
                    #      alloc i32 temp_15_55 
                    #      alloc ptr->i32 temp_16_55 
                    #      label L27_0: 
.L27_0:
                    #      new_var temp_13_55:i32 
                    #      temp_13_55 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a1, intt
                    #occupy reg a1 with *intt_0
    lw      a2,0(a1)
                    #      new_var temp_14_55:i32 
                    #      temp_14_55 = Add i32 temp_13_55, 1_0 
    li      a3, 1
    add     a4,a2,a3
                    #      store temp_14_55:i32 *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a5, intt
                    #occupy reg a5 with *intt_0
    sd      a4,0(a5)
                    #      new_var temp_15_55:i32 
                    #      temp_15_55 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a6, intt
                    #occupy reg a6 with *intt_0
    lw      a7,0(a6)
                    #      new_var temp_16_55:ptr->i32 
                    #      temp_16_55 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_15_55)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,a7
                    #occupy reg s2 with ints_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      store x_53:i32 temp_16_55:ptr->i32 
    sd      a0,0(s1)
                    #      mu ints_0:127 
                    #      ints_0 = chi ints_0:127 
                    #      Define chapush_0 [x_58] -> chapush_ret_0 
    .globl chapush
    .type chapush,@function
chapush:
                    #mem layout:|ra_chapush:8|s0_chapush:8|x:4|temp_17:4|temp_18:4|temp_19:4|temp_20:8
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_17_60 
                    #      alloc i32 temp_18_60 
                    #      alloc i32 temp_19_60 
                    #      alloc ptr->i32 temp_20_60 
                    #      label L26_0: 
.L26_0:
                    #      new_var temp_17_60:i32 
                    #      temp_17_60 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    lw      a2,0(a1)
                    #      new_var temp_18_60:i32 
                    #      temp_18_60 = Add i32 temp_17_60, 1_0 
    li      a3, 1
    add     a4,a2,a3
                    #      store temp_18_60:i32 *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a5, chat
                    #occupy reg a5 with *chat_0
    sd      a4,0(a5)
                    #      new_var temp_19_60:i32 
                    #      temp_19_60 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a6, chat
                    #occupy reg a6 with *chat_0
    lw      a7,0(a6)
                    #      new_var temp_20_60:ptr->i32 
                    #      temp_20_60 = getelementptr chas_0:Array:i32:[Some(10000_0)] [Some(temp_19_60)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s2,a3,a7
                    #occupy reg s2 with chas_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      store x_58:i32 temp_20_60:ptr->i32 
    sd      a0,0(s1)
                    #      mu chas_0:143 
                    #      chas_0 = chi chas_0:143 
                    #      Define intpop_0 [] -> intpop_ret_0 
    .globl intpop
    .type intpop,@function
intpop:
                    #mem layout:|ra_intpop:8|s0_intpop:8|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:40000|temp_26:8|temp_27:4|none:4
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
                    #      alloc i32 temp_21_64 
                    #      alloc i32 temp_22_64 
                    #      alloc i32 temp_23_64 
                    #      alloc i32 temp_24_64 
                    #      alloc Array:i32:[Some(10000_0)] temp_25_64 
                    #      alloc ptr->i32 temp_26_64 
                    #      alloc i32 temp_27_64 
                    #      label L25_0: 
.L25_0:
                    #      new_var temp_21_64:i32 
                    #      temp_21_64 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a4, intt
                    #occupy reg a4 with *intt_0
    lw      a5,0(a4)
                    #      new_var temp_22_64:i32 
                    #      temp_22_64 = Sub i32 temp_21_64, 1_0 
    li      a6, 1
    sub     a7,a5,a6
                    #      store temp_22_64:i32 *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      s1, intt
                    #occupy reg s1 with *intt_0
    sd      a7,0(s1)
                    #      new_var temp_23_64:i32 
                    #      temp_23_64 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      s2, intt
                    #occupy reg s2 with *intt_0
    lw      s3,0(s2)
                    #      new_var temp_24_64:i32 
                    #      temp_24_64 = Add i32 temp_23_64, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s4,s3,a6
                    #      new_var temp_25_64:Array:i32:[Some(10000_0)] 
                    #      temp_25_64 = load *ints_0:ptr->i32 
                    #   load label ints as ptr to reg
    la      s5, ints
                    #occupy reg s5 with *ints_0
    lw      s6,0(s5)
                    #      new_var temp_26_64:ptr->i32 
                    #      new_var temp_27_64:i32 
                    #      temp_26_64 = getelementptr temp_25_64:Array:i32:[Some(10000_0)] [Some(temp_24_64)] 
    li      s7, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_27_64 = load temp_26_64:ptr->i32 
    lw      s8,0(s7)
                    #      ret temp_27_64 
    li      s9, 40040
    add     s9,sp,s9
    ld      ra,0(s9)
    li      s10, 40032
    add     s10,sp,s10
    ld      s0,0(s10)
    sw      s8,4(sp)
                    #found literal reg Some(a3) already exist with 40048_0
    li      a3, 40048
    add     sp,a3,sp
    ret
                    #      Define chapop_0 [] -> chapop_ret_0 
    .globl chapop
    .type chapop,@function
chapop:
                    #mem layout:|ra_chapop:8|s0_chapop:8|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:40000|temp_33:8|temp_34:4|none:4
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
                    #      alloc i32 temp_28_68 
                    #      alloc i32 temp_29_68 
                    #      alloc i32 temp_30_68 
                    #      alloc i32 temp_31_68 
                    #      alloc Array:i32:[Some(10000_0)] temp_32_68 
                    #      alloc ptr->i32 temp_33_68 
                    #      alloc i32 temp_34_68 
                    #      label L24_0: 
.L24_0:
                    #      new_var temp_28_68:i32 
                    #      temp_28_68 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a4, chat
                    #occupy reg a4 with *chat_0
    lw      a5,0(a4)
                    #      new_var temp_29_68:i32 
                    #      temp_29_68 = Sub i32 temp_28_68, 1_0 
    li      a6, 1
    sub     a7,a5,a6
                    #      store temp_29_68:i32 *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      s1, chat
                    #occupy reg s1 with *chat_0
    sd      a7,0(s1)
                    #      new_var temp_30_68:i32 
                    #      temp_30_68 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      s2, chat
                    #occupy reg s2 with *chat_0
    lw      s3,0(s2)
                    #      new_var temp_31_68:i32 
                    #      temp_31_68 = Add i32 temp_30_68, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s4,s3,a6
                    #      new_var temp_32_68:Array:i32:[Some(10000_0)] 
                    #      temp_32_68 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      s5, chas
                    #occupy reg s5 with *chas_0
    lw      s6,0(s5)
                    #      new_var temp_33_68:ptr->i32 
                    #      new_var temp_34_68:i32 
                    #      temp_33_68 = getelementptr temp_32_68:Array:i32:[Some(10000_0)] [Some(temp_31_68)] 
    li      s7, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_34_68 = load temp_33_68:ptr->i32 
    lw      s8,0(s7)
                    #      ret temp_34_68 
    li      s9, 40040
    add     s9,sp,s9
    ld      ra,0(s9)
    li      s10, 40032
    add     s10,sp,s10
    ld      s0,0(s10)
    sw      s8,4(sp)
                    #found literal reg Some(a3) already exist with 40048_0
    li      a3, 40048
    add     sp,a3,sp
    ret
                    #      Define intadd_0 [x_71] -> intadd_ret_0 
    .globl intadd
    .type intadd,@function
intadd:
                    #mem layout:|ra_intadd:8|s0_intadd:8|x:4|temp_35:4|temp_36:8|temp_37:4|temp_38:40000|none:4|temp_39:8|temp_40:4|temp_41:4|temp_42:4|none:4|temp_43:8|temp_44:4|temp_45:40000|none:4|temp_46:8|temp_47:4|temp_48:4
    li      a1, -80096
    li      a1, -80096
    add     sp,a1,sp
    li      a2, 80088
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 80080
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 80096
    li      a4, 80096
    add     s0,a4,sp
                    #      alloc i32 temp_35_73 
                    #      alloc ptr->i32 temp_36_73 
                    #      alloc i32 temp_37_73 
                    #      alloc Array:i32:[Some(10000_0)] temp_38_73 
                    #      alloc ptr->i32 temp_39_73 
                    #      alloc i32 temp_40_73 
                    #      alloc i32 temp_41_73 
                    #      alloc i32 temp_42_73 
                    #      alloc ptr->i32 temp_43_73 
                    #      alloc i32 temp_44_73 
                    #      alloc Array:i32:[Some(10000_0)] temp_45_73 
                    #      alloc ptr->i32 temp_46_73 
                    #      alloc i32 temp_47_73 
                    #      alloc i32 temp_48_73 
                    #      label L23_0: 
.L23_0:
                    #      new_var temp_35_73:i32 
                    #      temp_35_73 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a5, intt
                    #occupy reg a5 with *intt_0
    lw      a6,0(a5)
                    #      new_var temp_36_73:ptr->i32 
                    #      temp_36_73 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_35_73)] 
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a6
                    #occupy reg s2 with ints_0
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,a7
                    #      new_var temp_37_73:i32 
                    #      temp_37_73 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      s3, intt
                    #occupy reg s3 with *intt_0
    lw      s4,0(s3)
                    #      new_var temp_38_73:Array:i32:[Some(10000_0)] 
                    #      temp_38_73 = load *ints_0:ptr->i32 
                    #   load label ints as ptr to reg
    la      s5, ints
                    #occupy reg s5 with *ints_0
    lw      s6,0(s5)
                    #      new_var temp_39_73:ptr->i32 
                    #      new_var temp_40_73:i32 
                    #      temp_39_73 = getelementptr temp_38_73:Array:i32:[Some(10000_0)] [Some(temp_37_73)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_40_73 = load temp_39_73:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_41_73:i32 
                    #      temp_41_73 = Mul i32 temp_40_73, 10_0 
    li      s9, 10
    mul     s10,s8,s9
                    #      store temp_41_73:i32 temp_36_73:ptr->i32 
    sd      s10,0(a7)
                    #      mu ints_0:215 
                    #      ints_0 = chi ints_0:215 
                    #      new_var temp_42_73:i32 
                    #      temp_42_73 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      s11, intt
                    #occupy reg s11 with *intt_0
    lw      a1,0(s11)
                    #      new_var temp_43_73:ptr->i32 
                    #      temp_43_73 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_42_73)] 
    li      a2, 0
                    #found literal reg Some(s1) already exist with 1_0
    mul     a3,s1,a1
                    #occupy reg a3 with ints_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_44_73:i32 
                    #      temp_44_73 = load *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a3, intt
                    #occupy reg a3 with *intt_0
    lw      a4,0(a3)
                    #      new_var temp_45_73:Array:i32:[Some(10000_0)] 
                    #      temp_45_73 = load *ints_0:ptr->i32 
                    #   load label ints as ptr to reg
    la      a3, ints
                    #occupy reg a3 with *ints_0
    lw      a5,0(a3)
                    #      new_var temp_46_73:ptr->i32 
                    #      new_var temp_47_73:i32 
                    #      temp_46_73 = getelementptr temp_45_73:Array:i32:[Some(10000_0)] [Some(temp_44_73)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_47_73 = load temp_46_73:ptr->i32 
    lw      s1,0(a3)
                    #      new_var temp_48_73:i32 
                    #      temp_48_73 = Add i32 temp_47_73, x_71 
    add     s2,s1,a0
                    #      store temp_48_73:i32 temp_43_73:ptr->i32 
    sd      s2,0(a2)
                    #      mu ints_0:239 
                    #      ints_0 = chi ints_0:239 
                    #      Define find_0 [] -> find_ret_0 
    .globl find
    .type find,@function
find:
                    #mem layout:|ra_find:8|s0_find:8|temp_49:4|temp_50:4|temp_51:8|temp_52:4|temp_53:4|temp_54:8|temp_55:4|temp_56:4|temp_57:4|temp_58:4|temp_59:1|none:7
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 temp_49_77 
                    #      alloc i32 temp_50_77 
                    #      alloc ptr->i32 temp_51_77 
                    #      alloc i32 temp_52_77 
                    #      alloc i32 temp_53_77 
                    #      alloc ptr->i32 temp_54_77 
                    #      alloc i32 temp_55_77 
                    #      alloc i32 temp_56_77 
                    #      alloc i32 temp_57_77 
                    #      alloc i32 temp_58_82 
                    #      alloc i1 temp_59_82 
                    #      label L20_0: 
.L20_0:
                    #      new_var temp_49_77:i32 
                    #      temp_49_77 =  Call i32 chapop_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    chapop
    sw      a0,52(sp)
                    #      store temp_49_77:i32 *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    sd      a0,0(a1)
                    #      new_var temp_50_77:i32 
                    #      temp_50_77 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a2, ii
                    #occupy reg a2 with *ii_0
    lw      a3,0(a2)
                    #      new_var temp_51_77:ptr->i32 
                    #      temp_51_77 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_50_77)] 
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a3
                    #occupy reg a6 with get2_0
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
                    #      store 32_0:i32 temp_51_77:ptr->i32 
    li      a7, 32
    sd      a7,0(a4)
                    #      mu get2_0:252 
                    #      get2_0 = chi get2_0:252 
                    #      new_var temp_52_77:i32 
                    #      temp_52_77 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      s1, ii
                    #occupy reg s1 with *ii_0
    lw      s2,0(s1)
                    #      new_var temp_53_77:i32 
                    #      temp_53_77 = Add i32 temp_52_77, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     s3,s2,a5
                    #      new_var temp_54_77:ptr->i32 
                    #      temp_54_77 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_53_77)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 1_0
    mul     s5,a5,s3
                    #occupy reg s5 with get2_0
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,s4
                    #      new_var temp_55_77:i32 
                    #      temp_55_77 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      s6, c
                    #occupy reg s6 with *c_0
    lw      s7,0(s6)
                    #      store temp_55_77:i32 temp_54_77:ptr->i32 
    sd      s7,0(s4)
                    #      mu get2_0:267 
                    #      get2_0 = chi get2_0:267 
                    #      new_var temp_56_77:i32 
                    #      temp_56_77 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      s8, ii
                    #occupy reg s8 with *ii_0
    lw      s9,0(s8)
                    #      new_var temp_57_77:i32 
                    #      temp_57_77 = Add i32 temp_56_77, 2_0 
    li      s10, 2
    add     s11,s9,s10
                    #      store temp_57_77:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    sd      s11,0(a1)
                    #      jump label: L21_0 
    j       .L21_0
                    #      label L21_0: 
.L21_0:
                    #      new_var temp_58_82:i32 
                    #      temp_58_82 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    lw      a2,0(a1)
                    #      new_var temp_59_82:i1 
                    #      temp_59_82 = icmp i32 Eq temp_58_82, 0_0 
    li      a5, 0
    xor     a6,a2,a5
    seqz    a6, a6
                    #      br i1 temp_59_82, label branch_true_83, label branch_false_83 
    bnez    a6, .branch_true_83
    j       .branch_false_83
                    #      label branch_true_83: 
.branch_true_83:
                    #      ret 0_0 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
                    #      label branch_false_83: 
.branch_false_83:
                    #      label L22_0: 
.L22_0:
                    #      ret 1_0 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    li      a0, 1
    addi    sp,sp,72
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_60:40000|temp_61:4|lengets:4|temp_62:4|temp_63:1|none:3|temp_64:4|temp_65:40000|none:4|temp_66:8|temp_67:4|temp_68:4|temp_69:1|none:3|temp_70:4|temp_71:8|temp_72:4|temp_73:40000|none:4|temp_74:8|temp_75:4|temp_76:4|temp_77:4|temp_78:4|temp_79:4|temp_80:4|temp_81:40000|temp_82:8|temp_83:4|temp_84:1|none:3|temp_85:4|temp_86:40000|none:4|temp_87:8|temp_88:4|temp_89:1|none:3|temp_90:4|temp_91:40000|none:4|temp_92:8|temp_93:4|temp_94:1|none:3|temp_95:4|temp_96:4|temp_97:1|none:3|temp_98:4|temp_99:8|temp_100:4|temp_101:4|temp_102:8|temp_103:4|temp_104:4|temp_105:4|temp_106:4|temp_107:4|temp_108:40000|none:4|temp_109:8|temp_110:4|temp_111:1|none:3|temp_112:4|temp_113:40000|none:4|temp_114:8|temp_115:4|temp_116:1|temp_117:1|temp_118:1|temp_119:1|temp_120:1|temp_121:1|temp_122:1|temp_123:1|temp_124:1|temp_125:1|temp_126:1|none:1|temp_127:4|temp_128:1|none:3|temp_129:4|temp_130:40000|none:4|temp_131:8|temp_132:4|temp_133:1|none:3|temp_134:4|temp_135:40000|none:4|temp_136:8|temp_137:4|temp_138:1|temp_139:1|temp_140:1|temp_141:1|temp_142:1|temp_143:1|temp_144:1|temp_145:1|temp_146:1|temp_147:1|temp_148:1|none:1|temp_149:4|temp_150:1|none:3|temp_151:4|temp_152:40000|none:4|temp_153:8|temp_154:4|temp_155:1|none:3|temp_156:4|temp_157:40000|none:4|temp_158:8|temp_159:4|temp_160:1|temp_161:1|temp_162:1|temp_163:1|temp_164:1|temp_165:1|temp_166:1|none:1|temp_167:4|temp_168:1|none:3|temp_169:4|temp_170:40000|temp_171:8|temp_172:4|temp_173:1|none:3|temp_174:4|temp_175:40000|none:4|temp_176:8|temp_177:4|temp_178:1|temp_179:1|temp_180:1|temp_181:1|temp_182:1|temp_183:1|temp_184:1|none:1|temp_185:4|temp_186:1|none:3|temp_187:4|temp_188:40000|temp_189:8|temp_190:4|temp_191:1|none:3|temp_192:4|temp_193:40000|none:4|temp_194:8|temp_195:4|temp_196:1|temp_197:1|temp_198:1|temp_199:1|temp_200:1|temp_201:1|temp_202:1|none:1|temp_203:4|temp_204:1|none:3|temp_205:4|temp_206:8|temp_207:4|temp_208:4|temp_209:4|temp_210:1|none:3|temp_211:4|c:4|temp_212:4|none:4|temp_213:8|temp_214:4|temp_215:4|temp_216:8|temp_217:4|temp_218:4|temp_219:4|none:4|temp_220:8|temp_221:4|temp_222:40000|none:4|temp_223:8|temp_224:4|temp_225:1|none:3|temp_226:4|temp_227:40000|none:4|temp_228:8|temp_229:4|temp_230:1|temp_231:1|temp_232:1|temp_233:1|temp_234:1|temp_235:1|temp_236:1|temp_237:1|temp_238:1|temp_239:1|temp_240:1|none:1|temp_241:4|a:4|temp_242:4|b:4|c:4|temp_243:4|temp_244:40000|temp_245:8|temp_246:4|temp_247:1|none:3|temp_248:4|temp_249:4|temp_250:40000|temp_251:8|temp_252:4|temp_253:1|none:3|temp_254:4|temp_255:4|temp_256:40000|temp_257:8|temp_258:4|temp_259:1|none:3|temp_260:4|temp_261:4|temp_262:40000|temp_263:8|temp_264:4|temp_265:1|none:3|temp_266:4|temp_267:4|temp_268:40000|temp_269:8|temp_270:4|temp_271:1|none:3|temp_272:4|temp_273:4|temp_274:40000|temp_275:8|temp_276:4|temp_277:1|none:3|temp_278:4|temp_279:4|temp_280:4|temp_281:4|temp_282:40000|temp_283:8|temp_284:4|temp_285:1|none:3|temp_286:4|temp_287:40000|none:4|temp_288:8|temp_289:4|temp_290:4|temp_291:4|temp_292:4|temp_293:4|temp_294:40000|none:4|temp_295:8|temp_296:4|temp_297:1|none:3|temp_298:4|temp_299:4|temp_300:4|temp_301:40000|none:4|temp_302:8|temp_303:4|temp_304:4|temp_305:4|temp_306:4|temp_307:4|temp_308:4|temp_309:4|temp_310:4|temp_311:40000|temp_312:8|temp_313:4|none:4
    li      a0, -1161000
    li      a0, -1161000
    add     sp,a0,sp
    li      a1, 1160992
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 1160984
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 1161000
    li      a3, 1161000
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(10000_0)] temp_60_87 
                    #      alloc i32 temp_61_87 
                    #      alloc i32 lengets_87 
                    #      alloc i32 temp_62_91 
                    #      alloc i1 temp_63_91 
                    #      alloc i32 temp_64_94 
                    #      alloc Array:i32:[Some(10000_0)] temp_65_94 
                    #      alloc ptr->i32 temp_66_94 
                    #      alloc i32 temp_67_94 
                    #      alloc i32 temp_68_94 
                    #      alloc i1 temp_69_94 
                    #      alloc i32 temp_70_96 
                    #      alloc ptr->i32 temp_71_96 
                    #      alloc i32 temp_72_96 
                    #      alloc Array:i32:[Some(10000_0)] temp_73_96 
                    #      alloc ptr->i32 temp_74_96 
                    #      alloc i32 temp_75_96 
                    #      alloc i32 temp_76_96 
                    #      alloc i32 temp_77_96 
                    #      alloc i32 temp_78_93 
                    #      alloc i32 temp_79_93 
                    #      alloc i32 temp_80_100 
                    #      alloc Array:i32:[Some(10000_0)] temp_81_100 
                    #      alloc ptr->i32 temp_82_100 
                    #      alloc i32 temp_83_100 
                    #      alloc i1 temp_84_100 
                    #      alloc i32 temp_85_103 
                    #      alloc Array:i32:[Some(10000_0)] temp_86_103 
                    #      alloc ptr->i32 temp_87_103 
                    #      alloc i32 temp_88_103 
                    #      alloc i1 temp_89_103 
                    #      alloc i32 temp_90_106 
                    #      alloc Array:i32:[Some(10000_0)] temp_91_106 
                    #      alloc ptr->i32 temp_92_106 
                    #      alloc i32 temp_93_106 
                    #      alloc i1 temp_94_106 
                    #      alloc i32 temp_95_108 
                    #      alloc i32 temp_96_110 
                    #      alloc i1 temp_97_110 
                    #      alloc i32 temp_98_112 
                    #      alloc ptr->i32 temp_99_112 
                    #      alloc i32 temp_100_112 
                    #      alloc i32 temp_101_112 
                    #      alloc ptr->i32 temp_102_112 
                    #      alloc i32 temp_103_112 
                    #      alloc i32 temp_104_112 
                    #      alloc i32 temp_105_112 
                    #      alloc i32 temp_106_112 
                    #      alloc i32 temp_107_117 
                    #      alloc Array:i32:[Some(10000_0)] temp_108_117 
                    #      alloc ptr->i32 temp_109_117 
                    #      alloc i32 temp_110_117 
                    #      alloc i1 temp_111_117 
                    #      alloc i32 temp_112_120 
                    #      alloc Array:i32:[Some(10000_0)] temp_113_120 
                    #      alloc ptr->i32 temp_114_120 
                    #      alloc i32 temp_115_120 
                    #      alloc i1 temp_116_120 
                    #      alloc i1 temp_117_120 
                    #      alloc i1 temp_118_120 
                    #      alloc i1 temp_119_120 
                    #      alloc i1 temp_120_120 
                    #      alloc i1 temp_121_120 
                    #      alloc i1 temp_122_120 
                    #      alloc i1 temp_123_120 
                    #      alloc i1 temp_124_120 
                    #      alloc i1 temp_125_120 
                    #      alloc i1 temp_126_120 
                    #      alloc i32 temp_127_123 
                    #      alloc i1 temp_128_123 
                    #      alloc i32 temp_129_127 
                    #      alloc Array:i32:[Some(10000_0)] temp_130_127 
                    #      alloc ptr->i32 temp_131_127 
                    #      alloc i32 temp_132_127 
                    #      alloc i1 temp_133_127 
                    #      alloc i32 temp_134_130 
                    #      alloc Array:i32:[Some(10000_0)] temp_135_130 
                    #      alloc ptr->i32 temp_136_130 
                    #      alloc i32 temp_137_130 
                    #      alloc i1 temp_138_130 
                    #      alloc i1 temp_139_130 
                    #      alloc i1 temp_140_130 
                    #      alloc i1 temp_141_130 
                    #      alloc i1 temp_142_130 
                    #      alloc i1 temp_143_130 
                    #      alloc i1 temp_144_130 
                    #      alloc i1 temp_145_130 
                    #      alloc i1 temp_146_130 
                    #      alloc i1 temp_147_130 
                    #      alloc i1 temp_148_130 
                    #      alloc i32 temp_149_133 
                    #      alloc i1 temp_150_133 
                    #      alloc i32 temp_151_137 
                    #      alloc Array:i32:[Some(10000_0)] temp_152_137 
                    #      alloc ptr->i32 temp_153_137 
                    #      alloc i32 temp_154_137 
                    #      alloc i1 temp_155_137 
                    #      alloc i32 temp_156_140 
                    #      alloc Array:i32:[Some(10000_0)] temp_157_140 
                    #      alloc ptr->i32 temp_158_140 
                    #      alloc i32 temp_159_140 
                    #      alloc i1 temp_160_140 
                    #      alloc i1 temp_161_140 
                    #      alloc i1 temp_162_140 
                    #      alloc i1 temp_163_140 
                    #      alloc i1 temp_164_140 
                    #      alloc i1 temp_165_140 
                    #      alloc i1 temp_166_140 
                    #      alloc i32 temp_167_143 
                    #      alloc i1 temp_168_143 
                    #      alloc i32 temp_169_147 
                    #      alloc Array:i32:[Some(10000_0)] temp_170_147 
                    #      alloc ptr->i32 temp_171_147 
                    #      alloc i32 temp_172_147 
                    #      alloc i1 temp_173_147 
                    #      alloc i32 temp_174_150 
                    #      alloc Array:i32:[Some(10000_0)] temp_175_150 
                    #      alloc ptr->i32 temp_176_150 
                    #      alloc i32 temp_177_150 
                    #      alloc i1 temp_178_150 
                    #      alloc i1 temp_179_150 
                    #      alloc i1 temp_180_150 
                    #      alloc i1 temp_181_150 
                    #      alloc i1 temp_182_150 
                    #      alloc i1 temp_183_150 
                    #      alloc i1 temp_184_150 
                    #      alloc i32 temp_185_153 
                    #      alloc i1 temp_186_153 
                    #      alloc i32 temp_187_157 
                    #      alloc Array:i32:[Some(10000_0)] temp_188_157 
                    #      alloc ptr->i32 temp_189_157 
                    #      alloc i32 temp_190_157 
                    #      alloc i1 temp_191_157 
                    #      alloc i32 temp_192_160 
                    #      alloc Array:i32:[Some(10000_0)] temp_193_160 
                    #      alloc ptr->i32 temp_194_160 
                    #      alloc i32 temp_195_160 
                    #      alloc i1 temp_196_160 
                    #      alloc i1 temp_197_160 
                    #      alloc i1 temp_198_160 
                    #      alloc i1 temp_199_160 
                    #      alloc i1 temp_200_160 
                    #      alloc i1 temp_201_160 
                    #      alloc i1 temp_202_160 
                    #      alloc i32 temp_203_163 
                    #      alloc i1 temp_204_163 
                    #      alloc i32 temp_205_99 
                    #      alloc ptr->i32 temp_206_99 
                    #      alloc i32 temp_207_99 
                    #      alloc i32 temp_208_99 
                    #      alloc i32 temp_209_170 
                    #      alloc i1 temp_210_170 
                    #      alloc i32 temp_211_172 
                    #      alloc i32 c_172 
                    #      alloc i32 temp_212_172 
                    #      alloc ptr->i32 temp_213_172 
                    #      alloc i32 temp_214_172 
                    #      alloc i32 temp_215_172 
                    #      alloc ptr->i32 temp_216_172 
                    #      alloc i32 temp_217_172 
                    #      alloc i32 temp_218_172 
                    #      alloc i32 temp_219_87 
                    #      alloc ptr->i32 temp_220_87 
                    #      alloc i32 temp_221_179 
                    #      alloc Array:i32:[Some(10000_0)] temp_222_179 
                    #      alloc ptr->i32 temp_223_179 
                    #      alloc i32 temp_224_179 
                    #      alloc i1 temp_225_179 
                    #      alloc i32 temp_226_182 
                    #      alloc Array:i32:[Some(10000_0)] temp_227_182 
                    #      alloc ptr->i32 temp_228_182 
                    #      alloc i32 temp_229_182 
                    #      alloc i1 temp_230_182 
                    #      alloc i1 temp_231_182 
                    #      alloc i1 temp_232_182 
                    #      alloc i1 temp_233_182 
                    #      alloc i1 temp_234_182 
                    #      alloc i1 temp_235_182 
                    #      alloc i1 temp_236_182 
                    #      alloc i1 temp_237_182 
                    #      alloc i1 temp_238_182 
                    #      alloc i1 temp_239_182 
                    #      alloc i1 temp_240_182 
                    #      alloc i32 temp_241_184 
                    #      alloc i32 a_184 
                    #      alloc i32 temp_242_184 
                    #      alloc i32 b_184 
                    #      alloc i32 c_184 
                    #      alloc i32 temp_243_188 
                    #      alloc Array:i32:[Some(10000_0)] temp_244_188 
                    #      alloc ptr->i32 temp_245_188 
                    #      alloc i32 temp_246_188 
                    #      alloc i1 temp_247_188 
                    #      alloc i32 temp_248_188 
                    #      alloc i32 temp_249_191 
                    #      alloc Array:i32:[Some(10000_0)] temp_250_191 
                    #      alloc ptr->i32 temp_251_191 
                    #      alloc i32 temp_252_191 
                    #      alloc i1 temp_253_191 
                    #      alloc i32 temp_254_191 
                    #      alloc i32 temp_255_194 
                    #      alloc Array:i32:[Some(10000_0)] temp_256_194 
                    #      alloc ptr->i32 temp_257_194 
                    #      alloc i32 temp_258_194 
                    #      alloc i1 temp_259_194 
                    #      alloc i32 temp_260_194 
                    #      alloc i32 temp_261_197 
                    #      alloc Array:i32:[Some(10000_0)] temp_262_197 
                    #      alloc ptr->i32 temp_263_197 
                    #      alloc i32 temp_264_197 
                    #      alloc i1 temp_265_197 
                    #      alloc i32 temp_266_197 
                    #      alloc i32 temp_267_200 
                    #      alloc Array:i32:[Some(10000_0)] temp_268_200 
                    #      alloc ptr->i32 temp_269_200 
                    #      alloc i32 temp_270_200 
                    #      alloc i1 temp_271_200 
                    #      alloc i32 temp_272_200 
                    #      alloc i32 temp_273_203 
                    #      alloc Array:i32:[Some(10000_0)] temp_274_203 
                    #      alloc ptr->i32 temp_275_203 
                    #      alloc i32 temp_276_203 
                    #      alloc i1 temp_277_203 
                    #      alloc i32 temp_278_203 
                    #      alloc i32 temp_279_181 
                    #      alloc i32 temp_280_181 
                    #      alloc i32 temp_281_208 
                    #      alloc Array:i32:[Some(10000_0)] temp_282_208 
                    #      alloc ptr->i32 temp_283_208 
                    #      alloc i32 temp_284_208 
                    #      alloc i1 temp_285_208 
                    #      alloc i32 temp_286_210 
                    #      alloc Array:i32:[Some(10000_0)] temp_287_210 
                    #      alloc ptr->i32 temp_288_210 
                    #      alloc i32 temp_289_210 
                    #      alloc i32 temp_290_210 
                    #      alloc i32 temp_291_213 
                    #      alloc i32 temp_292_213 
                    #      alloc i32 temp_293_213 
                    #      alloc Array:i32:[Some(10000_0)] temp_294_213 
                    #      alloc ptr->i32 temp_295_213 
                    #      alloc i32 temp_296_213 
                    #      alloc i1 temp_297_213 
                    #      alloc i32 temp_298_215 
                    #      alloc i32 temp_299_215 
                    #      alloc i32 temp_300_215 
                    #      alloc Array:i32:[Some(10000_0)] temp_301_215 
                    #      alloc ptr->i32 temp_302_215 
                    #      alloc i32 temp_303_215 
                    #      alloc i32 temp_304_215 
                    #      alloc i32 temp_305_215 
                    #      alloc i32 temp_306_215 
                    #      alloc i32 temp_307_210 
                    #      alloc i32 temp_308_210 
                    #      alloc i32 temp_309_210 
                    #      alloc i32 temp_310_210 
                    #      alloc Array:i32:[Some(10000_0)] temp_311_87 
                    #      alloc ptr->i32 temp_312_87 
                    #      alloc i32 temp_313_87 
                    #      label L0_0: 
.L0_0:
                    #      store 0_0:i32 *intt_0:ptr->i32 
                    #   load label intt as ptr to reg
    la      a4, intt
                    #occupy reg a4 with *intt_0
    li      a5, 0
    sd      a5,0(a4)
                    #      store 0_0:i32 *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a6, chat
                    #occupy reg a6 with *chat_0
                    #found literal reg Some(a5) already exist with 0_0
    sd      a5,0(a6)
                    #      new_var temp_60_87:Array:i32:[Some(10000_0)] 
                    #      temp_60_87 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a7, get
                    #occupy reg a7 with *get_0
    lw      s1,0(a7)
                    #      new_var temp_61_87:i32 
                    #      temp_61_87 =  Call i32 getstr_0(temp_60_87) 
                    #saved register dumping to mem
    li      s1, 1160980
    add     s1,sp,s1
    sw      s1,0(s1)
                    #saved register dumped to mem
                    #arg load start
    li      s2, 1160980
    add     s2,sp,s2
    lw      a0,0(s2)
                    #arg load ended
    call    getstr
    li      a0, 1120980
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      lengets_87 = i32 temp_61_87 
    mv      s3, a0
                    #      jump label: while.head_92 
    j       .while.head_92
                    #      label while.head_92: 
.while.head_92:
                    #      new_var temp_62_91:i32 
                    #      temp_62_91 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      a2,0(a1)
                    #      new_var temp_63_91:i1 
                    #      temp_63_91 = icmp i32 Slt temp_62_91, lengets_87 
    slt     a3,a2,s3
                    #      br i1 temp_63_91, label while.body_92, label while.exit_92 
    bnez    a3, .while.body_92
    j       .while.exit_92
                    #      label while.body_92: 
.while.body_92:
                    #      new_var temp_64_94:i32 
                    #      temp_64_94 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      a4,0(a1)
                    #      new_var temp_65_94:Array:i32:[Some(10000_0)] 
                    #      temp_65_94 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a5, get
                    #occupy reg a5 with *get_0
    lw      a6,0(a5)
                    #      new_var temp_66_94:ptr->i32 
                    #      new_var temp_67_94:i32 
                    #      temp_66_94 = getelementptr temp_65_94:Array:i32:[Some(10000_0)] [Some(temp_64_94)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_67_94 = load temp_66_94:ptr->i32 
    lw      s4,0(a7)
                    #      new_var temp_68_94:i32 
                    #      temp_68_94 =  Call i32 isdigit_0(temp_67_94) 
                    #saved register dumping to mem
    li      s1, 1160980
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 1120976
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 1080948
    add     s3,sp,s3
    sw      s4,0(s3)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1120980
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 1080948
    add     s4,sp,s4
    lw      a0,0(s4)
                    #arg load ended
    call    isdigit
    li      a0, 1080944
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_69_94:i1 
                    #      temp_69_94 = icmp i32 Eq temp_68_94, 1_0 
    li      s5, 1
    xor     s6,a0,s5
    seqz    s6, s6
                    #      br i1 temp_69_94, label branch_true_95, label branch_false_95 
    bnez    s6, .branch_true_95
    j       .branch_false_95
                    #      label branch_true_95: 
.branch_true_95:
                    #      new_var temp_70_96:i32 
                    #      temp_70_96 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      a5,0(a1)
                    #      new_var temp_71_96:ptr->i32 
                    #      temp_71_96 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_70_96)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a5
                    #occupy reg s3 with get2_0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_72_96:i32 
                    #      temp_72_96 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s5, i
                    #occupy reg s5 with *i_0
    lw      s7,0(s5)
                    #      new_var temp_73_96:Array:i32:[Some(10000_0)] 
                    #      temp_73_96 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      s8, get
                    #occupy reg s8 with *get_0
    lw      s9,0(s8)
                    #      new_var temp_74_96:ptr->i32 
                    #      new_var temp_75_96:i32 
                    #      temp_74_96 = getelementptr temp_73_96:Array:i32:[Some(10000_0)] [Some(temp_72_96)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_75_96 = load temp_74_96:ptr->i32 
    lw      s11,0(s10)
                    #      store temp_75_96:i32 temp_71_96:ptr->i32 
    sd      s11,0(s1)
                    #      mu get2_0:350 
                    #      get2_0 = chi get2_0:350 
                    #      new_var temp_76_96:i32 
                    #      temp_76_96 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      s2,0(a1)
                    #      new_var temp_77_96:i32 
                    #      temp_77_96 = Add i32 temp_76_96, 1_0 
    li      a1, 1
    add     s3,s2,a1
                    #      store temp_77_96:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    sd      s3,0(a1)
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_95: 
.branch_false_95:
                    #      new_var temp_80_100:i32 
                    #      temp_80_100 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      a5,0(a1)
                    #      new_var temp_81_100:Array:i32:[Some(10000_0)] 
                    #      temp_81_100 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      s1, get
                    #occupy reg s1 with *get_0
    lw      s2,0(s1)
                    #      new_var temp_82_100:ptr->i32 
                    #      new_var temp_83_100:i32 
                    #      temp_82_100 = getelementptr temp_81_100:Array:i32:[Some(10000_0)] [Some(temp_80_100)] 
    li      s3, 0
    li      s5, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_83_100 = load temp_82_100:ptr->i32 
    lw      s7,0(s3)
                    #      new_var temp_84_100:i1 
                    #      temp_84_100 = icmp i32 Eq temp_83_100, 40_0 
    li      s8, 40
    xor     s9,s7,s8
    seqz    s9, s9
                    #      br i1 temp_84_100, label branch_true_101, label branch_false_101 
    bnez    s9, .branch_true_101
    j       .branch_false_101
                    #      label branch_true_101: 
.branch_true_101:
                    #       Call void chapush_0(40_0) 
                    #saved register dumping to mem
    li      a1, 1040884
    add     a1,sp,a1
    sw      s2,0(a1)
    li      s1, 1000880
    add     s1,sp,s1
    sd      s3,0(s1)
    li      s2, 1080948
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 1080943
    add     s3,sp,s3
    sb      s6,0(s3)
    li      s4, 1000876
    add     s4,sp,s4
    sw      s7,0(s4)
    li      s5, 1000875
    add     s5,sp,s5
    sb      s9,0(s5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1080944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 40
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_101 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s6, 1000876
    add     s6,sp,s6
    lw      s7,0(s6)
    li      s8, 1040884
    add     s8,sp,s8
    lw      s2,0(s8)
    li      s8, 1040884
    add     s8,sp,s8
    sw      s8,0(s8)
                    #found literal reg Some(s4) already exist with 1000876_0
    add     s4,sp,s4
    sw      s6,0(s4)
    li      s1, 1080943
    add     s1,sp,s1
    lb      s6,0(s1)
    li      s3, 1080948
    add     s3,sp,s3
    lw      s4,0(s3)
    li      s3, 1080948
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s5, 1000880
    add     s5,sp,s5
    ld      s3,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a2, 1120972
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1080944
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s5, 1000880
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s1, 1080943
    add     s1,sp,s1
    sb      s1,0(s1)
    j       .branch_false_101
                    #      label branch_false_101: 
.branch_false_101:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_85_103:i32 
                    #      temp_85_103 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      s1,0(a1)
                    #      new_var temp_86_103:Array:i32:[Some(10000_0)] 
                    #      temp_86_103 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      s5, get
                    #occupy reg s5 with *get_0
    lw      s8,0(s5)
                    #      new_var temp_87_103:ptr->i32 
                    #      new_var temp_88_103:i32 
                    #      temp_87_103 = getelementptr temp_86_103:Array:i32:[Some(10000_0)] [Some(temp_85_103)] 
    li      s10, 0
    li      s11, 1
    add     s10,s10,s8
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_88_103 = load temp_87_103:ptr->i32 
    lw      a1,0(s10)
                    #      new_var temp_89_103:i1 
                    #      temp_89_103 = icmp i32 Eq temp_88_103, 94_0 
    li      s5, 94
    xor     s11,a1,s5
    seqz    s11, s11
                    #      br i1 temp_89_103, label branch_true_104, label branch_false_104 
    bnez    s11, .branch_true_104
    j       .branch_false_104
                    #      label branch_true_104: 
.branch_true_104:
                    #       Call void chapush_0(94_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 1080943
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s6, 1000876
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s7, 1000864
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 1000875
    add     s8,sp,s8
    sb      s9,0(s8)
    li      s9, 960856
    add     s9,sp,s9
    sd      s10,0(s9)
    li      s10, 960851
    add     s10,sp,s10
    sb      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1080944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_104 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s11, 1000876
    add     s11,sp,s11
    lw      s7,0(s11)
                    #found literal reg Some(s6) already exist with 1000876_0
    add     s6,sp,s6
    sw      s11,0(s6)
    li      s1, 960851
    add     s1,sp,s1
    lb      s11,0(s1)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 960852
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1080944
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s1, 960851
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 1080944
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .branch_false_104
                    #      label branch_false_104: 
.branch_false_104:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_90_106:i32 
                    #      temp_90_106 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s5, i
                    #occupy reg s5 with *i_0
    li      a0, 1080944
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s5)
                    #      new_var temp_91_106:Array:i32:[Some(10000_0)] 
                    #      temp_91_106 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      s5, get
                    #occupy reg s5 with *get_0
    li      a0, 960844
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s5)
                    #      new_var temp_92_106:ptr->i32 
                    #      new_var temp_93_106:i32 
                    #      temp_92_106 = getelementptr temp_91_106:Array:i32:[Some(10000_0)] [Some(temp_90_106)] 
    li      s5, 0
    li      a0, 960840
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 960852
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 1120972
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s5,s5,a2
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_93_106 = load temp_92_106:ptr->i32 
    lw      a0,0(s5)
                    #      new_var temp_94_106:i1 
                    #      temp_94_106 = icmp i32 Eq temp_93_106, 41_0 
    li      a1, 960844
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 41
    li      a2, 960840
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_94_106, label branch_true_107, label branch_false_107 
    bnez    a2, .branch_true_107
    j       .branch_false_107
                    #      label branch_true_107: 
.branch_true_107:
                    #      new_var temp_95_108:i32 
                    #      temp_95_108 =  Call i32 chapop_0() 
                    #saved register dumping to mem
    li      a1, 1000868
    add     a1,sp,a1
    sw      s1,0(a1)
    li      s1, 1040884
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 1000880
    add     s2,sp,s2
    sd      s3,0(s2)
    li      s3, 1080948
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 920832
    add     s4,sp,s4
    sd      s5,0(s4)
    li      s5, 1080943
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s6, 1000876
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s7, 1000864
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 1000875
    add     s8,sp,s8
    sb      s9,0(s8)
    li      s9, 960856
    add     s9,sp,s9
    sd      s10,0(s9)
    li      s10, 960851
    add     s10,sp,s10
    sb      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    chapop
    li      a0, 920828
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 920820
    add     s11,sp,s11
    sw      a0,0(s11)
                    #      store temp_95_108:i32 *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    sd      a0,0(a1)
                    #      jump label: while.head_111 
    j       .while.head_111
                    #      label while.head_111: 
.while.head_111:
                    #      new_var temp_96_110:i32 
                    #      temp_96_110 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    lw      s1,0(a1)
                    #      new_var temp_97_110:i1 
                    #      temp_97_110 = icmp i32 Ne temp_96_110, 40_0 
    li      s2, 40
    xor     s3,s1,s2
    snez    s3, s3
                    #      br i1 temp_97_110, label while.body_111, label while.exit_111 
    bnez    s3, .while.body_111
    li      a1, 1000875
    add     a1,sp,a1
    lb      s9,0(a1)
    li      s2, 1000876
    add     s2,sp,s2
    lw      s7,0(s2)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 1000875
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s2, 1000876
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 920820
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 920815
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 920827
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 920828
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 920828
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 920832
    add     a2,sp,a2
    ld      s5,0(a2)
    li      s1, 920816
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 920832
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a2, 1000868
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .while.exit_111
                    #      label while.body_111: 
.while.body_111:
                    #      new_var temp_98_112:i32 
                    #      temp_98_112 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      s2,0(a1)
                    #      new_var temp_99_112:ptr->i32 
                    #      temp_99_112 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_98_112)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s2
                    #occupy reg s6 with get2_0
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
                    #      store 32_0:i32 temp_99_112:ptr->i32 
    li      s7, 32
    sd      s7,0(s4)
                    #      mu get2_0:444 
                    #      get2_0 = chi get2_0:444 
                    #      new_var temp_100_112:i32 
                    #      temp_100_112 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      s8, ii
                    #occupy reg s8 with *ii_0
    lw      s9,0(s8)
                    #      new_var temp_101_112:i32 
                    #      temp_101_112 = Add i32 temp_100_112, 1_0 
                    #found literal reg Some(s5) already exist with 1_0
    add     s10,s9,s5
                    #      new_var temp_102_112:ptr->i32 
                    #      temp_102_112 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_101_112)] 
    li      s11, 0
                    #found literal reg Some(s5) already exist with 1_0
    mul     a1,s5,s10
                    #occupy reg a1 with get2_0
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,s11
                    #      new_var temp_103_112:i32 
                    #      temp_103_112 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    lw      s5,0(a1)
                    #      store temp_103_112:i32 temp_102_112:ptr->i32 
    sd      s5,0(s11)
                    #      mu get2_0:459 
                    #      get2_0 = chi get2_0:459 
                    #      new_var temp_104_112:i32 
                    #      temp_104_112 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      s6,0(a1)
                    #      new_var temp_105_112:i32 
                    #      temp_105_112 = Add i32 temp_104_112, 2_0 
    li      a1, 2
    add     s7,s6,a1
                    #      store temp_105_112:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    sd      s7,0(a1)
                    #      new_var temp_106_112:i32 
                    #      temp_106_112 =  Call i32 chapop_0() 
                    #saved register dumping to mem
    li      s1, 920816
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 920808
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 920815
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 920800
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 920780
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 920776
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 920772
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 920796
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 920792
    add     s9,sp,s9
    sw      s10,0(s9)
    li      s10, 920784
    add     s10,sp,s10
    sd      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    chapop
    li      a0, 920820
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 920768
    add     s11,sp,s11
    sw      a0,0(s11)
                    #      store temp_106_112:i32 *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    sd      a0,0(a1)
                    #      jump label: while.head_111 
    li      a0, 920768
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 920820
    add     s1,sp,s1
    lw      a0,0(s1)
    li      s1, 920820
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_111
                    #      label while.exit_111: 
.while.exit_111:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_107_117:i32 
                    #      temp_107_117 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 920828
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_108_117:Array:i32:[Some(10000_0)] 
                    #      temp_108_117 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a1, get
                    #occupy reg a1 with *get_0
    li      a0, 920764
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_109_117:ptr->i32 
                    #      new_var temp_110_117:i32 
                    #      temp_109_117 = getelementptr temp_108_117:Array:i32:[Some(10000_0)] [Some(temp_107_117)] 
    li      a1, 0
    li      a0, 920760
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 920827
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 1120971
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_110_117 = load temp_109_117:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_111_117:i1 
                    #      temp_111_117 = icmp i32 Eq temp_110_117, 43_0 
    li      a1, 880752
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 43
    li      a2, 920764
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_111_117, label branch_true_118, label branch_false_118 
    bnez    a2, .branch_true_118
    j       .branch_false_118
                    #      label while.head_121: 
.while.head_121:
                    #      new_var temp_112_120:i32 
                    #      temp_112_120 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    li      a0, 880748
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_113_120:Array:i32:[Some(10000_0)] 
                    #      temp_113_120 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      a1, chas
                    #occupy reg a1 with *chas_0
    li      a0, 880740
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_114_120:ptr->i32 
                    #      new_var temp_115_120:i32 
                    #      temp_114_120 = getelementptr temp_113_120:Array:i32:[Some(10000_0)] [Some(temp_112_120)] 
    li      a1, 0
    li      a0, 880736
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 880747
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 920760
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_115_120 = load temp_114_120:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_116_120:i1 
                    #      temp_116_120 = icmp i32 Eq 94_0, temp_115_120 
    li      a0, 840724
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
    li      a1, 840728
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 880740
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_117_120:i1 
                    #      temp_117_120 = icmp i32 Eq 37_0, temp_115_120 
    li      a0, 37
    li      a2, 840723
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_118_120:i1 
                    #      temp_118_120 = Or i1 temp_117_120, temp_116_120 
                    #      new_var temp_119_120:i1 
                    #      temp_119_120 = icmp i32 Eq 47_0, temp_115_120 
    li      a0, 840723
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 840722
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_120_120:i1 
                    #      temp_120_120 = Or i1 temp_119_120, temp_118_120 
                    #      new_var temp_121_120:i1 
                    #      temp_121_120 = icmp i32 Eq 42_0, temp_115_120 
    li      a0, 840721
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 840720
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_122_120:i1 
                    #      temp_122_120 = Or i1 temp_121_120, temp_120_120 
                    #      new_var temp_123_120:i1 
                    #      temp_123_120 = icmp i32 Eq 45_0, temp_115_120 
    li      a0, 840719
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 45
    li      a2, 840718
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_124_120:i1 
                    #      temp_124_120 = Or i1 temp_123_120, temp_122_120 
                    #      new_var temp_125_120:i1 
                    #      temp_125_120 = icmp i32 Eq temp_115_120, 43_0 
    li      a0, 840717
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 43
    li      a2, 840716
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_126_120:i1 
                    #      temp_126_120 = Or i1 temp_125_120, temp_124_120 
                    #      br i1 temp_126_120, label while.body_121, label while.exit_121 
    li      a0, 840715
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .while.body_121
    j       .while.exit_121
                    #      label while.body_121: 
.while.body_121:
                    #      new_var temp_127_123:i32 
                    #      temp_127_123 =  Call i32 find_0() 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    find
    li      a0, 840713
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 840708
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_128_123:i1 
                    #      temp_128_123 = icmp i32 Eq temp_127_123, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_128_123, label branch_true_124, label branch_false_124 
    bnez    s2, .branch_true_124
    j       .branch_false_124
                    #      label branch_true_124: 
.branch_true_124:
                    #      jump label: while.exit_121 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      s2, 840707
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 840708
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 840724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 840713
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 840713
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 920832
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 920832
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .while.exit_121
                    #      label while.exit_121: 
.while.exit_121:
                    #       Call void chapush_0(43_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 840713
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 43
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_118 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s1, 1000876
    add     s1,sp,s1
    lw      s7,0(s1)
    li      s2, 960851
    add     s2,sp,s2
    lb      s11,0(s2)
    li      a1, 840724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 960851
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 840714
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 880747
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 880747
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 880736
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 880748
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 880748
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 920760
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000876
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 920760
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_118
                    #      label branch_false_124: 
.branch_false_124:
                    #      jump label: while.head_121 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 840724
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 840707
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 840708
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 840714
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 880747
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 880747
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 880736
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 880748
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 880748
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 920760
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a4, 920760
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .while.head_121
                    #      label branch_false_118: 
.branch_false_118:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_129_127:i32 
                    #      temp_129_127 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 880748
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_130_127:Array:i32:[Some(10000_0)] 
                    #      temp_130_127 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a1, get
                    #occupy reg a1 with *get_0
    li      a0, 840700
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_131_127:ptr->i32 
                    #      new_var temp_132_127:i32 
                    #      temp_131_127 = getelementptr temp_130_127:Array:i32:[Some(10000_0)] [Some(temp_129_127)] 
    li      a1, 0
    li      a0, 840696
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 880747
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 920760
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_132_127 = load temp_131_127:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_133_127:i1 
                    #      temp_133_127 = icmp i32 Eq temp_132_127, 45_0 
    li      a1, 800688
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 45
    li      a2, 840700
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_133_127, label branch_true_128, label branch_false_128 
    bnez    a2, .branch_true_128
    j       .branch_false_128
                    #      label while.head_131: 
.while.head_131:
                    #      new_var temp_134_130:i32 
                    #      temp_134_130 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    li      a0, 800684
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_135_130:Array:i32:[Some(10000_0)] 
                    #      temp_135_130 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      a1, chas
                    #occupy reg a1 with *chas_0
    li      a0, 800676
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_136_130:ptr->i32 
                    #      new_var temp_137_130:i32 
                    #      temp_136_130 = getelementptr temp_135_130:Array:i32:[Some(10000_0)] [Some(temp_134_130)] 
    li      a1, 0
    li      a0, 800672
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 800683
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 840696
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_137_130 = load temp_136_130:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_138_130:i1 
                    #      temp_138_130 = icmp i32 Eq 94_0, temp_137_130 
    li      a0, 760660
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
    li      a1, 760664
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 800676
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_139_130:i1 
                    #      temp_139_130 = icmp i32 Eq 37_0, temp_137_130 
    li      a0, 37
    li      a2, 760659
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_140_130:i1 
                    #      temp_140_130 = Or i1 temp_139_130, temp_138_130 
                    #      new_var temp_141_130:i1 
                    #      temp_141_130 = icmp i32 Eq 47_0, temp_137_130 
    li      a0, 760659
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 760658
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_142_130:i1 
                    #      temp_142_130 = Or i1 temp_141_130, temp_140_130 
                    #      new_var temp_143_130:i1 
                    #      temp_143_130 = icmp i32 Eq 42_0, temp_137_130 
    li      a0, 760657
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 760656
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_144_130:i1 
                    #      temp_144_130 = Or i1 temp_143_130, temp_142_130 
                    #      new_var temp_145_130:i1 
                    #      temp_145_130 = icmp i32 Eq 45_0, temp_137_130 
    li      a0, 760655
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 45
    li      a2, 760654
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_146_130:i1 
                    #      temp_146_130 = Or i1 temp_145_130, temp_144_130 
                    #      new_var temp_147_130:i1 
                    #      temp_147_130 = icmp i32 Eq temp_137_130, 43_0 
    li      a0, 760653
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 43
    li      a2, 760652
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_148_130:i1 
                    #      temp_148_130 = Or i1 temp_147_130, temp_146_130 
                    #      br i1 temp_148_130, label while.body_131, label while.exit_131 
    li      a0, 760651
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .while.body_131
    j       .while.exit_131
                    #      label while.body_131: 
.while.body_131:
                    #      new_var temp_149_133:i32 
                    #      temp_149_133 =  Call i32 find_0() 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    find
    li      a0, 760649
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 760644
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_150_133:i1 
                    #      temp_150_133 = icmp i32 Eq temp_149_133, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_150_133, label branch_true_134, label branch_false_134 
    bnez    s2, .branch_true_134
    j       .branch_false_134
                    #      label branch_true_134: 
.branch_true_134:
                    #      jump label: while.exit_131 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      s2, 760643
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 760644
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 760660
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 760649
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 760649
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 920832
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 920832
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .while.exit_131
                    #      label while.exit_131: 
.while.exit_131:
                    #       Call void chapush_0(45_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 760649
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 45
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_128 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s1, 1000876
    add     s1,sp,s1
    lw      s7,0(s1)
    li      s2, 960851
    add     s2,sp,s2
    lb      s11,0(s2)
    li      a1, 760660
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 960851
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 760650
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 800683
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 800683
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 800672
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 800684
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 800684
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 840696
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000876
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 840696
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_128
                    #      label branch_false_134: 
.branch_false_134:
                    #      jump label: while.head_131 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 760660
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 760643
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 760644
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 760650
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 800683
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 800683
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 800672
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 800684
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 800684
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 840696
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a4, 840696
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .while.head_131
                    #      label branch_false_128: 
.branch_false_128:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_151_137:i32 
                    #      temp_151_137 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 800684
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_152_137:Array:i32:[Some(10000_0)] 
                    #      temp_152_137 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a1, get
                    #occupy reg a1 with *get_0
    li      a0, 760636
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_153_137:ptr->i32 
                    #      new_var temp_154_137:i32 
                    #      temp_153_137 = getelementptr temp_152_137:Array:i32:[Some(10000_0)] [Some(temp_151_137)] 
    li      a1, 0
    li      a0, 760632
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 800683
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 840696
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_154_137 = load temp_153_137:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_155_137:i1 
                    #      temp_155_137 = icmp i32 Eq temp_154_137, 42_0 
    li      a1, 720624
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 42
    li      a2, 760636
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_155_137, label branch_true_138, label branch_false_138 
    bnez    a2, .branch_true_138
    j       .branch_false_138
                    #      label while.head_141: 
.while.head_141:
                    #      new_var temp_156_140:i32 
                    #      temp_156_140 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    li      a0, 720620
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_157_140:Array:i32:[Some(10000_0)] 
                    #      temp_157_140 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      a1, chas
                    #occupy reg a1 with *chas_0
    li      a0, 720612
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_158_140:ptr->i32 
                    #      new_var temp_159_140:i32 
                    #      temp_158_140 = getelementptr temp_157_140:Array:i32:[Some(10000_0)] [Some(temp_156_140)] 
    li      a1, 0
    li      a0, 720608
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 720619
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 760632
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_159_140 = load temp_158_140:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_160_140:i1 
                    #      temp_160_140 = icmp i32 Eq 94_0, temp_159_140 
    li      a0, 680596
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
    li      a1, 680600
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 720612
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_161_140:i1 
                    #      temp_161_140 = icmp i32 Eq 37_0, temp_159_140 
    li      a0, 37
    li      a2, 680595
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_162_140:i1 
                    #      temp_162_140 = Or i1 temp_161_140, temp_160_140 
                    #      new_var temp_163_140:i1 
                    #      temp_163_140 = icmp i32 Eq 47_0, temp_159_140 
    li      a0, 680595
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 680594
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_164_140:i1 
                    #      temp_164_140 = Or i1 temp_163_140, temp_162_140 
                    #      new_var temp_165_140:i1 
                    #      temp_165_140 = icmp i32 Eq temp_159_140, 42_0 
    li      a0, 680593
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 680592
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_166_140:i1 
                    #      temp_166_140 = Or i1 temp_165_140, temp_164_140 
                    #      br i1 temp_166_140, label while.body_141, label while.exit_141 
    li      a0, 680591
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .while.body_141
    j       .while.exit_141
                    #      label while.body_141: 
.while.body_141:
                    #      new_var temp_167_143:i32 
                    #      temp_167_143 =  Call i32 find_0() 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    find
    li      a0, 680589
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 680584
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_168_143:i1 
                    #      temp_168_143 = icmp i32 Eq temp_167_143, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_168_143, label branch_true_144, label branch_false_144 
    bnez    s2, .branch_true_144
    j       .branch_false_144
                    #      label branch_true_144: 
.branch_true_144:
                    #      jump label: while.exit_141 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      s2, 680583
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 680584
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 680596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 680589
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 680589
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 920832
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 920832
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .while.exit_141
                    #      label while.exit_141: 
.while.exit_141:
                    #       Call void chapush_0(42_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 680589
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_138 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s1, 1000876
    add     s1,sp,s1
    lw      s7,0(s1)
    li      s2, 960851
    add     s2,sp,s2
    lb      s11,0(s2)
    li      a1, 680596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 960851
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 680590
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 720619
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 720619
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 720608
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 720620
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 720620
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 760632
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000876
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 760632
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_138
                    #      label branch_false_144: 
.branch_false_144:
                    #      jump label: while.head_141 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 680596
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 680583
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 680584
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 680590
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 720619
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 720619
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 720608
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 720620
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 720620
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 760632
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a4, 760632
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .while.head_141
                    #      label branch_false_138: 
.branch_false_138:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_169_147:i32 
                    #      temp_169_147 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 720620
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_170_147:Array:i32:[Some(10000_0)] 
                    #      temp_170_147 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a1, get
                    #occupy reg a1 with *get_0
    li      a0, 680576
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_171_147:ptr->i32 
                    #      new_var temp_172_147:i32 
                    #      temp_171_147 = getelementptr temp_170_147:Array:i32:[Some(10000_0)] [Some(temp_169_147)] 
    li      a1, 0
    li      a0, 680572
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 720619
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 760632
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_172_147 = load temp_171_147:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_173_147:i1 
                    #      temp_173_147 = icmp i32 Eq temp_172_147, 47_0 
    li      a1, 640568
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 47
    li      a2, 680576
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_173_147, label branch_true_148, label branch_false_148 
    bnez    a2, .branch_true_148
    j       .branch_false_148
                    #      label while.head_151: 
.while.head_151:
                    #      new_var temp_174_150:i32 
                    #      temp_174_150 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    li      a0, 640564
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_175_150:Array:i32:[Some(10000_0)] 
                    #      temp_175_150 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      a1, chas
                    #occupy reg a1 with *chas_0
    li      a0, 640556
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_176_150:ptr->i32 
                    #      new_var temp_177_150:i32 
                    #      temp_176_150 = getelementptr temp_175_150:Array:i32:[Some(10000_0)] [Some(temp_174_150)] 
    li      a1, 0
    li      a0, 640552
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 640563
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 680572
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_177_150 = load temp_176_150:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_178_150:i1 
                    #      temp_178_150 = icmp i32 Eq 94_0, temp_177_150 
    li      a0, 600540
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
    li      a1, 600544
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 640556
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_179_150:i1 
                    #      temp_179_150 = icmp i32 Eq 37_0, temp_177_150 
    li      a0, 37
    li      a2, 600539
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_180_150:i1 
                    #      temp_180_150 = Or i1 temp_179_150, temp_178_150 
                    #      new_var temp_181_150:i1 
                    #      temp_181_150 = icmp i32 Eq 47_0, temp_177_150 
    li      a0, 600539
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 600538
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_182_150:i1 
                    #      temp_182_150 = Or i1 temp_181_150, temp_180_150 
                    #      new_var temp_183_150:i1 
                    #      temp_183_150 = icmp i32 Eq temp_177_150, 42_0 
    li      a0, 600537
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 600536
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_184_150:i1 
                    #      temp_184_150 = Or i1 temp_183_150, temp_182_150 
                    #      br i1 temp_184_150, label while.body_151, label while.exit_151 
    li      a0, 600535
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .while.body_151
    j       .while.exit_151
                    #      label while.body_151: 
.while.body_151:
                    #      new_var temp_185_153:i32 
                    #      temp_185_153 =  Call i32 find_0() 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    find
    li      a0, 600533
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 600528
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_186_153:i1 
                    #      temp_186_153 = icmp i32 Eq temp_185_153, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_186_153, label branch_true_154, label branch_false_154 
    bnez    s2, .branch_true_154
    j       .branch_false_154
                    #      label branch_true_154: 
.branch_true_154:
                    #      jump label: while.exit_151 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      s2, 600527
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 600528
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 600540
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 600533
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 600533
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 920832
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 920832
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .while.exit_151
                    #      label while.exit_151: 
.while.exit_151:
                    #       Call void chapush_0(47_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 600533
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_148 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s1, 1000876
    add     s1,sp,s1
    lw      s7,0(s1)
    li      s2, 960851
    add     s2,sp,s2
    lb      s11,0(s2)
    li      a1, 600540
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 960851
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 600534
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 640563
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 640563
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 640552
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 640564
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 640564
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 680572
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000876
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 680572
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_148
                    #      label branch_false_154: 
.branch_false_154:
                    #      jump label: while.head_151 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 600540
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 600527
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 600528
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 600534
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 640563
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 640563
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 640552
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 640564
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 640564
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 680572
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a4, 680572
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .while.head_151
                    #      label branch_false_148: 
.branch_false_148:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_187_157:i32 
                    #      temp_187_157 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 640564
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_188_157:Array:i32:[Some(10000_0)] 
                    #      temp_188_157 = load *get_0:ptr->i32 
                    #   load label get as ptr to reg
    la      a1, get
                    #occupy reg a1 with *get_0
    li      a0, 600520
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_189_157:ptr->i32 
                    #      new_var temp_190_157:i32 
                    #      temp_189_157 = getelementptr temp_188_157:Array:i32:[Some(10000_0)] [Some(temp_187_157)] 
    li      a1, 0
    li      a0, 600516
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 640563
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 680572
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_190_157 = load temp_189_157:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_191_157:i1 
                    #      temp_191_157 = icmp i32 Eq temp_190_157, 37_0 
    li      a1, 560512
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 37
    li      a2, 600520
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_191_157, label branch_true_158, label branch_false_158 
    bnez    a2, .branch_true_158
    j       .branch_false_158
                    #      label while.head_161: 
.while.head_161:
                    #      new_var temp_192_160:i32 
                    #      temp_192_160 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    li      a0, 560508
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_193_160:Array:i32:[Some(10000_0)] 
                    #      temp_193_160 = load *chas_0:ptr->i32 
                    #   load label chas as ptr to reg
    la      a1, chas
                    #occupy reg a1 with *chas_0
    li      a0, 560500
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_194_160:ptr->i32 
                    #      new_var temp_195_160:i32 
                    #      temp_194_160 = getelementptr temp_193_160:Array:i32:[Some(10000_0)] [Some(temp_192_160)] 
    li      a1, 0
    li      a0, 560496
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 560507
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 600516
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_195_160 = load temp_194_160:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_196_160:i1 
                    #      temp_196_160 = icmp i32 Eq 94_0, temp_195_160 
    li      a0, 520484
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 94
    li      a1, 520488
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 560500
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_197_160:i1 
                    #      temp_197_160 = icmp i32 Eq 37_0, temp_195_160 
    li      a0, 37
    li      a2, 520483
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_198_160:i1 
                    #      temp_198_160 = Or i1 temp_197_160, temp_196_160 
                    #      new_var temp_199_160:i1 
                    #      temp_199_160 = icmp i32 Eq 47_0, temp_195_160 
    li      a0, 520483
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 520482
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_200_160:i1 
                    #      temp_200_160 = Or i1 temp_199_160, temp_198_160 
                    #      new_var temp_201_160:i1 
                    #      temp_201_160 = icmp i32 Eq temp_195_160, 42_0 
    li      a0, 520481
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 520480
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_202_160:i1 
                    #      temp_202_160 = Or i1 temp_201_160, temp_200_160 
                    #      br i1 temp_202_160, label while.body_161, label while.exit_161 
    li      a0, 520479
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .while.body_161
    j       .while.exit_161
                    #      label while.body_161: 
.while.body_161:
                    #      new_var temp_203_163:i32 
                    #      temp_203_163 =  Call i32 find_0() 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    find
    li      a0, 520477
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 520472
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_204_163:i1 
                    #      temp_204_163 = icmp i32 Eq temp_203_163, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_204_163, label branch_true_164, label branch_false_164 
    bnez    s2, .branch_true_164
    j       .branch_false_164
                    #      label branch_true_164: 
.branch_true_164:
                    #      jump label: while.exit_161 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      s2, 520471
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 520472
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 520484
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 520477
    add     a1,sp,a1
    lb      a0,0(a1)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a1, 520477
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 920832
    add     a1,sp,a1
    ld      s5,0(a1)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a1, 920832
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 1000868
    add     a1,sp,a1
    lw      s1,0(a1)
    j       .while.exit_161
                    #      label while.exit_161: 
.while.exit_161:
                    #       Call void chapush_0(37_0) 
                    #saved register dumping to mem
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 520477
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 37
                    #arg load ended
    call    chapush
                    #      jump label: branch_false_158 
    li      a0, 1000875
    add     a0,sp,a0
    lb      s9,0(a0)
    li      s1, 1000876
    add     s1,sp,s1
    lw      s7,0(s1)
    li      s2, 960851
    add     s2,sp,s2
    lb      s11,0(s2)
    li      a1, 520484
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 960851
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1040884
    add     s3,sp,s3
    lw      s2,0(s3)
    li      s4, 1000864
    add     s4,sp,s4
    lw      s8,0(s4)
    li      s5, 960856
    add     s5,sp,s5
    ld      s10,0(s5)
    li      a0, 1000875
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 1000864
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1040884
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 520478
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 560507
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 560507
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 560496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 560508
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 960856
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 560508
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 600516
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000876
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 600516
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_158
                    #      label branch_false_164: 
.branch_false_164:
                    #      jump label: while.head_161 
    li      s1, 1000875
    add     s1,sp,s1
    lb      s9,0(s1)
    li      s3, 1000876
    add     s3,sp,s3
    lw      s7,0(s3)
    li      s4, 960851
    add     s4,sp,s4
    lb      s11,0(s4)
    li      a1, 520484
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 520471
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 1040884
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 1000864
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 520472
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 960856
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s6, 1000864
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 960856
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1080943
    add     a0,sp,a0
    lb      s6,0(a0)
    li      s4, 960851
    add     s4,sp,s4
    sb      s4,0(s4)
    li      a0, 1080943
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 1080948
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 1000876
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1000880
    add     a0,sp,a0
    ld      s3,0(a0)
    li      a2, 520478
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 1000880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 560507
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 560507
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 560496
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 560508
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040884
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 560508
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    ld      s5,0(a3)
    li      a3, 920832
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 600516
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 1000875
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a4, 600516
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1000868
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .while.head_161
                    #      label branch_false_158: 
.branch_false_158:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_205_99:i32 
                    #      temp_205_99 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    li      a0, 560508
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_206_99:ptr->i32 
                    #      temp_206_99 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_205_99)] 
    li      a1, 0
    li      a0, 520464
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 560507
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 600516
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
                    #occupy reg a3 with get2_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
                    #      store 32_0:i32 temp_206_99:ptr->i32 
    li      a0, 32
    sd      a0,0(a1)
                    #      mu get2_0:838 
                    #      get2_0 = chi get2_0:838 
                    #      new_var temp_207_99:i32 
                    #      temp_207_99 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    lw      a3,0(a0)
                    #      new_var temp_208_99:i32 
                    #      temp_208_99 = Add i32 temp_207_99, 1_0 
    li      a0, 1
    li      a1, 520456
    add     a1,sp,a1
    sd      a1,0(a1)
    add     a1,a3,a0
                    #      store temp_208_99:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    sd      a1,0(a0)
                    #      jump label: L9_0 
    li      s9, 1000875
    add     s9,sp,s9
    sb      s9,0(s9)
    li      a0, 1080920
    add     a0,sp,a0
    lw      s9,0(a0)
    li      s7, 1000876
    add     s7,sp,s7
    sw      s7,0(s7)
    li      a0, 1080920
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1080924
    add     a0,sp,a0
    lw      s7,0(a0)
    li      s11, 960851
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a0, 1080924
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1040908
    add     a0,sp,a0
    lw      s11,0(a0)
    li      a1, 520448
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 1040884
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 1040908
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1040904
    add     a0,sp,a0
    lw      s2,0(a0)
    li      s8, 1000864
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s10, 960856
    add     s10,sp,s10
    sd      s10,0(s10)
    li      a0, 1040904
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1040912
    add     a0,sp,a0
    ld      s10,0(a0)
    li      s3, 1000880
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a0, 1040912
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1040900
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a2, 520464
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 1040900
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120972
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 1120972
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 520452
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1080944
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 920832
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a5, 1040888
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a3, 1080944
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1080936
    add     a3,sp,a3
    lw      a5,0(a3)
    li      a3, 1080936
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1120971
    add     a4,sp,a4
    lb      a3,0(a4)
    li      s1, 1000868
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 1120971
    add     a4,sp,a4
    sb      a4,0(a4)
    li      a4, 1080928
    add     a4,sp,a4
    ld      s1,0(a4)
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_78_93:i32 
                    #      temp_78_93 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      s5,0(a1)
                    #      new_var temp_79_93:i32 
                    #      temp_79_93 = Add i32 temp_78_93, 1_0 
    li      s8, 1
    add     a1,s5,s8
                    #      store temp_79_93:i32 *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s8, i
                    #occupy reg s8 with *i_0
    sd      a1,0(s8)
                    #      jump label: while.head_92 
    li      a6, 1120960
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s9, 1080920
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a7, 1080952
    add     a7,sp,a7
    sd      a7,0(a7)
    li      s7, 1080924
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s11, 1040908
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a1, 1040892
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 1040904
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s8, 1160980
    add     s8,sp,s8
    lw      s2,0(s8)
    li      s8, 1160980
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s10, 1040912
    add     s10,sp,s10
    sd      s10,0(s10)
    li      s6, 1080943
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s4, 1080948
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s3, 1040900
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 1080944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120976
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a2, 1120972
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a4, 1120964
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a0, 1120976
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 1120971
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 1120980
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1040896
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a5, 1080936
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a3, 1120980
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s1, 1080928
    add     s1,sp,s1
    sd      s1,0(s1)
    j       .while.head_92
                    #      label while.head_171: 
.while.head_171:
                    #      new_var temp_209_170:i32 
                    #      temp_209_170 = load *chat_0:ptr->i32 
                    #   load label chat as ptr to reg
    la      a1, chat
                    #occupy reg a1 with *chat_0
    lw      a4,0(a1)
                    #      new_var temp_210_170:i1 
                    #      temp_210_170 = icmp i32 Sgt temp_209_170, 0_0 
    li      a5, 0
    slt     a6,a5,a4
                    #      br i1 temp_210_170, label while.body_171, label while.exit_171 
    bnez    a6, .while.body_171
    j       .while.exit_171
                    #      label while.body_171: 
.while.body_171:
                    #      new_var temp_211_172:i32 
                    #      temp_211_172 =  Call i32 chapop_0() 
                    #saved register dumping to mem
    li      a1, 1160980
    add     a1,sp,a1
    sw      s2,0(a1)
    li      a5, 1120976
    add     a5,sp,a5
    sw      s3,0(a5)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    chapop
    li      a0, 1120980
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 520436
    add     a7,sp,a7
    sw      a0,0(a7)
                    #      c_172 = i32 temp_211_172 
    mv      s1, a0
                    #      new_var temp_212_172:i32 
                    #      temp_212_172 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      s2, ii
                    #occupy reg s2 with *ii_0
    lw      s3,0(s2)
                    #      new_var temp_213_172:ptr->i32 
                    #      temp_213_172 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_212_172)] 
    li      s4, 0
    li      s5, 1
    mul     s6,s5,s3
                    #occupy reg s6 with get2_0
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
                    #      store 32_0:i32 temp_213_172:ptr->i32 
    li      s7, 32
    sd      s7,0(s4)
                    #      mu get2_0:870 
                    #      get2_0 = chi get2_0:870 
                    #      new_var temp_214_172:i32 
                    #      temp_214_172 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      s8, ii
                    #occupy reg s8 with *ii_0
    lw      s9,0(s8)
                    #      new_var temp_215_172:i32 
                    #      temp_215_172 = Add i32 temp_214_172, 1_0 
                    #found literal reg Some(s5) already exist with 1_0
    add     s10,s9,s5
                    #      new_var temp_216_172:ptr->i32 
                    #      temp_216_172 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_215_172)] 
    li      s11, 0
                    #found literal reg Some(s5) already exist with 1_0
    mul     a1,s5,s10
                    #occupy reg a1 with get2_0
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,s11
                    #      store c_172:i32 temp_216_172:ptr->i32 
    sd      s1,0(s11)
                    #      mu get2_0:882 
                    #      get2_0 = chi get2_0:882 
                    #      new_var temp_217_172:i32 
                    #      temp_217_172 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      a5,0(a1)
                    #      new_var temp_218_172:i32 
                    #      temp_218_172 = Add i32 temp_217_172, 2_0 
    li      a1, 2
    add     a7,a5,a1
                    #      store temp_218_172:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    sd      a7,0(a1)
                    #      jump label: while.head_171 
    li      a6, 520443
    add     a6,sp,a6
    sb      a6,0(a6)
    li      s9, 520412
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a7, 520392
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s11, 520400
    add     s11,sp,s11
    sd      s11,0(s11)
    li      s5, 1160980
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s10, 520408
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s4, 520416
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s3, 520428
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 520436
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120976
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a4, 520444
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a0, 1120976
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 1120972
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1120980
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s5, 1160980
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a5, 520396
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s1, 520432
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_171
                    #      label while.exit_171: 
.while.exit_171:
                    #      new_var temp_219_87:i32 
                    #      temp_219_87 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a1, ii
                    #occupy reg a1 with *ii_0
    lw      a5,0(a1)
                    #      new_var temp_220_87:ptr->i32 
                    #      temp_220_87 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_219_87)] 
    li      a7, 0
    li      s1, 1
    mul     s4,s1,a5
                    #occupy reg s4 with get2_0
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,a7
                    #      store 64_0:i32 temp_220_87:ptr->i32 
    li      s5, 64
    sd      s5,0(a7)
                    #      mu get2_0:898 
                    #      get2_0 = chi get2_0:898 
                    #      store 1_0:i32 *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s6, i
                    #occupy reg s6 with *i_0
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s6)
                    #      jump label: while.head_180 
    j       .while.head_180
                    #      label while.head_180: 
.while.head_180:
                    #      new_var temp_221_179:i32 
                    #      temp_221_179 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      s1,0(a1)
                    #      new_var temp_222_179:Array:i32:[Some(10000_0)] 
                    #      temp_222_179 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s4, get2
                    #occupy reg s4 with *get2_0
    lw      s5,0(s4)
                    #      new_var temp_223_179:ptr->i32 
                    #      new_var temp_224_179:i32 
                    #      temp_223_179 = getelementptr temp_222_179:Array:i32:[Some(10000_0)] [Some(temp_221_179)] 
    li      s6, 0
    li      s7, 1
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_224_179 = load temp_223_179:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_225_179:i1 
                    #      temp_225_179 = icmp i32 Ne temp_224_179, 64_0 
    li      s9, 64
    xor     s10,s8,s9
    snez    s10, s10
                    #      br i1 temp_225_179, label while.body_180, label while.exit_180 
    bnez    s10, .while.body_180
    j       .while.exit_180
                    #      label while.body_180: 
.while.body_180:
                    #      new_var temp_226_182:i32 
                    #      temp_226_182 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    lw      s4,0(a1)
                    #      new_var temp_227_182:Array:i32:[Some(10000_0)] 
                    #      temp_227_182 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s7, get2
                    #occupy reg s7 with *get2_0
    lw      s9,0(s7)
                    #      new_var temp_228_182:ptr->i32 
                    #      new_var temp_229_182:i32 
                    #      temp_228_182 = getelementptr temp_227_182:Array:i32:[Some(10000_0)] [Some(temp_226_182)] 
    li      s11, 0
    li      a1, 1
    add     s11,s11,s9
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_229_182 = load temp_228_182:ptr->i32 
    lw      a1,0(s11)
                    #      new_var temp_230_182:i1 
                    #      temp_230_182 = icmp i32 Eq 94_0, temp_229_182 
    li      s7, 94
    li      a0, 1120980
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s7,a1
    seqz    a0, a0
                    #      new_var temp_231_182:i1 
                    #      temp_231_182 = icmp i32 Eq 37_0, temp_229_182 
    li      s7, 37
    li      a0, 440331
    add     a0,sp,a0
    sb      a0,0(a0)
    xor     a0,s7,a1
    seqz    a0, a0
                    #      new_var temp_232_182:i1 
                    #      temp_232_182 = Or i1 temp_231_182, temp_230_182 
                    #      new_var temp_233_182:i1 
                    #      temp_233_182 = icmp i32 Eq 47_0, temp_229_182 
    li      a0, 440330
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 47
    li      a2, 1120972
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_234_182:i1 
                    #      temp_234_182 = Or i1 temp_233_182, temp_232_182 
                    #      new_var temp_235_182:i1 
                    #      temp_235_182 = icmp i32 Eq 42_0, temp_229_182 
    li      a0, 440329
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 42
    li      a2, 440328
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_236_182:i1 
                    #      temp_236_182 = Or i1 temp_235_182, temp_234_182 
                    #      new_var temp_237_182:i1 
                    #      temp_237_182 = icmp i32 Eq 45_0, temp_229_182 
    li      a0, 440327
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 45
    li      a2, 440326
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_238_182:i1 
                    #      temp_238_182 = Or i1 temp_237_182, temp_236_182 
                    #      new_var temp_239_182:i1 
                    #      temp_239_182 = icmp i32 Eq temp_229_182, 43_0 
    li      a0, 440325
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 43
    li      a2, 440324
    add     a2,sp,a2
    sb      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_240_182:i1 
                    #      temp_240_182 = Or i1 temp_239_182, temp_238_182 
                    #      br i1 temp_240_182, label branch_true_183, label branch_false_183 
    li      a0, 440323
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .branch_true_183
    j       .branch_false_183
                    #      label branch_true_183: 
.branch_true_183:
                    #      new_var temp_241_184:i32 
                    #      temp_241_184 =  Call i32 intpop_0() 
                    #saved register dumping to mem
    li      s1, 520372
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1160980
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1120976
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 480348
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 520368
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 480360
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 440331
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s8, 480356
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 480344
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 480355
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s11, 440336
    add     s11,sp,s11
    sd      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    intpop
    li      a0, 440321
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      a_184 = i32 temp_241_184 
    mv      s1, a0
                    #      new_var temp_242_184:i32 
                    #      temp_242_184 =  Call i32 intpop_0() 
                    #saved register dumping to mem
    li      s1, 440312
    add     s1,sp,s1
    sw      s1,0(s1)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    intpop
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s2, 440308
    add     s2,sp,s2
    sw      a0,0(s2)
                    #      b_184 = i32 temp_242_184 
    mv      s3, a0
                    #      new_var c_184:i32 
                    #      jump label: L11_0 
    j       .L11_0
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_243_188:i32 
                    #      temp_243_188 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s1, i
                    #occupy reg s1 with *i_0
    lw      s2,0(s1)
                    #      new_var temp_244_188:Array:i32:[Some(10000_0)] 
                    #      temp_244_188 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s4, get2
                    #occupy reg s4 with *get2_0
    lw      s5,0(s4)
                    #      new_var temp_245_188:ptr->i32 
                    #      new_var temp_246_188:i32 
                    #      temp_245_188 = getelementptr temp_244_188:Array:i32:[Some(10000_0)] [Some(temp_243_188)] 
    li      s6, 0
    li      s7, 1
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_246_188 = load temp_245_188:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_247_188:i1 
                    #      temp_247_188 = icmp i32 Eq temp_246_188, 43_0 
    li      s9, 43
    xor     s10,s8,s9
    seqz    s10, s10
                    #      br i1 temp_247_188, label branch_true_189, label branch_false_189 
    bnez    s10, .branch_true_189
    j       .branch_false_189
                    #      label branch_true_189: 
.branch_true_189:
                    #      new_var temp_248_188:i32 
                    #      temp_248_188 = Add i32 a_184, b_184 
    add     s4,s1,s3
                    #      c_184 = i32 temp_248_188 
    mv      s7, s4
                    #      jump label: branch_false_189 
    li      s7, 440300
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s4, 400276
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s1, 440312
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .branch_false_189
                    #      label branch_false_189: 
.branch_false_189:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_249_191:i32 
                    #      temp_249_191 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s1, i
                    #occupy reg s1 with *i_0
    lw      s4,0(s1)
                    #      new_var temp_250_191:Array:i32:[Some(10000_0)] 
                    #      temp_250_191 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s7, get2
                    #occupy reg s7 with *get2_0
    lw      s9,0(s7)
                    #      new_var temp_251_191:ptr->i32 
                    #      new_var temp_252_191:i32 
                    #      temp_251_191 = getelementptr temp_250_191:Array:i32:[Some(10000_0)] [Some(temp_249_191)] 
    li      s11, 0
    li      s1, 1
    add     s11,s11,s9
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_252_191 = load temp_251_191:ptr->i32 
    lw      s1,0(s11)
                    #      new_var temp_253_191:i1 
                    #      temp_253_191 = icmp i32 Eq temp_252_191, 45_0 
    li      s7, 45
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s1,s7
    seqz    a0, a0
                    #      br i1 temp_253_191, label branch_true_192, label branch_false_192 
    bnez    a0, .branch_true_192
    j       .branch_false_192
                    #      label branch_true_192: 
.branch_true_192:
                    #      new_var temp_254_191:i32 
                    #      temp_254_191 = Sub i32 b_184, a_184 
    li      a0, 360259
    add     a0,sp,a0
    sb      a0,0(a0)
    sub     a0,s3,s7
                    #      c_184 = i32 temp_254_191 
    li      a1, 440332
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_192 
    li      s7, 440312
    add     s7,sp,s7
    sw      s7,0(s7)
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 360252
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440332
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a0, 440332
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 440322
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 360259
    add     a2,sp,a2
    lb      a0,0(a2)
    j       .branch_false_192
                    #      label branch_false_192: 
.branch_false_192:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_255_194:i32 
                    #      temp_255_194 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s7, i
                    #occupy reg s7 with *i_0
    li      a0, 360259
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s7)
                    #      new_var temp_256_194:Array:i32:[Some(10000_0)] 
                    #      temp_256_194 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s7, get2
                    #occupy reg s7 with *get2_0
    li      a0, 360248
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(s7)
                    #      new_var temp_257_194:ptr->i32 
                    #      new_var temp_258_194:i32 
                    #      temp_257_194 = getelementptr temp_256_194:Array:i32:[Some(10000_0)] [Some(temp_255_194)] 
    li      s7, 0
    li      a0, 360244
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 440332
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 440322
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a0,a1
    add     s7,s7,a2
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_258_194 = load temp_257_194:ptr->i32 
    lw      a0,0(s7)
                    #      new_var temp_259_194:i1 
                    #      temp_259_194 = icmp i32 Eq temp_258_194, 42_0 
    li      a1, 360248
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 42
    li      a2, 360244
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_259_194, label branch_true_195, label branch_false_195 
    bnez    a2, .branch_true_195
    j       .branch_false_195
                    #      label branch_true_195: 
.branch_true_195:
                    #      new_var temp_260_194:i32 
                    #      temp_260_194 = Mul i32 a_184, b_184 
    li      a0, 320236
    add     a0,sp,a0
    sw      a0,0(a0)
    mul     a0,a1,s3
                    #      c_184 = i32 temp_260_194 
    li      a1, 440312
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_195 
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 320228
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 320235
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 320236
    add     a2,sp,a2
    lw      a0,0(a2)
    j       .branch_false_195
                    #      label branch_false_195: 
.branch_false_195:
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_261_197:i32 
                    #      temp_261_197 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 320236
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_262_197:Array:i32:[Some(10000_0)] 
                    #      temp_262_197 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a1, get2
                    #occupy reg a1 with *get2_0
    li      a0, 320224
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_263_197:ptr->i32 
                    #      new_var temp_264_197:i32 
                    #      temp_263_197 = getelementptr temp_262_197:Array:i32:[Some(10000_0)] [Some(temp_261_197)] 
    li      a1, 0
    li      a0, 320220
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 320235
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 1120971
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_264_197 = load temp_263_197:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_265_197:i1 
                    #      temp_265_197 = icmp i32 Eq temp_264_197, 47_0 
    li      a1, 280216
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 47
    li      a2, 320224
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_265_197, label branch_true_198, label branch_false_198 
    bnez    a2, .branch_true_198
    j       .branch_false_198
                    #      label branch_true_198: 
.branch_true_198:
                    #      new_var temp_266_197:i32 
                    #      temp_266_197 = Div i32 b_184, a_184 
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
    div     a0,s3,a1
                    #      c_184 = i32 temp_266_197 
    li      a1, 440312
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_198 
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 280204
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 280212
    add     a2,sp,a2
    lw      a0,0(a2)
    j       .branch_false_198
                    #      label branch_false_198: 
.branch_false_198:
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_267_200:i32 
                    #      temp_267_200 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_268_200:Array:i32:[Some(10000_0)] 
                    #      temp_268_200 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a1, get2
                    #occupy reg a1 with *get2_0
    li      a0, 280200
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_269_200:ptr->i32 
                    #      new_var temp_270_200:i32 
                    #      temp_269_200 = getelementptr temp_268_200:Array:i32:[Some(10000_0)] [Some(temp_267_200)] 
    li      a1, 0
    li      a0, 280196
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 320220
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_270_200 = load temp_269_200:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_271_200:i1 
                    #      temp_271_200 = icmp i32 Eq temp_270_200, 37_0 
    li      a1, 240192
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 37
    li      a2, 280200
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_271_200, label branch_true_201, label branch_false_201 
    bnez    a2, .branch_true_201
    j       .branch_false_201
                    #      label branch_true_201: 
.branch_true_201:
                    #      new_var temp_272_200:i32 
                    #      temp_272_200 = Mod i32 b_184, a_184 
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
    rem     a0,s3,a1
                    #      c_184 = i32 temp_272_200 
    li      a1, 440312
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: branch_false_201 
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 240180
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 240187
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 240188
    add     a2,sp,a2
    lw      a0,0(a2)
    j       .branch_false_201
                    #      label branch_false_201: 
.branch_false_201:
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_273_203:i32 
                    #      temp_273_203 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a1, i
                    #occupy reg a1 with *i_0
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_274_203:Array:i32:[Some(10000_0)] 
                    #      temp_274_203 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a1, get2
                    #occupy reg a1 with *get2_0
    li      a0, 240176
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_275_203:ptr->i32 
                    #      new_var temp_276_203:i32 
                    #      temp_275_203 = getelementptr temp_274_203:Array:i32:[Some(10000_0)] [Some(temp_273_203)] 
    li      a1, 0
    li      a0, 240172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a2, 240187
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 280196
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_276_203 = load temp_275_203:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_277_203:i1 
                    #      temp_277_203 = icmp i32 Eq temp_276_203, 94_0 
    li      a1, 200168
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 94
    li      a2, 240176
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_277_203, label branch_true_204, label branch_false_204 
    bnez    a2, .branch_true_204
    j       .branch_false_204
                    #      label branch_true_204: 
.branch_true_204:
                    #      new_var temp_278_203:i32 
                    #      temp_278_203 =  Call i32 power_0(b_184, a_184) 
                    #saved register dumping to mem
    li      a1, 360260
    add     a1,sp,a1
    sw      s1,0(a1)
    li      s1, 440296
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 440304
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 400272
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 440292
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 400288
    add     s5,sp,s5
    sd      s6,0(s5)
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
    li      s7, 400284
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 400268
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 400283
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 360264
    add     s10,sp,s10
    sd      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 440304
    add     s11,sp,s11
    lw      a0,0(s11)
    li      s1, 440312
    add     s1,sp,s1
    lw      a1,0(s1)
                    #arg load ended
    call    power
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      c_184 = i32 temp_278_203 
    mv      a1, a0
                    #      jump label: branch_false_204 
    li      s2, 400268
    add     s2,sp,s2
    lw      s9,0(s2)
    li      s3, 320240
    add     s3,sp,s3
    ld      s7,0(s3)
    li      s11, 440304
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s4, 360264
    add     s4,sp,s4
    ld      s11,0(s4)
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
                    #found literal reg Some(s8) already exist with 400268_0
    add     s8,sp,s8
    sw      s2,0(s8)
    li      s5, 440296
    add     s5,sp,s5
    lw      s2,0(s5)
    li      s6, 400284
    add     s6,sp,s6
    lw      s8,0(s6)
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 400283
    add     a0,sp,a0
    lb      s10,0(a0)
    li      s6, 400284
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 400283
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 400288
    add     a0,sp,a0
    ld      s6,0(a0)
    li      s4, 360264
    add     s4,sp,s4
    sd      s4,0(s4)
    li      a0, 400288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 400272
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 320240
    add     s3,sp,s3
    sd      s3,0(s3)
    li      a0, 400272
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440304
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a0, 440304
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 200163
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 200164
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s5, 440296
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a2, 200164
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 440292
    add     a2,sp,a2
    lw      s5,0(a2)
    li      s1, 440312
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 440292
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 360260
    add     a2,sp,a2
    lw      s1,0(a2)
    j       .branch_false_204
                    #      label branch_false_204: 
.branch_false_204:
                    #      label L17_0: 
.L17_0:
                    #       Call void intpush_0(c_184) 
                    #saved register dumping to mem
    li      a1, 360260
    add     a1,sp,a1
    sw      s1,0(a1)
    li      s1, 440296
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 440304
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 400272
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 440292
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 400288
    add     s5,sp,s5
    sd      s6,0(s5)
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
    li      s7, 400284
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 400268
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 400283
    add     s9,sp,s9
    sb      s10,0(s9)
    li      s10, 360264
    add     s10,sp,s10
    sd      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 440300
    add     s11,sp,s11
    lw      a0,0(s11)
                    #arg load ended
    call    intpush
                    #      jump label: L18_0 
    j       .L18_0
                    #      label branch_false_183: 
.branch_false_183:
                    #      new_var temp_281_208:i32 
                    #      temp_281_208 = load *i_0:ptr->i32 
    li      a0, 440321
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label i as ptr to reg
    la      a0, i
                    #occupy reg a0 with *i_0
    li      a1, 440332
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_282_208:Array:i32:[Some(10000_0)] 
                    #      temp_282_208 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a0, get2
                    #occupy reg a0 with *get2_0
    li      a1, 200144
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_283_208:ptr->i32 
                    #      new_var temp_284_208:i32 
                    #      temp_283_208 = getelementptr temp_282_208:Array:i32:[Some(10000_0)] [Some(temp_281_208)] 
    li      a0, 0
    li      a1, 200140
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 440322
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 1120971
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_284_208 = load temp_283_208:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_285_208:i1 
                    #      temp_285_208 = icmp i32 Ne temp_284_208, 32_0 
    li      a0, 160136
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 32
    li      a2, 200144
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_285_208, label branch_true_209, label branch_false_209 
    bnez    a2, .branch_true_209
    j       .branch_false_209
                    #      label branch_true_209: 
.branch_true_209:
                    #      new_var temp_286_210:i32 
                    #      temp_286_210 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a0, i
                    #occupy reg a0 with *i_0
    li      a1, 160132
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_287_210:Array:i32:[Some(10000_0)] 
                    #      temp_287_210 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a0, get2
                    #occupy reg a0 with *get2_0
    li      a1, 160124
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_288_210:ptr->i32 
                    #      new_var temp_289_210:i32 
                    #      temp_288_210 = getelementptr temp_287_210:Array:i32:[Some(10000_0)] [Some(temp_286_210)] 
    li      a0, 0
    li      a1, 160120
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 160131
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 200140
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_289_210 = load temp_288_210:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_290_210:i32 
                    #      temp_290_210 = Sub i32 temp_289_210, 48_0 
    li      a0, 120112
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 48
    li      a2, 160124
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a1,a0
                    #       Call void intpush_0(temp_290_210) 
                    #saved register dumping to mem
    li      s1, 520372
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1160980
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1120976
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 480348
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 520368
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 480360
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 440331
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s8, 480356
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 480344
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 480355
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s11, 440336
    add     s11,sp,s11
    sd      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    intpush
                    #      store 1_0:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    li      s1, 1
    sd      s1,0(a0)
                    #      jump label: while.head_214 
    j       .while.head_214
                    #      label while.head_214: 
.while.head_214:
                    #      new_var temp_291_213:i32 
                    #      temp_291_213 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    lw      s1,0(a0)
                    #      new_var temp_292_213:i32 
                    #      temp_292_213 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s2, i
                    #occupy reg s2 with *i_0
    lw      s3,0(s2)
                    #      new_var temp_293_213:i32 
                    #      temp_293_213 = Add i32 temp_292_213, temp_291_213 
    add     s4,s3,s1
                    #      new_var temp_294_213:Array:i32:[Some(10000_0)] 
                    #      temp_294_213 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      s5, get2
                    #occupy reg s5 with *get2_0
    lw      s6,0(s5)
                    #      new_var temp_295_213:ptr->i32 
                    #      new_var temp_296_213:i32 
                    #      temp_295_213 = getelementptr temp_294_213:Array:i32:[Some(10000_0)] [Some(temp_293_213)] 
    li      s7, 0
    li      s8, 1
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_296_213 = load temp_295_213:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_297_213:i1 
                    #      temp_297_213 = icmp i32 Ne temp_296_213, 32_0 
    li      s10, 32
    xor     s11,s9,s10
    snez    s11, s11
                    #      br i1 temp_297_213, label while.body_214, label while.exit_214 
    bnez    s11, .while.body_214
    j       .while.exit_214
                    #      label while.body_214: 
.while.body_214:
                    #      new_var temp_298_215:i32 
                    #      temp_298_215 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    lw      s2,0(a0)
                    #      new_var temp_299_215:i32 
                    #      temp_299_215 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s5, i
                    #occupy reg s5 with *i_0
    lw      s8,0(s5)
                    #      new_var temp_300_215:i32 
                    #      temp_300_215 = Add i32 temp_299_215, temp_298_215 
    add     s10,s8,s2
                    #      new_var temp_301_215:Array:i32:[Some(10000_0)] 
                    #      temp_301_215 = load *get2_0:ptr->i32 
                    #   load label get2 as ptr to reg
    la      a0, get2
                    #occupy reg a0 with *get2_0
    lw      s5,0(a0)
                    #      new_var temp_302_215:ptr->i32 
                    #      new_var temp_303_215:i32 
                    #      temp_302_215 = getelementptr temp_301_215:Array:i32:[Some(10000_0)] [Some(temp_300_215)] 
    li      a0, 0
    li      a1, 120108
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    add     a0,a0,s5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_303_215 = load temp_302_215:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_304_215:i32 
                    #      temp_304_215 = Sub i32 temp_303_215, 48_0 
    li      a0, 40048
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 48
    li      a2, 120104
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a1,a0
                    #       Call void intadd_0(temp_304_215) 
                    #saved register dumping to mem
    li      s1, 120100
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 80068
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 120096
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 120092
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 80056
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 120088
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 80080
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 80064
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 80076
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 80060
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 80075
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    intadd
                    #      new_var temp_305_215:i32 
                    #      temp_305_215 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    lw      s1,0(a0)
                    #      new_var temp_306_215:i32 
                    #      temp_306_215 = Add i32 temp_305_215, 1_0 
    li      a0, 1
    add     s2,s1,a0
                    #      store temp_306_215:i32 *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    sd      s2,0(a0)
                    #      jump label: while.head_214 
    li      a1, 40044
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 120108
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s2, 40032
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a2, 40040
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s5, 120104
    add     s5,sp,s5
    lw      a2,0(s5)
    li      a0, 120108
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s5, 120104
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s1, 40036
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_214
                    #      label while.exit_214: 
.while.exit_214:
                    #      new_var temp_307_210:i32 
                    #      temp_307_210 = load *ii_0:ptr->i32 
                    #   load label ii as ptr to reg
    la      a0, ii
                    #occupy reg a0 with *ii_0
    lw      s2,0(a0)
                    #      new_var temp_308_210:i32 
                    #      temp_308_210 = Sub i32 temp_307_210, 1_0 
    li      s5, 1
    sub     s8,s2,s5
                    #      new_var temp_309_210:i32 
                    #      temp_309_210 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s10, i
                    #occupy reg s10 with *i_0
    lw      a0,0(s10)
                    #      new_var temp_310_210:i32 
                    #      temp_310_210 = Add i32 temp_309_210, temp_308_210 
    add     s5,a0,s8
                    #      store temp_310_210:i32 *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s10, i
                    #occupy reg s10 with *i_0
    sd      s5,0(s10)
                    #      jump label: branch_false_209 
    li      s9, 80076
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 480344
    add     s10,sp,s10
    lw      s9,0(s10)
    li      s7, 80080
    add     s7,sp,s7
    sd      s7,0(s7)
    li      a0, 40020
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 440331
    add     a0,sp,a0
    lb      s7,0(a0)
    li      s11, 80075
    add     s11,sp,s11
    sb      s11,0(s11)
    li      a0, 440331
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 440336
    add     a0,sp,a0
    ld      s11,0(a0)
    li      a1, 120108
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 440336
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 160132
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s2, 40028
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 160132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1160980
    add     a0,sp,a0
    lw      s2,0(a0)
    li      s8, 40024
    add     s8,sp,s8
    sw      s8,0(s8)
    li      a0, 1160980
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 480356
    add     a0,sp,a0
    lw      s8,0(a0)
    li      s10, 480344
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 480356
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 480355
    add     a0,sp,a0
    lb      s10,0(a0)
    li      s6, 120088
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 480355
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 480360
    add     a0,sp,a0
    ld      s6,0(a0)
    li      s4, 120092
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a0, 480360
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 480348
    add     a0,sp,a0
    lw      s4,0(a0)
    li      s3, 120096
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a0, 480348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1120976
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a2, 120104
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 1120976
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 160131
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 160131
    add     a0,sp,a0
    sb      a0,0(a0)
    li      s5, 40016
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 160120
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 520368
    add     a3,sp,a3
    lw      s5,0(a3)
    li      a3, 520368
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 520444
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 200140
    add     a4,sp,a4
    lw      a3,0(a4)
    li      s1, 120100
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a4, 200140
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 520372
    add     a4,sp,a4
    lw      s1,0(a4)
    j       .branch_false_209
                    #      label branch_false_209: 
.branch_false_209:
                    #      label L18_0: 
.L18_0:
                    #      label L19_0: 
.L19_0:
                    #      new_var temp_279_181:i32 
                    #      temp_279_181 = load *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      a0, i
                    #occupy reg a0 with *i_0
    lw      a1,0(a0)
                    #      new_var temp_280_181:i32 
                    #      temp_280_181 = Add i32 temp_279_181, 1_0 
    li      s1, 1
    add     s2,a1,s1
                    #      store temp_280_181:i32 *i_0:ptr->i32 
                    #   load label i as ptr to reg
    la      s3, i
                    #occupy reg s3 with *i_0
    sd      s2,0(s3)
                    #      jump label: while.head_180 
    li      s4, 440300
    add     s4,sp,s4
    sw      s11,0(s4)
    li      a1, 200152
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 200148
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s5, 1160980
    add     s5,sp,s5
    lw      s2,0(s5)
    li      a0, 1120976
    add     a0,sp,a0
    lw      s3,0(a0)
    li      a2, 200163
    add     a2,sp,a2
    sb      a2,0(a2)
    li      s1, 1120972
    add     s1,sp,s1
    lw      a2,0(s1)
    li      a0, 1120976
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 240172
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1120980
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s5, 1160980
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 1120980
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 520444
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 1120971
    add     a4,sp,a4
    lb      a3,0(a4)
    li      s1, 1120972
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_180
                    #      label while.exit_180: 
.while.exit_180:
                    #      new_var temp_311_87:Array:i32:[Some(10000_0)] 
                    #      temp_311_87 = load *ints_0:ptr->i32 
                    #   load label ints as ptr to reg
    la      a1, ints
                    #occupy reg a1 with *ints_0
    lw      s4,0(a1)
                    #      new_var temp_312_87:ptr->i32 
                    #      new_var temp_313_87:i32 
                    #      temp_312_87 = getelementptr temp_311_87:Array:i32:[Some(10000_0)] [Some(1_0)] 
    li      s7, 0
    li      s9, 1
    li      s11, 1
    add     s7,s7,s4
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_313_87 = load temp_312_87:ptr->i32 
    lw      a1,0(s7)
                    #       Call void putint_0(temp_313_87) 
                    #saved register dumping to mem
    li      s1, 520372
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1160980
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 1120976
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 40012
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 520368
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 480360
    add     s6,sp,s6
    sd      s6,0(s6)
    sd      s7,8(sp)
    li      s7, 480356
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 480355
    add     s8,sp,s8
    sb      s10,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1120980
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      ret 0_0 
    li      a0, 1160992
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s9, 1160984
    add     s9,sp,s9
    ld      s0,0(s9)
    li      a0, 1160992
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      s10, 1161000
    li      s10, 1161000
    add     sp,s10,sp
    ret
.section        .data
    .align 4
    .globl get2
                    #      global Array:i32:[Some(10000_0)] get2_0 
    .type get2,@object
get2:
    .zero 40000
    .align 4
    .globl get
                    #      global Array:i32:[Some(10000_0)] get_0 
    .type get,@object
get:
    .zero 40000
    .align 4
    .globl c
                    #      global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl ii
                    #      global i32 ii_0 
    .type ii,@object
ii:
    .word 1
    .align 4
    .globl i
                    #      global i32 i_0 
    .type i,@object
i:
    .word 0
    .align 4
    .globl chat
                    #      global i32 chat_0 
    .type chat,@object
chat:
    .word 0
    .align 4
    .globl chas
                    #      global Array:i32:[Some(10000_0)] chas_0 
    .type chas,@object
chas:
    .zero 40000
    .align 4
    .globl intt
                    #      global i32 intt_0 
    .type intt,@object
intt:
    .word 0
    .align 4
    .globl ints
                    #      global Array:i32:[Some(10000_0)] ints_0 
    .type ints,@object
ints:
    .zero 40000
