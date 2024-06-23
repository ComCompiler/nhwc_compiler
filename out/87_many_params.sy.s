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
                    #      Define sort_0 [arr_16, len_16] -> sort_ret_0 
    .globl sort
    .type sort,@function
sort:
                    #mem layout:|ra_sort:8|s0_sort:8|arr:8|len:4|i:4|temp_0:4|temp_1:1|none:3|temp_2:4|j:4|temp_3:1|none:7|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:4|temp_8:1|none:3|temp_9:8|temp_10:4|temp:4|temp_11:8|temp_12:8|temp_13:4|none:4|temp_14:8|temp_15:4|temp_16:4
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
                    #      new_var arr_16:ptr->i32 
                    #      alloc i32 i_18 
                    #      alloc i32 temp_0_20 
                    #      alloc i1 temp_1_20 
                    #      alloc i32 temp_2_22 
                    #      alloc i32 j_22 
                    #      alloc i1 temp_3_24 
                    #      alloc ptr->i32 temp_4_27 
                    #      alloc i32 temp_5_27 
                    #      alloc ptr->i32 temp_6_27 
                    #      alloc i32 temp_7_27 
                    #      alloc i1 temp_8_27 
                    #      alloc ptr->i32 temp_9_29 
                    #      alloc i32 temp_10_29 
                    #      alloc i32 temp_29 
                    #      alloc ptr->i32 temp_11_29 
                    #      alloc ptr->i32 temp_12_29 
                    #      alloc i32 temp_13_29 
                    #      alloc ptr->i32 temp_14_29 
                    #      alloc i32 temp_15_26 
                    #      alloc i32 temp_16_22 
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } | 
                    #      label L5_0: 
.L5_0:
                    #      i_18 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_21 
    j       .while.head_21
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } | 
                    #      label while.head_21: 
.while.head_21:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = Sub i32 len_16, 1_0 
    li      a3, 1
    sub     a4,a1,a3
                    #      new_var temp_1_20:i1 
                    #      temp_1_20 = icmp i32 Slt i_18, temp_0_20 
    slt     a5,a2,a4
                    #      br i1 temp_1_20, label while.body_21, label while.exit_21 
    bnez    a5, .while.body_21
    j       .while.exit_21
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } | 
                    #      label while.body_21: 
.while.body_21:
                    #      new_var temp_2_22:i32 
                    #      temp_2_22 = Add i32 i_18, 1_0 
    li      a3, 1
    add     a6,a2,a3
                    #      j_22 = i32 temp_2_22 
    mv      a7, a6
                    #      jump label: while.head_25 
    j       .while.head_25
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } | 
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_3_24:i1 
                    #      temp_3_24 = icmp i32 Slt j_22, len_16 
    slt     a3,a7,a1
                    #      br i1 temp_3_24, label while.body_25, label while.exit_25 
    bnez    a3, .while.body_25
    j       .while.exit_25
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_24, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } | 
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_4_27:ptr->i32 
                    #      new_var temp_5_27:i32 
                    #      temp_4_27 = getelementptr arr_16:ptr->i32 [Some(j_22)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_5_27 = load temp_4_27:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_6_27:ptr->i32 
                    #      new_var temp_7_27:i32 
                    #      temp_6_27 = getelementptr arr_16:ptr->i32 [Some(i_18)] 
    li      s4, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_7_27 = load temp_6_27:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_8_27:i1 
                    #      temp_8_27 = icmp i32 Slt temp_7_27, temp_5_27 
    slt     s6,s5,s3
                    #      br i1 temp_8_27, label branch_true_28, label branch_false_28 
    bnez    s6, .branch_true_28
    j       .branch_false_28
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_24, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } |     s1:Freed { symidx: temp_4_27, tracked: true } |     s3:Freed { symidx: temp_5_27, tracked: true } |     s4:Freed { symidx: temp_6_27, tracked: true } |     s5:Freed { symidx: temp_7_27, tracked: true } |     s6:Freed { symidx: temp_8_27, tracked: true } | 
                    #      label branch_true_28: 
.branch_true_28:
                    #      new_var temp_9_29:ptr->i32 
                    #      new_var temp_10_29:i32 
                    #      temp_9_29 = getelementptr arr_16:ptr->i32 [Some(i_18)] 
    li      s2, 0
    li      s7, 1
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_10_29 = load temp_9_29:ptr->i32 
    lw      s8,0(s2)
                    #      temp_29 = i32 temp_10_29 
    mv      s9, s8
                    #      new_var temp_11_29:ptr->i32 
                    #      temp_11_29 = getelementptr arr_16:ptr->i32 [Some(i_18)] 
    li      s10, 0
                    #found literal reg Some(s7) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_12_29:ptr->i32 
                    #      new_var temp_13_29:i32 
                    #      temp_12_29 = getelementptr arr_16:ptr->i32 [Some(j_22)] 
    li      s11, 0
                    #found literal reg Some(s7) already exist with 1_0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_13_29 = load temp_12_29:ptr->i32 
    lw      s7,0(s11)
                    #      store temp_13_29:i32 temp_11_29:ptr->i32 
    sd      s7,0(s10)
                    #      mu arr_16:114 
                    #      arr_16 = chi arr_16:114 
                    #      new_var temp_14_29:ptr->i32 
                    #      temp_14_29 = getelementptr arr_16:ptr->i32 [Some(j_22)] 
    sd      a0,120(sp)
    li      a0, 0
    sw      a1,116(sp)
    li      a1, 1
    sw      a2,112(sp)
    mul     a2,a1,a7
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store temp_29:i32 temp_14_29:ptr->i32 
    sd      s9,0(a0)
                    #      mu arr_16:120 
                    #      arr_16 = chi arr_16:120 
                    #      jump label: branch_false_28 
    sd      a2,120(sp)
    lw      a2,112(sp)
    sd      s11,24(sp)
    sd      s10,32(sp)
    sw      s8,44(sp)
    sw      s7,20(sp)
    lw      a1,116(sp)
    sd      a0,8(sp)
    ld      a0,120(sp)
    sd      s2,48(sp)
    sw      s9,40(sp)
    j       .branch_false_28
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_24, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } |     s1:Freed { symidx: temp_4_27, tracked: true } |     s3:Freed { symidx: temp_5_27, tracked: true } |     s4:Freed { symidx: temp_6_27, tracked: true } |     s5:Freed { symidx: temp_7_27, tracked: true } |     s6:Freed { symidx: temp_8_27, tracked: true } | 
                    #      label branch_false_28: 
.branch_false_28:
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_24, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } |     s1:Freed { symidx: temp_4_27, tracked: true } |     s3:Freed { symidx: temp_5_27, tracked: true } |     s4:Freed { symidx: temp_6_27, tracked: true } |     s5:Freed { symidx: temp_7_27, tracked: true } |     s6:Freed { symidx: temp_8_27, tracked: true } | 
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_15_26:i32 
                    #      temp_15_26 = Add i32 j_22, 1_0 
    li      s2, 1
    add     s7,a7,s2
                    #      j_22 = i32 temp_15_26 
    mv      a7, s7
                    #      jump label: while.head_25 
    sw      s3,76(sp)
    sw      s7,4(sp)
    sd      s1,80(sp)
    sb      a3,95(sp)
    sd      s4,64(sp)
    sb      s6,59(sp)
    sw      s5,60(sp)
    j       .while.head_25
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_24, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } |     a6:Freed { symidx: temp_2_22, tracked: true } |     a7:Freed { symidx: j_22, tracked: true } | 
                    #      label while.exit_25: 
.while.exit_25:
                    #      new_var temp_16_22:i32 
                    #      temp_16_22 = Add i32 i_18, 1_0 
    li      s1, 1
    add     s2,a2,s1
                    #      i_18 = i32 temp_16_22 
    mv      a2, s2
                    #      jump label: while.head_21 
    sw      a7,96(sp)
    sb      a5,107(sp)
    sb      a3,95(sp)
    sw      a6,100(sp)
    sw      s2,0(sp)
    sw      a4,108(sp)
    j       .while.head_21
                    #regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16, tracked: true } |     a2:Freed { symidx: i_18, tracked: true } |     a4:Freed { symidx: temp_0_20, tracked: true } |     a5:Freed { symidx: temp_1_20, tracked: true } | 
                    #      label while.exit_21: 
.while.exit_21:
                    #regtab 
                    #      Define param32_rec_0 [a1_35, a2_35, a3_35, a4_35, a5_35, a6_35, a7_35, a8_35, a9_35, a10_35, a11_35, a12_35, a13_35, a14_35, a15_35, a16_35, a17_35, a18_35, a19_35, a20_35, a21_35, a22_35, a23_35, a24_35, a25_35, a26_35, a27_35, a28_35, a29_35, a30_35, a31_35, a32_35] -> param32_rec_ret_0 
    .globl param32_rec
    .type param32_rec,@function
param32_rec:
                    #mem layout:|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4|a17:4|a18:4|a19:4|a20:4|a21:4|a22:4|a23:4|a24:4|a25:4|a26:4|a27:4|a28:4|a29:4|a30:4|a31:4|a32:4|ra_param32_rec:8|s0_param32_rec:8|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|a8:4|temp_17:1|none:3|temp_18:4|temp_19:4|temp_20:4|temp_21:4|none:4
    addi    sp,sp,-168
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,168
                    #      alloc i1 temp_17_38 
                    #      alloc i32 temp_18_42 
                    #      alloc i32 temp_19_42 
                    #      alloc i32 temp_20_42 
                    #      alloc i32 temp_21_42 
                    #regtab     a0:Freed { symidx: a1_35, tracked: true } |     a1:Freed { symidx: a2_35, tracked: true } |     a2:Freed { symidx: a3_35, tracked: true } |     a3:Freed { symidx: a4_35, tracked: true } |     a4:Freed { symidx: a5_35, tracked: true } |     a5:Freed { symidx: a6_35, tracked: true } |     a6:Freed { symidx: a7_35, tracked: true } |     a7:Freed { symidx: a8_35, tracked: true } | 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_17_38:i1 
                    #      temp_17_38 = icmp i32 Eq a1_35, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_17_38, label branch_true_39, label branch_false_39 
    bnez    s2, .branch_true_39
    j       .branch_false_39
                    #regtab     a0:Freed { symidx: a1_35, tracked: true } |     a1:Freed { symidx: a2_35, tracked: true } |     a2:Freed { symidx: a3_35, tracked: true } |     a3:Freed { symidx: a4_35, tracked: true } |     a4:Freed { symidx: a5_35, tracked: true } |     a5:Freed { symidx: a6_35, tracked: true } |     a6:Freed { symidx: a7_35, tracked: true } |     a7:Freed { symidx: a8_35, tracked: true } |     s2:Freed { symidx: temp_17_38, tracked: true } | 
                    #      label branch_true_39: 
.branch_true_39:
                    #      ret a2_35 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a1,48(sp)
    sw      a0,52(sp)
    addi    sp,sp,168
    ret
                    #regtab     a0:Freed { symidx: a1_35, tracked: true } |     a1:Freed { symidx: a2_35, tracked: true } |     a2:Freed { symidx: a3_35, tracked: true } |     a3:Freed { symidx: a4_35, tracked: true } |     a4:Freed { symidx: a5_35, tracked: true } |     a5:Freed { symidx: a6_35, tracked: true } |     a6:Freed { symidx: a7_35, tracked: true } |     a7:Freed { symidx: a8_35, tracked: true } |     s2:Freed { symidx: temp_17_38, tracked: true } | 
                    #      label branch_false_39: 
.branch_false_39:
                    #      new_var temp_18_42:i32 
                    #      temp_18_42 = Sub i32 a1_35, 1_0 
    li      s1, 1
    sub     s3,a0,s1
                    #      new_var temp_19_42:i32 
                    #      temp_19_42 = Add i32 a2_35, a3_35 
    add     s4,a1,a2
                    #      new_var temp_20_42:i32 
                    #      temp_20_42 = Mod i32 temp_19_42, 998244353_0 
    li      s5, 998244353
    rem     s6,s4,s5
                    #      new_var temp_21_42:i32 
                    #      temp_21_42 =  Call i32 param32_rec_0(temp_18_42, temp_20_42, a4_35, a5_35, a6_35, a7_35, a8_35, a9_35, a10_35, a11_35, a12_35, a13_35, a14_35, a15_35, a16_35, a17_35, a18_35, a19_35, a20_35, a21_35, a22_35, a23_35, a24_35, a25_35, a26_35, a27_35, a28_35, a29_35, a30_35, a31_35, a32_35, 0_0) 
                    #saved register dumping to mem
    sb      s2,23(sp)
    sw      s3,16(sp)
    sw      s4,12(sp)
    sw      s6,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,52(sp)
    lw      a0,16(sp)
    sw      a1,48(sp)
    lw      a1,8(sp)
    sw      a2,44(sp)
    mv      a2, a3
    sw      a3,40(sp)
    mv      a3, a4
    sw      a4,36(sp)
    mv      a4, a5
    sw      a5,32(sp)
    mv      a5, a6
    sw      a6,28(sp)
    mv      a6, a7
    sw      a7,24(sp)
    lw      a7,164(sp)
                    #arg load ended
    call    param32_rec
    sw      a0,4(sp)
                    #      ret temp_21_42 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,4(sp)
    addi    sp,sp,168
    ret
                    #regtab     a0:Freed { symidx: temp_21_42, tracked: true } | 
                    #      label L4_0: 
.L4_0:
                    #regtab     a0:Freed { symidx: temp_21_42, tracked: true } | 
                    #regtab 
                    #      Define param32_arr_0 [a1_44, a2_44, a3_44, a4_44, a5_44, a6_44, a7_44, a8_44, a9_44, a10_44, a11_44, a12_44, a13_44, a14_44, a15_44, a16_44, a17_44, a18_44, a19_44, a20_44, a21_44, a22_44, a23_44, a24_44, a25_44, a26_44, a27_44, a28_44, a29_44, a30_44, a31_44, a32_44] -> param32_arr_ret_0 
    .globl param32_arr
    .type param32_arr,@function
param32_arr:
                    #mem layout:|a9:8|a10:8|a11:8|a12:8|a13:8|a14:8|a15:8|a16:8|a17:8|a18:8|a19:8|a20:8|a21:8|a22:8|a23:8|a24:8|a25:8|a26:8|a27:8|a28:8|a29:8|a30:8|a31:8|a32:8|ra_param32_arr:8|s0_param32_arr:8|a1:8|a2:8|a3:8|a4:8|a5:8|a6:8|a7:8|a8:8|temp_22:8|temp_23:4|none:4|temp_24:8|temp_25:4|temp_26:4|sum:4|none:4|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:4|temp_31:4|temp_32:4|none:4|temp_33:8|temp_34:4|none:4|temp_35:8|temp_36:4|temp_37:4|temp_38:4|none:4|temp_39:8|temp_40:4|none:4|temp_41:8|temp_42:4|temp_43:4|temp_44:4|none:4|temp_45:8|temp_46:4|none:4|temp_47:8|temp_48:4|temp_49:4|temp_50:4|none:4|temp_51:8|temp_52:4|none:4|temp_53:8|temp_54:4|temp_55:4|temp_56:4|none:4|temp_57:8|temp_58:4|none:4|temp_59:8|temp_60:4|temp_61:4|temp_62:4|none:4|temp_63:8|temp_64:4|none:4|temp_65:8|temp_66:4|temp_67:4|temp_68:4|none:4|temp_69:8|temp_70:4|none:4|temp_71:8|temp_72:4|temp_73:4|temp_74:4|none:4|temp_75:8|temp_76:4|none:4|temp_77:8|temp_78:4|temp_79:4|temp_80:4|none:4|temp_81:8|temp_82:4|none:4|temp_83:8|temp_84:4|temp_85:4|temp_86:4|none:4|temp_87:8|temp_88:4|none:4|temp_89:8|temp_90:4|temp_91:4|temp_92:4|none:4|temp_93:8|temp_94:4|none:4|temp_95:8|temp_96:4|temp_97:4|temp_98:4|none:4|temp_99:8|temp_100:4|none:4|temp_101:8|temp_102:4|temp_103:4|temp_104:4|none:4|temp_105:8|temp_106:4|none:4|temp_107:8|temp_108:4|temp_109:4|temp_110:4|none:4|temp_111:8|temp_112:4|none:4|temp_113:8|temp_114:4|temp_115:4|temp_116:4|none:4|temp_117:8|temp_118:4|none:4|temp_119:8|temp_120:4|temp_121:4|temp_122:4|none:4|temp_123:8|temp_124:4|none:4|temp_125:8|temp_126:4|temp_127:4|temp_128:4|none:4|temp_129:8|temp_130:4|none:4|temp_131:8|temp_132:4|temp_133:4|temp_134:4|none:4|temp_135:8|temp_136:4|none:4|temp_137:8|temp_138:4|temp_139:4|temp_140:4|none:4|temp_141:8|temp_142:4|none:4|temp_143:8|temp_144:4|temp_145:4|temp_146:4|none:4|temp_147:8|temp_148:4|none:4|temp_149:8|temp_150:4|temp_151:4|temp_152:4|none:4|temp_153:8|temp_154:4|none:4|temp_155:8|temp_156:4|temp_157:4|temp_158:4|none:4|temp_159:8|temp_160:4|none:4|temp_161:8|temp_162:4|temp_163:4|temp_164:4|none:4|temp_165:8|temp_166:4|none:4|temp_167:8|temp_168:4|temp_169:4|temp_170:4|none:4|temp_171:8|temp_172:4|none:4|temp_173:8|temp_174:4|temp_175:4|temp_176:4|none:4|temp_177:8|temp_178:4|none:4|temp_179:8|temp_180:4|temp_181:4|temp_182:4|none:4|temp_183:8|temp_184:4|none:4|temp_185:8|temp_186:4|temp_187:4|temp_188:4|none:4|temp_189:8|temp_190:4|none:4|temp_191:8|temp_192:4|temp_193:4|temp_194:4|none:4|temp_195:8|temp_196:4|none:4|temp_197:8|temp_198:4|temp_199:4|temp_200:4|none:4|temp_201:8|temp_202:4|none:4|temp_203:8|temp_204:4|temp_205:4|temp_206:4|none:4|temp_207:8|temp_208:4|none:4|temp_209:8|temp_210:4|temp_211:4|temp_212:4|none:4
    addi    sp,sp,-1552
    sd      ra,1352(sp)
    sd      s0,1344(sp)
    addi    s0,sp,1552
                    #      new_var a1_44:ptr->i32 
                    #      new_var a2_44:ptr->i32 
                    #      new_var a3_44:ptr->i32 
                    #      new_var a4_44:ptr->i32 
                    #      new_var a5_44:ptr->i32 
                    #      new_var a6_44:ptr->i32 
                    #      new_var a7_44:ptr->i32 
                    #      new_var a8_44:ptr->i32 
                    #      new_var a9_44:ptr->i32 
                    #      new_var a10_44:ptr->i32 
                    #      new_var a11_44:ptr->i32 
                    #      new_var a12_44:ptr->i32 
                    #      new_var a13_44:ptr->i32 
                    #      new_var a14_44:ptr->i32 
                    #      new_var a15_44:ptr->i32 
                    #      new_var a16_44:ptr->i32 
                    #      new_var a17_44:ptr->i32 
                    #      new_var a18_44:ptr->i32 
                    #      new_var a19_44:ptr->i32 
                    #      new_var a20_44:ptr->i32 
                    #      new_var a21_44:ptr->i32 
                    #      new_var a22_44:ptr->i32 
                    #      new_var a23_44:ptr->i32 
                    #      new_var a24_44:ptr->i32 
                    #      new_var a25_44:ptr->i32 
                    #      new_var a26_44:ptr->i32 
                    #      new_var a27_44:ptr->i32 
                    #      new_var a28_44:ptr->i32 
                    #      new_var a29_44:ptr->i32 
                    #      new_var a30_44:ptr->i32 
                    #      new_var a31_44:ptr->i32 
                    #      new_var a32_44:ptr->i32 
                    #      alloc ptr->i32 temp_22_46 
                    #      alloc i32 temp_23_46 
                    #      alloc ptr->i32 temp_24_46 
                    #      alloc i32 temp_25_46 
                    #      alloc i32 temp_26_46 
                    #      alloc i32 sum_46 
                    #      alloc ptr->i32 temp_27_46 
                    #      alloc i32 temp_28_46 
                    #      alloc ptr->i32 temp_29_46 
                    #      alloc i32 temp_30_46 
                    #      alloc i32 temp_31_46 
                    #      alloc i32 temp_32_46 
                    #      alloc ptr->i32 temp_33_46 
                    #      alloc i32 temp_34_46 
                    #      alloc ptr->i32 temp_35_46 
                    #      alloc i32 temp_36_46 
                    #      alloc i32 temp_37_46 
                    #      alloc i32 temp_38_46 
                    #      alloc ptr->i32 temp_39_46 
                    #      alloc i32 temp_40_46 
                    #      alloc ptr->i32 temp_41_46 
                    #      alloc i32 temp_42_46 
                    #      alloc i32 temp_43_46 
                    #      alloc i32 temp_44_46 
                    #      alloc ptr->i32 temp_45_46 
                    #      alloc i32 temp_46_46 
                    #      alloc ptr->i32 temp_47_46 
                    #      alloc i32 temp_48_46 
                    #      alloc i32 temp_49_46 
                    #      alloc i32 temp_50_46 
                    #      alloc ptr->i32 temp_51_46 
                    #      alloc i32 temp_52_46 
                    #      alloc ptr->i32 temp_53_46 
                    #      alloc i32 temp_54_46 
                    #      alloc i32 temp_55_46 
                    #      alloc i32 temp_56_46 
                    #      alloc ptr->i32 temp_57_46 
                    #      alloc i32 temp_58_46 
                    #      alloc ptr->i32 temp_59_46 
                    #      alloc i32 temp_60_46 
                    #      alloc i32 temp_61_46 
                    #      alloc i32 temp_62_46 
                    #      alloc ptr->i32 temp_63_46 
                    #      alloc i32 temp_64_46 
                    #      alloc ptr->i32 temp_65_46 
                    #      alloc i32 temp_66_46 
                    #      alloc i32 temp_67_46 
                    #      alloc i32 temp_68_46 
                    #      alloc ptr->i32 temp_69_46 
                    #      alloc i32 temp_70_46 
                    #      alloc ptr->i32 temp_71_46 
                    #      alloc i32 temp_72_46 
                    #      alloc i32 temp_73_46 
                    #      alloc i32 temp_74_46 
                    #      alloc ptr->i32 temp_75_46 
                    #      alloc i32 temp_76_46 
                    #      alloc ptr->i32 temp_77_46 
                    #      alloc i32 temp_78_46 
                    #      alloc i32 temp_79_46 
                    #      alloc i32 temp_80_46 
                    #      alloc ptr->i32 temp_81_46 
                    #      alloc i32 temp_82_46 
                    #      alloc ptr->i32 temp_83_46 
                    #      alloc i32 temp_84_46 
                    #      alloc i32 temp_85_46 
                    #      alloc i32 temp_86_46 
                    #      alloc ptr->i32 temp_87_46 
                    #      alloc i32 temp_88_46 
                    #      alloc ptr->i32 temp_89_46 
                    #      alloc i32 temp_90_46 
                    #      alloc i32 temp_91_46 
                    #      alloc i32 temp_92_46 
                    #      alloc ptr->i32 temp_93_46 
                    #      alloc i32 temp_94_46 
                    #      alloc ptr->i32 temp_95_46 
                    #      alloc i32 temp_96_46 
                    #      alloc i32 temp_97_46 
                    #      alloc i32 temp_98_46 
                    #      alloc ptr->i32 temp_99_46 
                    #      alloc i32 temp_100_46 
                    #      alloc ptr->i32 temp_101_46 
                    #      alloc i32 temp_102_46 
                    #      alloc i32 temp_103_46 
                    #      alloc i32 temp_104_46 
                    #      alloc ptr->i32 temp_105_46 
                    #      alloc i32 temp_106_46 
                    #      alloc ptr->i32 temp_107_46 
                    #      alloc i32 temp_108_46 
                    #      alloc i32 temp_109_46 
                    #      alloc i32 temp_110_46 
                    #      alloc ptr->i32 temp_111_46 
                    #      alloc i32 temp_112_46 
                    #      alloc ptr->i32 temp_113_46 
                    #      alloc i32 temp_114_46 
                    #      alloc i32 temp_115_46 
                    #      alloc i32 temp_116_46 
                    #      alloc ptr->i32 temp_117_46 
                    #      alloc i32 temp_118_46 
                    #      alloc ptr->i32 temp_119_46 
                    #      alloc i32 temp_120_46 
                    #      alloc i32 temp_121_46 
                    #      alloc i32 temp_122_46 
                    #      alloc ptr->i32 temp_123_46 
                    #      alloc i32 temp_124_46 
                    #      alloc ptr->i32 temp_125_46 
                    #      alloc i32 temp_126_46 
                    #      alloc i32 temp_127_46 
                    #      alloc i32 temp_128_46 
                    #      alloc ptr->i32 temp_129_46 
                    #      alloc i32 temp_130_46 
                    #      alloc ptr->i32 temp_131_46 
                    #      alloc i32 temp_132_46 
                    #      alloc i32 temp_133_46 
                    #      alloc i32 temp_134_46 
                    #      alloc ptr->i32 temp_135_46 
                    #      alloc i32 temp_136_46 
                    #      alloc ptr->i32 temp_137_46 
                    #      alloc i32 temp_138_46 
                    #      alloc i32 temp_139_46 
                    #      alloc i32 temp_140_46 
                    #      alloc ptr->i32 temp_141_46 
                    #      alloc i32 temp_142_46 
                    #      alloc ptr->i32 temp_143_46 
                    #      alloc i32 temp_144_46 
                    #      alloc i32 temp_145_46 
                    #      alloc i32 temp_146_46 
                    #      alloc ptr->i32 temp_147_46 
                    #      alloc i32 temp_148_46 
                    #      alloc ptr->i32 temp_149_46 
                    #      alloc i32 temp_150_46 
                    #      alloc i32 temp_151_46 
                    #      alloc i32 temp_152_46 
                    #      alloc ptr->i32 temp_153_46 
                    #      alloc i32 temp_154_46 
                    #      alloc ptr->i32 temp_155_46 
                    #      alloc i32 temp_156_46 
                    #      alloc i32 temp_157_46 
                    #      alloc i32 temp_158_46 
                    #      alloc ptr->i32 temp_159_46 
                    #      alloc i32 temp_160_46 
                    #      alloc ptr->i32 temp_161_46 
                    #      alloc i32 temp_162_46 
                    #      alloc i32 temp_163_46 
                    #      alloc i32 temp_164_46 
                    #      alloc ptr->i32 temp_165_46 
                    #      alloc i32 temp_166_46 
                    #      alloc ptr->i32 temp_167_46 
                    #      alloc i32 temp_168_46 
                    #      alloc i32 temp_169_46 
                    #      alloc i32 temp_170_46 
                    #      alloc ptr->i32 temp_171_46 
                    #      alloc i32 temp_172_46 
                    #      alloc ptr->i32 temp_173_46 
                    #      alloc i32 temp_174_46 
                    #      alloc i32 temp_175_46 
                    #      alloc i32 temp_176_46 
                    #      alloc ptr->i32 temp_177_46 
                    #      alloc i32 temp_178_46 
                    #      alloc ptr->i32 temp_179_46 
                    #      alloc i32 temp_180_46 
                    #      alloc i32 temp_181_46 
                    #      alloc i32 temp_182_46 
                    #      alloc ptr->i32 temp_183_46 
                    #      alloc i32 temp_184_46 
                    #      alloc ptr->i32 temp_185_46 
                    #      alloc i32 temp_186_46 
                    #      alloc i32 temp_187_46 
                    #      alloc i32 temp_188_46 
                    #      alloc ptr->i32 temp_189_46 
                    #      alloc i32 temp_190_46 
                    #      alloc ptr->i32 temp_191_46 
                    #      alloc i32 temp_192_46 
                    #      alloc i32 temp_193_46 
                    #      alloc i32 temp_194_46 
                    #      alloc ptr->i32 temp_195_46 
                    #      alloc i32 temp_196_46 
                    #      alloc ptr->i32 temp_197_46 
                    #      alloc i32 temp_198_46 
                    #      alloc i32 temp_199_46 
                    #      alloc i32 temp_200_46 
                    #      alloc ptr->i32 temp_201_46 
                    #      alloc i32 temp_202_46 
                    #      alloc ptr->i32 temp_203_46 
                    #      alloc i32 temp_204_46 
                    #      alloc i32 temp_205_46 
                    #      alloc i32 temp_206_46 
                    #      alloc ptr->i32 temp_207_46 
                    #      alloc i32 temp_208_46 
                    #      alloc ptr->i32 temp_209_46 
                    #      alloc i32 temp_210_46 
                    #      alloc i32 temp_211_46 
                    #      alloc i32 temp_212_46 
                    #regtab     a0:Freed { symidx: a1_44, tracked: true } |     a1:Freed { symidx: a2_44, tracked: true } |     a2:Freed { symidx: a3_44, tracked: true } |     a3:Freed { symidx: a4_44, tracked: true } |     a4:Freed { symidx: a5_44, tracked: true } |     a5:Freed { symidx: a6_44, tracked: true } |     a6:Freed { symidx: a7_44, tracked: true } |     a7:Freed { symidx: a8_44, tracked: true } | 
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_22_46:ptr->i32 
                    #      new_var temp_23_46:i32 
                    #      temp_22_46 = getelementptr a1_44:ptr->i32 [Some(1_0)] 
    li      s1, 0
    li      s2, 1
    li      s3, 1
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_23_46 = load temp_22_46:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_24_46:ptr->i32 
                    #      new_var temp_25_46:i32 
                    #      temp_24_46 = getelementptr a1_44:ptr->i32 [Some(0_0)] 
    li      s5, 0
                    #found literal reg Some(s2) already exist with 1_0
    li      s6, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_25_46 = load temp_24_46:ptr->i32 
    lw      s7,0(s5)
                    #      new_var temp_26_46:i32 
                    #      temp_26_46 = Add i32 temp_25_46, temp_23_46 
    add     s8,s7,s4
                    #      sum_46 = i32 temp_26_46 
    mv      s9, s8
                    #      new_var temp_27_46:ptr->i32 
                    #      new_var temp_28_46:i32 
                    #      temp_27_46 = getelementptr a2_44:ptr->i32 [Some(1_0)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
                    #found literal reg Some(s3) already exist with 1_0
    add     s10,s10,a1
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_28_46 = load temp_27_46:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_29_46:ptr->i32 
                    #      new_var temp_30_46:i32 
                    #      temp_29_46 = getelementptr a2_44:ptr->i32 [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(s6) already exist with 0_0
    add     s2,s2,a1
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_30_46 = load temp_29_46:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_31_46:i32 
                    #      temp_31_46 = Add i32 temp_30_46, temp_28_46 
    add     s6,s3,s11
                    #      new_var temp_32_46:i32 
                    #      temp_32_46 = Add i32 sum_46, temp_31_46 
    sd      a0,1336(sp)
    add     a0,s9,s6
                    #      sum_46 = i32 temp_32_46 
    mv      s9, a0
                    #      new_var temp_33_46:ptr->i32 
                    #      new_var temp_34_46:i32 
                    #      temp_33_46 = getelementptr a3_44:ptr->i32 [Some(1_0)] 
    sw      a0,1204(sp)
    li      a0, 0
    sd      a1,1328(sp)
    li      a1, 1
    sd      a2,1320(sp)
    li      a2, 1
    sd      a3,1312(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_34_46 = load temp_33_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_35_46:ptr->i32 
                    #      new_var temp_36_46:i32 
                    #      temp_35_46 = getelementptr a3_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,1192(sp)
    li      a0, 1
    sw      a1,1188(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_36_46 = load temp_35_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_37_46:i32 
                    #      temp_37_46 = Add i32 temp_36_46, temp_34_46 
    sd      a2,1176(sp)
    add     a2,a0,a1
                    #      new_var temp_38_46:i32 
                    #      temp_38_46 = Add i32 sum_46, temp_37_46 
    sw      a0,1172(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_38_46 
    mv      s9, a0
                    #      new_var temp_39_46:ptr->i32 
                    #      new_var temp_40_46:i32 
                    #      temp_39_46 = getelementptr a4_44:ptr->i32 [Some(1_0)] 
    sw      a0,1164(sp)
    li      a0, 0
    sw      a1,1188(sp)
    li      a1, 1
    sw      a2,1168(sp)
    li      a2, 1
    sd      a3,1320(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_40_46 = load temp_39_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_41_46:ptr->i32 
                    #      new_var temp_42_46:i32 
                    #      temp_41_46 = getelementptr a4_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,1152(sp)
    li      a0, 1
    sw      a1,1148(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_42_46 = load temp_41_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_43_46:i32 
                    #      temp_43_46 = Add i32 temp_42_46, temp_40_46 
    sd      a2,1136(sp)
    add     a2,a0,a1
                    #      new_var temp_44_46:i32 
                    #      temp_44_46 = Add i32 sum_46, temp_43_46 
    sw      a0,1132(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_44_46 
    mv      s9, a0
                    #      new_var temp_45_46:ptr->i32 
                    #      new_var temp_46_46:i32 
                    #      temp_45_46 = getelementptr a5_44:ptr->i32 [Some(1_0)] 
    sw      a0,1124(sp)
    li      a0, 0
    sw      a1,1148(sp)
    li      a1, 1
    sw      a2,1128(sp)
    li      a2, 1
    add     a0,a0,a4
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_46_46 = load temp_45_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_47_46:ptr->i32 
                    #      new_var temp_48_46:i32 
                    #      temp_47_46 = getelementptr a5_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,1112(sp)
    li      a0, 1
    sw      a1,1108(sp)
    li      a1, 0
    add     a2,a2,a4
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_48_46 = load temp_47_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_49_46:i32 
                    #      temp_49_46 = Add i32 temp_48_46, temp_46_46 
    sd      a2,1096(sp)
    add     a2,a0,a1
                    #      new_var temp_50_46:i32 
                    #      temp_50_46 = Add i32 sum_46, temp_49_46 
    sw      a0,1092(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_50_46 
    mv      s9, a0
                    #      new_var temp_51_46:ptr->i32 
                    #      new_var temp_52_46:i32 
                    #      temp_51_46 = getelementptr a6_44:ptr->i32 [Some(1_0)] 
    sw      a0,1084(sp)
    li      a0, 0
    sw      a1,1108(sp)
    li      a1, 1
    sw      a2,1088(sp)
    li      a2, 1
    add     a0,a0,a5
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_52_46 = load temp_51_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_53_46:ptr->i32 
                    #      new_var temp_54_46:i32 
                    #      temp_53_46 = getelementptr a6_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,1072(sp)
    li      a0, 1
    sw      a1,1068(sp)
    li      a1, 0
    add     a2,a2,a5
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_54_46 = load temp_53_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_55_46:i32 
                    #      temp_55_46 = Add i32 temp_54_46, temp_52_46 
    sd      a2,1056(sp)
    add     a2,a0,a1
                    #      new_var temp_56_46:i32 
                    #      temp_56_46 = Add i32 sum_46, temp_55_46 
    sw      a0,1052(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_56_46 
    mv      s9, a0
                    #      new_var temp_57_46:ptr->i32 
                    #      new_var temp_58_46:i32 
                    #      temp_57_46 = getelementptr a7_44:ptr->i32 [Some(1_0)] 
    sw      a0,1044(sp)
    li      a0, 0
    sw      a1,1068(sp)
    li      a1, 1
    sw      a2,1048(sp)
    li      a2, 1
    add     a0,a0,a6
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_58_46 = load temp_57_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_59_46:ptr->i32 
                    #      new_var temp_60_46:i32 
                    #      temp_59_46 = getelementptr a7_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,1032(sp)
    li      a0, 1
    sw      a1,1028(sp)
    li      a1, 0
    add     a2,a2,a6
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_60_46 = load temp_59_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_61_46:i32 
                    #      temp_61_46 = Add i32 temp_60_46, temp_58_46 
    sd      a2,1016(sp)
    add     a2,a0,a1
                    #      new_var temp_62_46:i32 
                    #      temp_62_46 = Add i32 sum_46, temp_61_46 
    sw      a0,1012(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_62_46 
    mv      s9, a0
                    #      new_var temp_63_46:ptr->i32 
                    #      new_var temp_64_46:i32 
                    #      temp_63_46 = getelementptr a8_44:ptr->i32 [Some(1_0)] 
    sw      a0,1004(sp)
    li      a0, 0
    sw      a1,1028(sp)
    li      a1, 1
    sw      a2,1008(sp)
    li      a2, 1
    add     a0,a0,a7
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_64_46 = load temp_63_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_65_46:ptr->i32 
                    #      new_var temp_66_46:i32 
                    #      temp_65_46 = getelementptr a8_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,992(sp)
    li      a0, 1
    sw      a1,988(sp)
    li      a1, 0
    add     a2,a2,a7
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_66_46 = load temp_65_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_67_46:i32 
                    #      temp_67_46 = Add i32 temp_66_46, temp_64_46 
    sd      a2,976(sp)
    add     a2,a0,a1
                    #      new_var temp_68_46:i32 
                    #      temp_68_46 = Add i32 sum_46, temp_67_46 
    sw      a0,972(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_68_46 
    mv      s9, a0
                    #      new_var temp_69_46:ptr->i32 
                    #      new_var temp_70_46:i32 
                    #      temp_69_46 = getelementptr a9_44:ptr->i32 [Some(1_0)] 
    sw      a0,964(sp)
    li      a0, 0
    sw      a1,988(sp)
    li      a1, 1
    sw      a2,968(sp)
    li      a2, 1
    sd      a3,1312(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_70_46 = load temp_69_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_71_46:ptr->i32 
                    #      new_var temp_72_46:i32 
                    #      temp_71_46 = getelementptr a9_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,952(sp)
    li      a0, 1
    sw      a1,948(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_72_46 = load temp_71_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_73_46:i32 
                    #      temp_73_46 = Add i32 temp_72_46, temp_70_46 
    sd      a2,936(sp)
    add     a2,a0,a1
                    #      new_var temp_74_46:i32 
                    #      temp_74_46 = Add i32 sum_46, temp_73_46 
    sw      a0,932(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_74_46 
    mv      s9, a0
                    #      new_var temp_75_46:ptr->i32 
                    #      new_var temp_76_46:i32 
                    #      temp_75_46 = getelementptr a10_44:ptr->i32 [Some(1_0)] 
    sw      a0,924(sp)
    li      a0, 0
    sw      a1,948(sp)
    li      a1, 1
    sw      a2,928(sp)
    li      a2, 1
    sd      a3,1544(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_76_46 = load temp_75_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_77_46:ptr->i32 
                    #      new_var temp_78_46:i32 
                    #      temp_77_46 = getelementptr a10_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,912(sp)
    li      a0, 1
    sw      a1,908(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_78_46 = load temp_77_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_79_46:i32 
                    #      temp_79_46 = Add i32 temp_78_46, temp_76_46 
    sd      a2,896(sp)
    add     a2,a0,a1
                    #      new_var temp_80_46:i32 
                    #      temp_80_46 = Add i32 sum_46, temp_79_46 
    sw      a0,892(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_80_46 
    mv      s9, a0
                    #      new_var temp_81_46:ptr->i32 
                    #      new_var temp_82_46:i32 
                    #      temp_81_46 = getelementptr a11_44:ptr->i32 [Some(1_0)] 
    sw      a0,884(sp)
    li      a0, 0
    sw      a1,908(sp)
    li      a1, 1
    sw      a2,888(sp)
    li      a2, 1
    sd      a3,1536(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_82_46 = load temp_81_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_83_46:ptr->i32 
                    #      new_var temp_84_46:i32 
                    #      temp_83_46 = getelementptr a11_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,872(sp)
    li      a0, 1
    sw      a1,868(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_84_46 = load temp_83_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_85_46:i32 
                    #      temp_85_46 = Add i32 temp_84_46, temp_82_46 
    sd      a2,856(sp)
    add     a2,a0,a1
                    #      new_var temp_86_46:i32 
                    #      temp_86_46 = Add i32 sum_46, temp_85_46 
    sw      a0,852(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_86_46 
    mv      s9, a0
                    #      new_var temp_87_46:ptr->i32 
                    #      new_var temp_88_46:i32 
                    #      temp_87_46 = getelementptr a12_44:ptr->i32 [Some(1_0)] 
    sw      a0,844(sp)
    li      a0, 0
    sw      a1,868(sp)
    li      a1, 1
    sw      a2,848(sp)
    li      a2, 1
    sd      a3,1528(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_88_46 = load temp_87_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_89_46:ptr->i32 
                    #      new_var temp_90_46:i32 
                    #      temp_89_46 = getelementptr a12_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,832(sp)
    li      a0, 1
    sw      a1,828(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_90_46 = load temp_89_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_91_46:i32 
                    #      temp_91_46 = Add i32 temp_90_46, temp_88_46 
    sd      a2,816(sp)
    add     a2,a0,a1
                    #      new_var temp_92_46:i32 
                    #      temp_92_46 = Add i32 sum_46, temp_91_46 
    sw      a0,812(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_92_46 
    mv      s9, a0
                    #      new_var temp_93_46:ptr->i32 
                    #      new_var temp_94_46:i32 
                    #      temp_93_46 = getelementptr a13_44:ptr->i32 [Some(1_0)] 
    sw      a0,804(sp)
    li      a0, 0
    sw      a1,828(sp)
    li      a1, 1
    sw      a2,808(sp)
    li      a2, 1
    sd      a3,1520(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_94_46 = load temp_93_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_95_46:ptr->i32 
                    #      new_var temp_96_46:i32 
                    #      temp_95_46 = getelementptr a13_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,792(sp)
    li      a0, 1
    sw      a1,788(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_96_46 = load temp_95_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_97_46:i32 
                    #      temp_97_46 = Add i32 temp_96_46, temp_94_46 
    sd      a2,776(sp)
    add     a2,a0,a1
                    #      new_var temp_98_46:i32 
                    #      temp_98_46 = Add i32 sum_46, temp_97_46 
    sw      a0,772(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_98_46 
    mv      s9, a0
                    #      new_var temp_99_46:ptr->i32 
                    #      new_var temp_100_46:i32 
                    #      temp_99_46 = getelementptr a14_44:ptr->i32 [Some(1_0)] 
    sw      a0,764(sp)
    li      a0, 0
    sw      a1,788(sp)
    li      a1, 1
    sw      a2,768(sp)
    li      a2, 1
    sd      a3,1512(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_100_46 = load temp_99_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_101_46:ptr->i32 
                    #      new_var temp_102_46:i32 
                    #      temp_101_46 = getelementptr a14_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,752(sp)
    li      a0, 1
    sw      a1,748(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_102_46 = load temp_101_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_103_46:i32 
                    #      temp_103_46 = Add i32 temp_102_46, temp_100_46 
    sd      a2,736(sp)
    add     a2,a0,a1
                    #      new_var temp_104_46:i32 
                    #      temp_104_46 = Add i32 sum_46, temp_103_46 
    sw      a0,732(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_104_46 
    mv      s9, a0
                    #      new_var temp_105_46:ptr->i32 
                    #      new_var temp_106_46:i32 
                    #      temp_105_46 = getelementptr a15_44:ptr->i32 [Some(1_0)] 
    sw      a0,724(sp)
    li      a0, 0
    sw      a1,748(sp)
    li      a1, 1
    sw      a2,728(sp)
    li      a2, 1
    sd      a3,1504(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_106_46 = load temp_105_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_107_46:ptr->i32 
                    #      new_var temp_108_46:i32 
                    #      temp_107_46 = getelementptr a15_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,712(sp)
    li      a0, 1
    sw      a1,708(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_108_46 = load temp_107_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_109_46:i32 
                    #      temp_109_46 = Add i32 temp_108_46, temp_106_46 
    sd      a2,696(sp)
    add     a2,a0,a1
                    #      new_var temp_110_46:i32 
                    #      temp_110_46 = Add i32 sum_46, temp_109_46 
    sw      a0,692(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_110_46 
    mv      s9, a0
                    #      new_var temp_111_46:ptr->i32 
                    #      new_var temp_112_46:i32 
                    #      temp_111_46 = getelementptr a16_44:ptr->i32 [Some(1_0)] 
    sw      a0,684(sp)
    li      a0, 0
    sw      a1,708(sp)
    li      a1, 1
    sw      a2,688(sp)
    li      a2, 1
    sd      a3,1496(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_112_46 = load temp_111_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_113_46:ptr->i32 
                    #      new_var temp_114_46:i32 
                    #      temp_113_46 = getelementptr a16_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,672(sp)
    li      a0, 1
    sw      a1,668(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_114_46 = load temp_113_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_115_46:i32 
                    #      temp_115_46 = Add i32 temp_114_46, temp_112_46 
    sd      a2,656(sp)
    add     a2,a0,a1
                    #      new_var temp_116_46:i32 
                    #      temp_116_46 = Add i32 sum_46, temp_115_46 
    sw      a0,652(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_116_46 
    mv      s9, a0
                    #      new_var temp_117_46:ptr->i32 
                    #      new_var temp_118_46:i32 
                    #      temp_117_46 = getelementptr a17_44:ptr->i32 [Some(1_0)] 
    sw      a0,644(sp)
    li      a0, 0
    sw      a1,668(sp)
    li      a1, 1
    sw      a2,648(sp)
    li      a2, 1
    sd      a3,1488(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_118_46 = load temp_117_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_119_46:ptr->i32 
                    #      new_var temp_120_46:i32 
                    #      temp_119_46 = getelementptr a17_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,632(sp)
    li      a0, 1
    sw      a1,628(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_120_46 = load temp_119_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_121_46:i32 
                    #      temp_121_46 = Add i32 temp_120_46, temp_118_46 
    sd      a2,616(sp)
    add     a2,a0,a1
                    #      new_var temp_122_46:i32 
                    #      temp_122_46 = Add i32 sum_46, temp_121_46 
    sw      a0,612(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_122_46 
    mv      s9, a0
                    #      new_var temp_123_46:ptr->i32 
                    #      new_var temp_124_46:i32 
                    #      temp_123_46 = getelementptr a18_44:ptr->i32 [Some(1_0)] 
    sw      a0,604(sp)
    li      a0, 0
    sw      a1,628(sp)
    li      a1, 1
    sw      a2,608(sp)
    li      a2, 1
    sd      a3,1480(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_124_46 = load temp_123_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_125_46:ptr->i32 
                    #      new_var temp_126_46:i32 
                    #      temp_125_46 = getelementptr a18_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,592(sp)
    li      a0, 1
    sw      a1,588(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_126_46 = load temp_125_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_127_46:i32 
                    #      temp_127_46 = Add i32 temp_126_46, temp_124_46 
    sd      a2,576(sp)
    add     a2,a0,a1
                    #      new_var temp_128_46:i32 
                    #      temp_128_46 = Add i32 sum_46, temp_127_46 
    sw      a0,572(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_128_46 
    mv      s9, a0
                    #      new_var temp_129_46:ptr->i32 
                    #      new_var temp_130_46:i32 
                    #      temp_129_46 = getelementptr a19_44:ptr->i32 [Some(1_0)] 
    sw      a0,564(sp)
    li      a0, 0
    sw      a1,588(sp)
    li      a1, 1
    sw      a2,568(sp)
    li      a2, 1
    sd      a3,1472(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_130_46 = load temp_129_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_131_46:ptr->i32 
                    #      new_var temp_132_46:i32 
                    #      temp_131_46 = getelementptr a19_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,552(sp)
    li      a0, 1
    sw      a1,548(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_132_46 = load temp_131_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_133_46:i32 
                    #      temp_133_46 = Add i32 temp_132_46, temp_130_46 
    sd      a2,536(sp)
    add     a2,a0,a1
                    #      new_var temp_134_46:i32 
                    #      temp_134_46 = Add i32 sum_46, temp_133_46 
    sw      a0,532(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_134_46 
    mv      s9, a0
                    #      new_var temp_135_46:ptr->i32 
                    #      new_var temp_136_46:i32 
                    #      temp_135_46 = getelementptr a20_44:ptr->i32 [Some(1_0)] 
    sw      a0,524(sp)
    li      a0, 0
    sw      a1,548(sp)
    li      a1, 1
    sw      a2,528(sp)
    li      a2, 1
    sd      a3,1464(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_136_46 = load temp_135_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_137_46:ptr->i32 
                    #      new_var temp_138_46:i32 
                    #      temp_137_46 = getelementptr a20_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,512(sp)
    li      a0, 1
    sw      a1,508(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_138_46 = load temp_137_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_139_46:i32 
                    #      temp_139_46 = Add i32 temp_138_46, temp_136_46 
    sd      a2,496(sp)
    add     a2,a0,a1
                    #      new_var temp_140_46:i32 
                    #      temp_140_46 = Add i32 sum_46, temp_139_46 
    sw      a0,492(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_140_46 
    mv      s9, a0
                    #      new_var temp_141_46:ptr->i32 
                    #      new_var temp_142_46:i32 
                    #      temp_141_46 = getelementptr a21_44:ptr->i32 [Some(1_0)] 
    sw      a0,484(sp)
    li      a0, 0
    sw      a1,508(sp)
    li      a1, 1
    sw      a2,488(sp)
    li      a2, 1
    sd      a3,1456(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_142_46 = load temp_141_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_143_46:ptr->i32 
                    #      new_var temp_144_46:i32 
                    #      temp_143_46 = getelementptr a21_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,472(sp)
    li      a0, 1
    sw      a1,468(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_144_46 = load temp_143_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_145_46:i32 
                    #      temp_145_46 = Add i32 temp_144_46, temp_142_46 
    sd      a2,456(sp)
    add     a2,a0,a1
                    #      new_var temp_146_46:i32 
                    #      temp_146_46 = Add i32 sum_46, temp_145_46 
    sw      a0,452(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_146_46 
    mv      s9, a0
                    #      new_var temp_147_46:ptr->i32 
                    #      new_var temp_148_46:i32 
                    #      temp_147_46 = getelementptr a22_44:ptr->i32 [Some(1_0)] 
    sw      a0,444(sp)
    li      a0, 0
    sw      a1,468(sp)
    li      a1, 1
    sw      a2,448(sp)
    li      a2, 1
    sd      a3,1448(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_148_46 = load temp_147_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_149_46:ptr->i32 
                    #      new_var temp_150_46:i32 
                    #      temp_149_46 = getelementptr a22_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,432(sp)
    li      a0, 1
    sw      a1,428(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_150_46 = load temp_149_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_151_46:i32 
                    #      temp_151_46 = Add i32 temp_150_46, temp_148_46 
    sd      a2,416(sp)
    add     a2,a0,a1
                    #      new_var temp_152_46:i32 
                    #      temp_152_46 = Add i32 sum_46, temp_151_46 
    sw      a0,412(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_152_46 
    mv      s9, a0
                    #      new_var temp_153_46:ptr->i32 
                    #      new_var temp_154_46:i32 
                    #      temp_153_46 = getelementptr a23_44:ptr->i32 [Some(1_0)] 
    sw      a0,404(sp)
    li      a0, 0
    sw      a1,428(sp)
    li      a1, 1
    sw      a2,408(sp)
    li      a2, 1
    sd      a3,1440(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_154_46 = load temp_153_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_155_46:ptr->i32 
                    #      new_var temp_156_46:i32 
                    #      temp_155_46 = getelementptr a23_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,392(sp)
    li      a0, 1
    sw      a1,388(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_156_46 = load temp_155_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_157_46:i32 
                    #      temp_157_46 = Add i32 temp_156_46, temp_154_46 
    sd      a2,376(sp)
    add     a2,a0,a1
                    #      new_var temp_158_46:i32 
                    #      temp_158_46 = Add i32 sum_46, temp_157_46 
    sw      a0,372(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_158_46 
    mv      s9, a0
                    #      new_var temp_159_46:ptr->i32 
                    #      new_var temp_160_46:i32 
                    #      temp_159_46 = getelementptr a24_44:ptr->i32 [Some(1_0)] 
    sw      a0,364(sp)
    li      a0, 0
    sw      a1,388(sp)
    li      a1, 1
    sw      a2,368(sp)
    li      a2, 1
    sd      a3,1432(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_160_46 = load temp_159_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_161_46:ptr->i32 
                    #      new_var temp_162_46:i32 
                    #      temp_161_46 = getelementptr a24_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,352(sp)
    li      a0, 1
    sw      a1,348(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_162_46 = load temp_161_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_163_46:i32 
                    #      temp_163_46 = Add i32 temp_162_46, temp_160_46 
    sd      a2,336(sp)
    add     a2,a0,a1
                    #      new_var temp_164_46:i32 
                    #      temp_164_46 = Add i32 sum_46, temp_163_46 
    sw      a0,332(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_164_46 
    mv      s9, a0
                    #      new_var temp_165_46:ptr->i32 
                    #      new_var temp_166_46:i32 
                    #      temp_165_46 = getelementptr a25_44:ptr->i32 [Some(1_0)] 
    sw      a0,324(sp)
    li      a0, 0
    sw      a1,348(sp)
    li      a1, 1
    sw      a2,328(sp)
    li      a2, 1
    sd      a3,1424(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_166_46 = load temp_165_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_167_46:ptr->i32 
                    #      new_var temp_168_46:i32 
                    #      temp_167_46 = getelementptr a25_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,312(sp)
    li      a0, 1
    sw      a1,308(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_168_46 = load temp_167_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_169_46:i32 
                    #      temp_169_46 = Add i32 temp_168_46, temp_166_46 
    sd      a2,296(sp)
    add     a2,a0,a1
                    #      new_var temp_170_46:i32 
                    #      temp_170_46 = Add i32 sum_46, temp_169_46 
    sw      a0,292(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_170_46 
    mv      s9, a0
                    #      new_var temp_171_46:ptr->i32 
                    #      new_var temp_172_46:i32 
                    #      temp_171_46 = getelementptr a26_44:ptr->i32 [Some(1_0)] 
    sw      a0,284(sp)
    li      a0, 0
    sw      a1,308(sp)
    li      a1, 1
    sw      a2,288(sp)
    li      a2, 1
    sd      a3,1416(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_172_46 = load temp_171_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_173_46:ptr->i32 
                    #      new_var temp_174_46:i32 
                    #      temp_173_46 = getelementptr a26_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,272(sp)
    li      a0, 1
    sw      a1,268(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_174_46 = load temp_173_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_175_46:i32 
                    #      temp_175_46 = Add i32 temp_174_46, temp_172_46 
    sd      a2,256(sp)
    add     a2,a0,a1
                    #      new_var temp_176_46:i32 
                    #      temp_176_46 = Add i32 sum_46, temp_175_46 
    sw      a0,252(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_176_46 
    mv      s9, a0
                    #      new_var temp_177_46:ptr->i32 
                    #      new_var temp_178_46:i32 
                    #      temp_177_46 = getelementptr a27_44:ptr->i32 [Some(1_0)] 
    sw      a0,244(sp)
    li      a0, 0
    sw      a1,268(sp)
    li      a1, 1
    sw      a2,248(sp)
    li      a2, 1
    sd      a3,1408(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_178_46 = load temp_177_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_179_46:ptr->i32 
                    #      new_var temp_180_46:i32 
                    #      temp_179_46 = getelementptr a27_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,232(sp)
    li      a0, 1
    sw      a1,228(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_180_46 = load temp_179_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_181_46:i32 
                    #      temp_181_46 = Add i32 temp_180_46, temp_178_46 
    sd      a2,216(sp)
    add     a2,a0,a1
                    #      new_var temp_182_46:i32 
                    #      temp_182_46 = Add i32 sum_46, temp_181_46 
    sw      a0,212(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_182_46 
    mv      s9, a0
                    #      new_var temp_183_46:ptr->i32 
                    #      new_var temp_184_46:i32 
                    #      temp_183_46 = getelementptr a28_44:ptr->i32 [Some(1_0)] 
    sw      a0,204(sp)
    li      a0, 0
    sw      a1,228(sp)
    li      a1, 1
    sw      a2,208(sp)
    li      a2, 1
    sd      a3,1400(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_184_46 = load temp_183_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_185_46:ptr->i32 
                    #      new_var temp_186_46:i32 
                    #      temp_185_46 = getelementptr a28_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,192(sp)
    li      a0, 1
    sw      a1,188(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_186_46 = load temp_185_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_187_46:i32 
                    #      temp_187_46 = Add i32 temp_186_46, temp_184_46 
    sd      a2,176(sp)
    add     a2,a0,a1
                    #      new_var temp_188_46:i32 
                    #      temp_188_46 = Add i32 sum_46, temp_187_46 
    sw      a0,172(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_188_46 
    mv      s9, a0
                    #      new_var temp_189_46:ptr->i32 
                    #      new_var temp_190_46:i32 
                    #      temp_189_46 = getelementptr a29_44:ptr->i32 [Some(1_0)] 
    sw      a0,164(sp)
    li      a0, 0
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,168(sp)
    li      a2, 1
    sd      a3,1392(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_190_46 = load temp_189_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_191_46:ptr->i32 
                    #      new_var temp_192_46:i32 
                    #      temp_191_46 = getelementptr a29_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,152(sp)
    li      a0, 1
    sw      a1,148(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_192_46 = load temp_191_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_193_46:i32 
                    #      temp_193_46 = Add i32 temp_192_46, temp_190_46 
    sd      a2,136(sp)
    add     a2,a0,a1
                    #      new_var temp_194_46:i32 
                    #      temp_194_46 = Add i32 sum_46, temp_193_46 
    sw      a0,132(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_194_46 
    mv      s9, a0
                    #      new_var temp_195_46:ptr->i32 
                    #      new_var temp_196_46:i32 
                    #      temp_195_46 = getelementptr a30_44:ptr->i32 [Some(1_0)] 
    sw      a0,124(sp)
    li      a0, 0
    sw      a1,148(sp)
    li      a1, 1
    sw      a2,128(sp)
    li      a2, 1
    sd      a3,1384(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_196_46 = load temp_195_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_197_46:ptr->i32 
                    #      new_var temp_198_46:i32 
                    #      temp_197_46 = getelementptr a30_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,112(sp)
    li      a0, 1
    sw      a1,108(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_198_46 = load temp_197_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_199_46:i32 
                    #      temp_199_46 = Add i32 temp_198_46, temp_196_46 
    sd      a2,96(sp)
    add     a2,a0,a1
                    #      new_var temp_200_46:i32 
                    #      temp_200_46 = Add i32 sum_46, temp_199_46 
    sw      a0,92(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_200_46 
    mv      s9, a0
                    #      new_var temp_201_46:ptr->i32 
                    #      new_var temp_202_46:i32 
                    #      temp_201_46 = getelementptr a31_44:ptr->i32 [Some(1_0)] 
    sw      a0,84(sp)
    li      a0, 0
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,88(sp)
    li      a2, 1
    sd      a3,1376(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_202_46 = load temp_201_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_203_46:ptr->i32 
                    #      new_var temp_204_46:i32 
                    #      temp_203_46 = getelementptr a31_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,72(sp)
    li      a0, 1
    sw      a1,68(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_204_46 = load temp_203_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_205_46:i32 
                    #      temp_205_46 = Add i32 temp_204_46, temp_202_46 
    sd      a2,56(sp)
    add     a2,a0,a1
                    #      new_var temp_206_46:i32 
                    #      temp_206_46 = Add i32 sum_46, temp_205_46 
    sw      a0,52(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_206_46 
    mv      s9, a0
                    #      new_var temp_207_46:ptr->i32 
                    #      new_var temp_208_46:i32 
                    #      temp_207_46 = getelementptr a32_44:ptr->i32 [Some(1_0)] 
    sw      a0,44(sp)
    li      a0, 0
    sw      a1,68(sp)
    li      a1, 1
    sw      a2,48(sp)
    li      a2, 1
    sd      a3,1368(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_208_46 = load temp_207_46:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_209_46:ptr->i32 
                    #      new_var temp_210_46:i32 
                    #      temp_209_46 = getelementptr a32_44:ptr->i32 [Some(0_0)] 
    li      a2, 0
    sd      a0,32(sp)
    li      a0, 1
    sw      a1,28(sp)
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_210_46 = load temp_209_46:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_211_46:i32 
                    #      temp_211_46 = Add i32 temp_210_46, temp_208_46 
    sd      a2,16(sp)
    add     a2,a0,a1
                    #      new_var temp_212_46:i32 
                    #      temp_212_46 = Add i32 sum_46, temp_211_46 
    sw      a0,12(sp)
    add     a0,s9,a2
                    #      sum_46 = i32 temp_212_46 
    mv      s9, a0
                    #      ret sum_46 
    ld      ra,1352(sp)
    ld      s0,1344(sp)
    sw      s9,1244(sp)
    sw      a0,4(sp)
    addi    sp,sp,1552
    ret
                    #regtab     a0:Freed { symidx: sum_46, tracked: true } |     a1:Freed { symidx: temp_208_46, tracked: true } |     a2:Freed { symidx: temp_211_46, tracked: true } |     a3:Freed { symidx: a32_44, tracked: true } |     a4:Freed { symidx: a5_44, tracked: true } |     a5:Freed { symidx: a6_44, tracked: true } |     a6:Freed { symidx: a7_44, tracked: true } |     a7:Freed { symidx: a8_44, tracked: true } |     s10:Freed { symidx: temp_27_46, tracked: true } |     s11:Freed { symidx: temp_28_46, tracked: true } |     s1:Freed { symidx: temp_22_46, tracked: true } |     s2:Freed { symidx: temp_29_46, tracked: true } |     s3:Freed { symidx: temp_30_46, tracked: true } |     s4:Freed { symidx: temp_23_46, tracked: true } |     s5:Freed { symidx: temp_24_46, tracked: true } |     s6:Freed { symidx: temp_31_46, tracked: true } |     s7:Freed { symidx: temp_25_46, tracked: true } |     s8:Freed { symidx: temp_26_46, tracked: true } | 
                    #regtab 
                    #      Define param16_0 [a1_80, a2_80, a3_80, a4_80, a5_80, a6_80, a7_80, a8_80, a9_80, a10_80, a11_80, a12_80, a13_80, a14_80, a15_80, a16_80] -> param16_ret_0 
    .globl param16
    .type param16,@function
param16:
                    #mem layout:|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4|ra_param16:8|s0_param16:8|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|a8:4|temp_213:8|temp_214:8|temp_215:8|temp_216:8|temp_217:8|temp_218:8|temp_219:8|temp_220:8|temp_221:8|temp_222:8|temp_223:8|temp_224:8|temp_225:8|temp_226:8|temp_227:8|temp_228:8|arr:64|temp_229:8|temp_230:4|none:4|temp_231:8|temp_232:4|none:4|temp_233:8|temp_234:4|none:4|temp_235:8|temp_236:4|none:4|temp_237:8|temp_238:4|none:4|temp_239:8|temp_240:4|none:4|temp_241:8|temp_242:4|none:4|temp_243:8|temp_244:4|none:4|temp_245:8|temp_246:4|none:4|temp_247:8|temp_248:4|none:4|temp_249:8|temp_250:4|none:4|temp_251:8|temp_252:4|none:4|temp_253:8|temp_254:4|none:4|temp_255:8|temp_256:4|none:4|temp_257:8|temp_258:4|none:4|temp_259:8|temp_260:4|temp_261:4
    addi    sp,sp,-528
    sd      ra,488(sp)
    sd      s0,480(sp)
    addi    s0,sp,528
                    #      alloc ptr->i32 temp_213_82 
                    #      alloc ptr->i32 temp_214_82 
                    #      alloc ptr->i32 temp_215_82 
                    #      alloc ptr->i32 temp_216_82 
                    #      alloc ptr->i32 temp_217_82 
                    #      alloc ptr->i32 temp_218_82 
                    #      alloc ptr->i32 temp_219_82 
                    #      alloc ptr->i32 temp_220_82 
                    #      alloc ptr->i32 temp_221_82 
                    #      alloc ptr->i32 temp_222_82 
                    #      alloc ptr->i32 temp_223_82 
                    #      alloc ptr->i32 temp_224_82 
                    #      alloc ptr->i32 temp_225_82 
                    #      alloc ptr->i32 temp_226_82 
                    #      alloc ptr->i32 temp_227_82 
                    #      alloc ptr->i32 temp_228_82 
                    #      alloc Array:i32:[Some(16_0)] arr_82 
                    #      alloc ptr->i32 temp_229_82 
                    #      alloc i32 temp_230_82 
                    #      alloc ptr->i32 temp_231_82 
                    #      alloc i32 temp_232_82 
                    #      alloc ptr->i32 temp_233_82 
                    #      alloc i32 temp_234_82 
                    #      alloc ptr->i32 temp_235_82 
                    #      alloc i32 temp_236_82 
                    #      alloc ptr->i32 temp_237_82 
                    #      alloc i32 temp_238_82 
                    #      alloc ptr->i32 temp_239_82 
                    #      alloc i32 temp_240_82 
                    #      alloc ptr->i32 temp_241_82 
                    #      alloc i32 temp_242_82 
                    #      alloc ptr->i32 temp_243_82 
                    #      alloc i32 temp_244_82 
                    #      alloc ptr->i32 temp_245_82 
                    #      alloc i32 temp_246_82 
                    #      alloc ptr->i32 temp_247_82 
                    #      alloc i32 temp_248_82 
                    #      alloc ptr->i32 temp_249_82 
                    #      alloc i32 temp_250_82 
                    #      alloc ptr->i32 temp_251_82 
                    #      alloc i32 temp_252_82 
                    #      alloc ptr->i32 temp_253_82 
                    #      alloc i32 temp_254_82 
                    #      alloc ptr->i32 temp_255_82 
                    #      alloc i32 temp_256_82 
                    #      alloc ptr->i32 temp_257_82 
                    #      alloc i32 temp_258_82 
                    #      alloc ptr->i32 temp_259_82 
                    #      alloc i32 temp_260_82 
                    #      alloc i32 temp_261_82 
                    #regtab     a0:Freed { symidx: a1_80, tracked: true } |     a1:Freed { symidx: a2_80, tracked: true } |     a2:Freed { symidx: a3_80, tracked: true } |     a3:Freed { symidx: a4_80, tracked: true } |     a4:Freed { symidx: a5_80, tracked: true } |     a5:Freed { symidx: a6_80, tracked: true } |     a6:Freed { symidx: a7_80, tracked: true } |     a7:Freed { symidx: a8_80, tracked: true } | 
                    #      label L1_0: 
.L1_0:
                    #      new_var arr_82:Array:i32:[Some(16_0)] 
                    #      new_var temp_213_82:ptr->i32 
                    #      temp_213_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      s1, 0
    li      s2, 1
    li      s3, 1
    mul     s4,s2,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store a2_80:i32 temp_213_82:ptr->i32 
    sd      a1,0(s1)
                    #      mu arr_82:765 
                    #      arr_82 = chi arr_82:765 
                    #      new_var temp_214_82:ptr->i32 
                    #      temp_214_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(6_0)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s6, 6
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store a7_80:i32 temp_214_82:ptr->i32 
    sd      a6,0(s5)
                    #      mu arr_82:771 
                    #      arr_82 = chi arr_82:771 
                    #      new_var temp_215_82:ptr->i32 
                    #      temp_215_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(5_0)] 
    li      s7, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s8, 5
    add     s7,s7,s4
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store a6_80:i32 temp_215_82:ptr->i32 
    sd      a5,0(s7)
                    #      mu arr_82:777 
                    #      arr_82 = chi arr_82:777 
                    #      new_var temp_216_82:ptr->i32 
                    #      temp_216_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(2_0)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s10, 2
    add     s9,s9,s4
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store a3_80:i32 temp_216_82:ptr->i32 
    sd      a2,0(s9)
                    #      mu arr_82:783 
                    #      arr_82 = chi arr_82:783 
                    #      new_var temp_217_82:ptr->i32 
                    #      temp_217_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(0_0)] 
    li      s11, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s2, 0
    add     s11,s11,s4
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      store a1_80:i32 temp_217_82:ptr->i32 
    sd      a0,0(s11)
                    #      mu arr_82:789 
                    #      arr_82 = chi arr_82:789 
                    #      new_var temp_218_82:ptr->i32 
                    #      temp_218_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(10_0)] 
    li      s2, 0
                    #found literal reg Some(s3) already exist with 1_0
    li      s6, 10
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store a11_80:i32 temp_218_82:ptr->i32 
    sd      s3,0(s2)
                    #      mu arr_82:795 
                    #      arr_82 = chi arr_82:795 
                    #      new_var temp_219_82:ptr->i32 
                    #      temp_219_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(7_0)] 
    li      s6, 0
    li      s8, 1
    li      s10, 7
    add     s6,s6,s4
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store a8_80:i32 temp_219_82:ptr->i32 
    sd      a7,0(s6)
                    #      mu arr_82:801 
                    #      arr_82 = chi arr_82:801 
                    #      new_var temp_220_82:ptr->i32 
                    #      temp_220_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(9_0)] 
    li      s8, 0
    li      s10, 1
    sw      a0,476(sp)
    li      a0, 9
    add     s8,s8,s4
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store a10_80:i32 temp_220_82:ptr->i32 
    sd      a0,0(s8)
                    #      mu arr_82:807 
                    #      arr_82 = chi arr_82:807 
                    #      new_var temp_221_82:ptr->i32 
                    #      temp_221_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(8_0)] 
    li      s10, 0
    sw      a0,520(sp)
    li      a0, 1
    sw      a1,472(sp)
    li      a1, 8
    add     s10,s10,s4
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store a9_80:i32 temp_221_82:ptr->i32 
    sd      a0,0(s10)
                    #      mu arr_82:813 
                    #      arr_82 = chi arr_82:813 
                    #      new_var temp_222_82:ptr->i32 
                    #      temp_222_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(3_0)] 
    li      a1, 0
    sw      a0,524(sp)
    li      a0, 1
    sw      a2,468(sp)
    li      a2, 3
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store a4_80:i32 temp_222_82:ptr->i32 
    sd      a3,0(a1)
                    #      mu arr_82:819 
                    #      arr_82 = chi arr_82:819 
                    #      new_var temp_223_82:ptr->i32 
                    #      temp_223_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(14_0)] 
    li      a0, 0
    li      a2, 1
    sd      a1,368(sp)
    li      a1, 14
    add     a0,a0,s4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store a15_80:i32 temp_223_82:ptr->i32 
    sd      a1,0(a0)
                    #      mu arr_82:825 
                    #      arr_82 = chi arr_82:825 
                    #      new_var temp_224_82:ptr->i32 
                    #      temp_224_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(15_0)] 
    li      a2, 0
    sd      a0,360(sp)
    li      a0, 1
    sw      a1,500(sp)
    li      a1, 15
    add     a2,a2,s4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store a16_80:i32 temp_224_82:ptr->i32 
    sd      a0,0(a2)
                    #      mu arr_82:831 
                    #      arr_82 = chi arr_82:831 
                    #      new_var temp_225_82:ptr->i32 
                    #      temp_225_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(11_0)] 
    li      a1, 0
    sw      a0,496(sp)
    li      a0, 1
    sd      a2,352(sp)
    li      a2, 11
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store a12_80:i32 temp_225_82:ptr->i32 
    sd      a0,0(a1)
                    #      mu arr_82:837 
                    #      arr_82 = chi arr_82:837 
                    #      new_var temp_226_82:ptr->i32 
                    #      temp_226_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(12_0)] 
    li      a2, 0
    sw      a0,512(sp)
    li      a0, 1
    sd      a1,344(sp)
    li      a1, 12
    add     a2,a2,s4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store a13_80:i32 temp_226_82:ptr->i32 
    sd      a0,0(a2)
                    #      mu arr_82:843 
                    #      arr_82 = chi arr_82:843 
                    #      new_var temp_227_82:ptr->i32 
                    #      temp_227_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(4_0)] 
    li      a1, 0
    sw      a0,508(sp)
    li      a0, 1
    sd      a2,336(sp)
    li      a2, 4
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store a5_80:i32 temp_227_82:ptr->i32 
    sd      a4,0(a1)
                    #      mu arr_82:849 
                    #      arr_82 = chi arr_82:849 
                    #      new_var temp_228_82:ptr->i32 
                    #      temp_228_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(13_0)] 
    li      a0, 0
    li      a2, 1
    sd      a1,328(sp)
    li      a1, 13
    add     a0,a0,s4
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store a14_80:i32 temp_228_82:ptr->i32 
    sd      a1,0(a0)
                    #      mu arr_82:855 
                    #      arr_82 = chi arr_82:855 
                    #       Call void sort_0(arr_82, 16_0) 
                    #saved register dumping to mem
    sd      s1,440(sp)
    sd      s2,400(sp)
    sw      s3,516(sp)
    sw      s4,316(sp)
    sd      s5,432(sp)
    sd      s6,392(sp)
    sd      s7,424(sp)
    sd      s8,384(sp)
    sd      s9,416(sp)
    sd      s10,376(sp)
    sd      s11,408(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,320(sp)
    lw      a0,316(sp)
    sw      a1,504(sp)
    li      a1, 16
                    #arg load ended
    call    sort
                    #      new_var temp_229_82:ptr->i32 
                    #      new_var temp_230_82:i32 
                    #      temp_229_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(0_0)] 
    li      a0, 0
                    #found literal reg Some(a2) already exist with 1_0
    li      a1, 0
    mul     s1,a2,a1
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_230_82 = load temp_229_82:ptr->i32 
    lw      s2,0(a0)
                    #      new_var temp_231_82:ptr->i32 
                    #      new_var temp_232_82:i32 
                    #      temp_231_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(a2) already exist with 1_0
    li      s4, 1
    add     s3,s3,s1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_232_82 = load temp_231_82:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_233_82:ptr->i32 
                    #      new_var temp_234_82:i32 
                    #      temp_233_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(2_0)] 
    li      s6, 0
                    #found literal reg Some(s4) already exist with 1_0
    li      s7, 2
    add     s6,s6,s1
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_234_82 = load temp_233_82:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_235_82:ptr->i32 
                    #      new_var temp_236_82:i32 
                    #      temp_235_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(3_0)] 
    li      s9, 0
                    #found literal reg Some(s4) already exist with 1_0
    li      s10, 3
    add     s9,s9,s1
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_236_82 = load temp_235_82:ptr->i32 
    lw      s11,0(s9)
                    #      new_var temp_237_82:ptr->i32 
                    #      new_var temp_238_82:i32 
                    #      temp_237_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(4_0)] 
    li      a1, 0
                    #found literal reg Some(s4) already exist with 1_0
    li      a2, 4
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_238_82 = load temp_237_82:ptr->i32 
    lw      a2,0(a1)
                    #      new_var temp_239_82:ptr->i32 
                    #      new_var temp_240_82:i32 
                    #      temp_239_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(5_0)] 
    li      s4, 0
    li      s7, 1
    li      s10, 5
    add     s4,s4,s1
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_240_82 = load temp_239_82:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_241_82:ptr->i32 
                    #      new_var temp_242_82:i32 
                    #      temp_241_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(6_0)] 
    li      s10, 0
    sd      a0,248(sp)
    li      a0, 1
    sd      a1,184(sp)
    li      a1, 6
    add     s10,s10,s1
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_242_82 = load temp_241_82:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_243_82:ptr->i32 
                    #      new_var temp_244_82:i32 
                    #      temp_243_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(7_0)] 
    li      a1, 0
    sw      a0,148(sp)
    li      a0, 1
    sw      a2,180(sp)
    li      a2, 7
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_244_82 = load temp_243_82:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_245_82:ptr->i32 
                    #      new_var temp_246_82:i32 
                    #      temp_245_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(8_0)] 
    li      a2, 0
    sw      a0,132(sp)
    li      a0, 1
    sd      a1,136(sp)
    li      a1, 8
    add     a2,a2,s1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_246_82 = load temp_245_82:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_247_82:ptr->i32 
                    #      new_var temp_248_82:i32 
                    #      temp_247_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(9_0)] 
    li      a1, 0
    sw      a0,116(sp)
    li      a0, 1
    sd      a2,120(sp)
    li      a2, 9
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_248_82 = load temp_247_82:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_249_82:ptr->i32 
                    #      new_var temp_250_82:i32 
                    #      temp_249_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(10_0)] 
    li      a2, 0
    sw      a0,100(sp)
    li      a0, 1
    sd      a1,104(sp)
    li      a1, 10
    add     a2,a2,s1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_250_82 = load temp_249_82:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_251_82:ptr->i32 
                    #      new_var temp_252_82:i32 
                    #      temp_251_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(11_0)] 
    li      a1, 0
    sw      a0,84(sp)
    li      a0, 1
    sd      a2,88(sp)
    li      a2, 11
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_252_82 = load temp_251_82:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_253_82:ptr->i32 
                    #      new_var temp_254_82:i32 
                    #      temp_253_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(12_0)] 
    li      a2, 0
    sw      a0,68(sp)
    li      a0, 1
    sd      a1,72(sp)
    li      a1, 12
    add     a2,a2,s1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_254_82 = load temp_253_82:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_255_82:ptr->i32 
                    #      new_var temp_256_82:i32 
                    #      temp_255_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(13_0)] 
    li      a1, 0
    sw      a0,52(sp)
    li      a0, 1
    sd      a2,56(sp)
    li      a2, 13
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_256_82 = load temp_255_82:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_257_82:ptr->i32 
                    #      new_var temp_258_82:i32 
                    #      temp_257_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(14_0)] 
    li      a2, 0
    sw      a0,36(sp)
    li      a0, 1
    sd      a1,40(sp)
    li      a1, 14
    add     a2,a2,s1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_258_82 = load temp_257_82:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_259_82:ptr->i32 
                    #      new_var temp_260_82:i32 
                    #      temp_259_82 = getelementptr arr_82:Array:i32:[Some(16_0)] [Some(15_0)] 
    li      a1, 0
    sw      a0,20(sp)
    li      a0, 1
    sd      a2,24(sp)
    li      a2, 15
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_260_82 = load temp_259_82:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_261_82:i32 
                    #      temp_261_82 =  Call i32 param32_rec_0(temp_230_82, temp_232_82, temp_234_82, temp_236_82, temp_238_82, temp_240_82, temp_242_82, temp_244_82, temp_246_82, temp_248_82, temp_250_82, temp_252_82, temp_254_82, temp_256_82, temp_258_82, temp_260_82, a1_80, a2_80, a3_80, a4_80, a5_80, a6_80, a7_80, a8_80, a9_80, a10_80, a11_80, a12_80, a13_80, a14_80, a15_80, a16_80) 
                    #saved register dumping to mem
    sw      s1,316(sp)
    sw      s2,244(sp)
    sd      s3,232(sp)
    sd      s4,168(sp)
    sw      s5,228(sp)
    sd      s6,216(sp)
    sw      s7,164(sp)
    sw      s8,212(sp)
    sd      s9,200(sp)
    sd      s10,152(sp)
    sw      s11,196(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,244(sp)
    sd      a1,8(sp)
    lw      a1,228(sp)
    lw      a2,212(sp)
    sw      a3,464(sp)
    lw      a3,196(sp)
    sw      a4,460(sp)
    lw      a4,180(sp)
    sw      a5,456(sp)
    lw      a5,164(sp)
    sw      a6,452(sp)
    lw      a6,148(sp)
    sw      a7,448(sp)
    lw      a7,132(sp)
                    #arg load ended
    call    param32_rec
    sw      a0,0(sp)
                    #      ret temp_261_82 
    ld      ra,488(sp)
    ld      s0,480(sp)
    sw      a0,0(sp)
    addi    sp,sp,528
    ret
                    #regtab     a0:Freed { symidx: temp_261_82, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_262:4|temp_263:4|temp_264:4|temp_265:4|temp_266:4|temp_267:4|temp_268:4|temp_269:4|temp_270:4|temp_271:4|temp_272:4|temp_273:4|temp_274:4|temp_275:4|temp_276:4|temp_277:4|temp_278:4|none:4|temp_279:8|temp_280:8|arr:256|i:4|temp_281:1|none:3|temp_282:8|temp_283:4|none:4|temp_284:8|temp_285:4|temp_286:4|temp_287:8|temp_288:4|none:4|temp_289:8|temp_290:4|temp_291:4|temp_292:4|none:4|temp_293:8|temp_294:8|temp_295:8|temp_296:8|temp_297:8|temp_298:8|temp_299:8|temp_300:8|temp_301:8|temp_302:8|temp_303:8|temp_304:8|temp_305:8|temp_306:8|temp_307:8|temp_308:8|temp_309:8|temp_310:8|temp_311:8|temp_312:8|temp_313:8|temp_314:8|temp_315:8|temp_316:8|temp_317:8|temp_318:8|temp_319:8|temp_320:8|temp_321:8|temp_322:8|temp_323:8|temp_324:8|temp_325:8|temp_326:8|temp_327:8|temp_328:8|temp_329:8|temp_330:8|temp_331:8|temp_332:8|temp_333:8|temp_334:8|temp_335:8|temp_336:8|temp_337:8|temp_338:8|temp_339:8|temp_340:8|temp_341:8|temp_342:8|temp_343:8|temp_344:8|temp_345:8|temp_346:8|temp_347:8|temp_348:8|temp_349:8|temp_350:8|temp_351:8|temp_352:8|temp_353:8|temp_354:8|temp_355:8|temp_356:8|temp_357:4|none:4
    addi    sp,sp,-960
    sd      ra,952(sp)
    sd      s0,944(sp)
    addi    s0,sp,960
                    #      alloc i32 temp_262_87 
                    #      alloc i32 temp_263_87 
                    #      alloc i32 temp_264_87 
                    #      alloc i32 temp_265_87 
                    #      alloc i32 temp_266_87 
                    #      alloc i32 temp_267_87 
                    #      alloc i32 temp_268_87 
                    #      alloc i32 temp_269_87 
                    #      alloc i32 temp_270_87 
                    #      alloc i32 temp_271_87 
                    #      alloc i32 temp_272_87 
                    #      alloc i32 temp_273_87 
                    #      alloc i32 temp_274_87 
                    #      alloc i32 temp_275_87 
                    #      alloc i32 temp_276_87 
                    #      alloc i32 temp_277_87 
                    #      alloc i32 temp_278_87 
                    #      alloc ptr->i32 temp_279_87 
                    #      alloc ptr->i32 temp_280_87 
                    #      alloc Array:i32:[Some(32_0), Some(2_0)] arr_87 
                    #      alloc i32 i_87 
                    #      alloc i1 temp_281_89 
                    #      alloc ptr->i32 temp_282_91 
                    #      alloc i32 temp_283_91 
                    #      alloc ptr->i32 temp_284_91 
                    #      alloc i32 temp_285_91 
                    #      alloc i32 temp_286_91 
                    #      alloc ptr->i32 temp_287_91 
                    #      alloc i32 temp_288_91 
                    #      alloc ptr->i32 temp_289_91 
                    #      alloc i32 temp_290_91 
                    #      alloc i32 temp_291_91 
                    #      alloc i32 temp_292_91 
                    #      alloc ptr->i32 temp_293_87 
                    #      alloc Array:i32:[Some(2_0)] temp_294_87 
                    #      alloc ptr->i32 temp_295_87 
                    #      alloc Array:i32:[Some(2_0)] temp_296_87 
                    #      alloc ptr->i32 temp_297_87 
                    #      alloc Array:i32:[Some(2_0)] temp_298_87 
                    #      alloc ptr->i32 temp_299_87 
                    #      alloc Array:i32:[Some(2_0)] temp_300_87 
                    #      alloc ptr->i32 temp_301_87 
                    #      alloc Array:i32:[Some(2_0)] temp_302_87 
                    #      alloc ptr->i32 temp_303_87 
                    #      alloc Array:i32:[Some(2_0)] temp_304_87 
                    #      alloc ptr->i32 temp_305_87 
                    #      alloc Array:i32:[Some(2_0)] temp_306_87 
                    #      alloc ptr->i32 temp_307_87 
                    #      alloc Array:i32:[Some(2_0)] temp_308_87 
                    #      alloc ptr->i32 temp_309_87 
                    #      alloc Array:i32:[Some(2_0)] temp_310_87 
                    #      alloc ptr->i32 temp_311_87 
                    #      alloc Array:i32:[Some(2_0)] temp_312_87 
                    #      alloc ptr->i32 temp_313_87 
                    #      alloc Array:i32:[Some(2_0)] temp_314_87 
                    #      alloc ptr->i32 temp_315_87 
                    #      alloc Array:i32:[Some(2_0)] temp_316_87 
                    #      alloc ptr->i32 temp_317_87 
                    #      alloc Array:i32:[Some(2_0)] temp_318_87 
                    #      alloc ptr->i32 temp_319_87 
                    #      alloc Array:i32:[Some(2_0)] temp_320_87 
                    #      alloc ptr->i32 temp_321_87 
                    #      alloc Array:i32:[Some(2_0)] temp_322_87 
                    #      alloc ptr->i32 temp_323_87 
                    #      alloc Array:i32:[Some(2_0)] temp_324_87 
                    #      alloc ptr->i32 temp_325_87 
                    #      alloc Array:i32:[Some(2_0)] temp_326_87 
                    #      alloc ptr->i32 temp_327_87 
                    #      alloc Array:i32:[Some(2_0)] temp_328_87 
                    #      alloc ptr->i32 temp_329_87 
                    #      alloc Array:i32:[Some(2_0)] temp_330_87 
                    #      alloc ptr->i32 temp_331_87 
                    #      alloc Array:i32:[Some(2_0)] temp_332_87 
                    #      alloc ptr->i32 temp_333_87 
                    #      alloc Array:i32:[Some(2_0)] temp_334_87 
                    #      alloc ptr->i32 temp_335_87 
                    #      alloc Array:i32:[Some(2_0)] temp_336_87 
                    #      alloc ptr->i32 temp_337_87 
                    #      alloc Array:i32:[Some(2_0)] temp_338_87 
                    #      alloc ptr->i32 temp_339_87 
                    #      alloc Array:i32:[Some(2_0)] temp_340_87 
                    #      alloc ptr->i32 temp_341_87 
                    #      alloc Array:i32:[Some(2_0)] temp_342_87 
                    #      alloc ptr->i32 temp_343_87 
                    #      alloc Array:i32:[Some(2_0)] temp_344_87 
                    #      alloc ptr->i32 temp_345_87 
                    #      alloc Array:i32:[Some(2_0)] temp_346_87 
                    #      alloc ptr->i32 temp_347_87 
                    #      alloc Array:i32:[Some(2_0)] temp_348_87 
                    #      alloc ptr->i32 temp_349_87 
                    #      alloc Array:i32:[Some(2_0)] temp_350_87 
                    #      alloc ptr->i32 temp_351_87 
                    #      alloc Array:i32:[Some(2_0)] temp_352_87 
                    #      alloc ptr->i32 temp_353_87 
                    #      alloc Array:i32:[Some(2_0)] temp_354_87 
                    #      alloc ptr->i32 temp_355_87 
                    #      alloc Array:i32:[Some(2_0)] temp_356_87 
                    #      alloc i32 temp_357_87 
                    #regtab 
                    #      label L0_0: 
.L0_0:
                    #      new_var arr_87:Array:i32:[Some(32_0), Some(2_0)] 
                    #      new_var temp_262_87:i32 
                    #      temp_262_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,940(sp)
                    #      new_var temp_263_87:i32 
                    #      temp_263_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,940(sp)
    sw      a0,936(sp)
                    #      new_var temp_264_87:i32 
                    #      temp_264_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,936(sp)
    sw      a0,932(sp)
                    #      new_var temp_265_87:i32 
                    #      temp_265_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,932(sp)
    sw      a0,928(sp)
                    #      new_var temp_266_87:i32 
                    #      temp_266_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,928(sp)
    sw      a0,924(sp)
                    #      new_var temp_267_87:i32 
                    #      temp_267_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,924(sp)
    sw      a0,920(sp)
                    #      new_var temp_268_87:i32 
                    #      temp_268_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,920(sp)
    sw      a0,916(sp)
                    #      new_var temp_269_87:i32 
                    #      temp_269_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,916(sp)
    sw      a0,912(sp)
                    #      new_var temp_270_87:i32 
                    #      temp_270_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,912(sp)
    sw      a0,908(sp)
                    #      new_var temp_271_87:i32 
                    #      temp_271_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,908(sp)
    sw      a0,904(sp)
                    #      new_var temp_272_87:i32 
                    #      temp_272_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,904(sp)
    sw      a0,900(sp)
                    #      new_var temp_273_87:i32 
                    #      temp_273_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,900(sp)
    sw      a0,896(sp)
                    #      new_var temp_274_87:i32 
                    #      temp_274_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,896(sp)
    sw      a0,892(sp)
                    #      new_var temp_275_87:i32 
                    #      temp_275_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,892(sp)
    sw      a0,888(sp)
                    #      new_var temp_276_87:i32 
                    #      temp_276_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,888(sp)
    sw      a0,884(sp)
                    #      new_var temp_277_87:i32 
                    #      temp_277_87 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,884(sp)
    sw      a0,880(sp)
                    #      new_var temp_278_87:i32 
                    #      temp_278_87 =  Call i32 param16_0(temp_262_87, temp_263_87, temp_264_87, temp_265_87, temp_266_87, temp_267_87, temp_268_87, temp_269_87, temp_270_87, temp_271_87, temp_272_87, temp_273_87, temp_274_87, temp_275_87, temp_276_87, temp_277_87) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,880(sp)
    lw      a0,940(sp)
    lw      a1,936(sp)
    lw      a2,932(sp)
    lw      a3,928(sp)
    lw      a4,924(sp)
    lw      a5,920(sp)
    lw      a6,916(sp)
    lw      a7,912(sp)
                    #arg load ended
    call    param16
    sw      a0,876(sp)
                    #      new_var temp_279_87:ptr->i32 
                    #      temp_279_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0), Some(0_0)] 
    li      a1, 0
    li      a2, 2
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    li      a5, 1
                    #found literal reg Some(a3) already exist with 0_0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store temp_278_87:i32 temp_279_87:ptr->Array:i32:[Some(2_0)] 
    sd      a0,0(a1)
                    #      mu arr_87:1016 
                    #      arr_87 = chi arr_87:1016 
                    #      new_var temp_280_87:ptr->i32 
                    #      temp_280_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0), Some(1_0)] 
    li      a6, 0
                    #found literal reg Some(a2) already exist with 2_0
                    #found literal reg Some(a3) already exist with 0_0
    add     a6,a6,a4
                    #found literal reg Some(a5) already exist with 1_0
    li      a7, 1
    add     a6,a6,a4
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 8848_0:i32 temp_280_87:ptr->Array:i32:[Some(2_0)] 
    li      s1, 8848
    sd      s1,0(a6)
                    #      mu arr_87:1022 
                    #      arr_87 = chi arr_87:1022 
                    #      i_87 = i32 1_0 
    li      s2, 1
                    #      jump label: while.head_90 
    j       .while.head_90
                    #regtab     a0:Freed { symidx: temp_278_87, tracked: true } |     a1:Freed { symidx: temp_279_87, tracked: true } |     a4:Freed { symidx: arr_87, tracked: true } |     a6:Freed { symidx: temp_280_87, tracked: true } |     s2:Freed { symidx: i_87, tracked: true } | 
                    #      label while.head_90: 
.while.head_90:
                    #      new_var temp_281_89:i1 
                    #      temp_281_89 = icmp i32 Slt i_87, 32_0 
    li      a2, 32
    slt     a3,s2,a2
                    #      br i1 temp_281_89, label while.body_90, label while.exit_90 
    bnez    a3, .while.body_90
    j       .while.exit_90
                    #regtab     a0:Freed { symidx: temp_278_87, tracked: true } |     a1:Freed { symidx: temp_279_87, tracked: true } |     a3:Freed { symidx: temp_281_89, tracked: true } |     a4:Freed { symidx: arr_87, tracked: true } |     a6:Freed { symidx: temp_280_87, tracked: true } |     s2:Freed { symidx: i_87, tracked: true } | 
                    #      label while.body_90: 
.while.body_90:
                    #      new_var temp_282_91:ptr->i32 
                    #      temp_282_91 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(i_87), Some(0_0)] 
    li      a2, 0
    li      a5, 2
    add     a2,a2,a4
    li      a7, 1
    li      s1, 0
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_283_91:i32 
                    #      temp_283_91 = Sub i32 i_87, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s3,s2,a7
                    #      new_var temp_284_91:ptr->i32 
                    #      new_var temp_285_91:i32 
                    #      temp_284_91 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(temp_283_91), Some(1_0)] 
    li      s4, 0
                    #found literal reg Some(a5) already exist with 2_0
    add     s4,s4,a4
                    #found literal reg Some(a7) already exist with 1_0
    li      s5, 1
    add     s4,s4,a4
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_285_91 = load temp_284_91:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_286_91:i32 
                    #      temp_286_91 = Sub i32 temp_285_91, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s7,s6,a7
                    #      store temp_286_91:i32 temp_282_91:ptr->i32 
    sd      s7,0(a2)
                    #      mu arr_87:1051 
                    #      arr_87 = chi arr_87:1051 
                    #      new_var temp_287_91:ptr->i32 
                    #      temp_287_91 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(i_87), Some(1_0)] 
    li      s8, 0
                    #found literal reg Some(a5) already exist with 2_0
    add     s8,s8,a4
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(s5) already exist with 1_0
    add     s8,s8,a4
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      new_var temp_288_91:i32 
                    #      temp_288_91 = Sub i32 i_87, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s9,s2,a7
                    #      new_var temp_289_91:ptr->i32 
                    #      new_var temp_290_91:i32 
                    #      temp_289_91 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(temp_288_91), Some(0_0)] 
    li      s10, 0
                    #found literal reg Some(a5) already exist with 2_0
    add     s10,s10,a4
                    #found literal reg Some(a7) already exist with 1_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s10,s10,a4
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_290_91 = load temp_289_91:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_291_91:i32 
                    #      temp_291_91 = Sub i32 temp_290_91, 2_0 
                    #found literal reg Some(a5) already exist with 2_0
    sub     a7,s11,a5
                    #      store temp_291_91:i32 temp_287_91:ptr->i32 
    sd      a7,0(s8)
                    #      mu arr_87:1069 
                    #      arr_87 = chi arr_87:1069 
                    #      new_var temp_292_91:i32 
                    #      temp_292_91 = Add i32 i_87, 1_0 
                    #found literal reg Some(s5) already exist with 1_0
    add     a5,s2,s5
                    #      i_87 = i32 temp_292_91 
    mv      s2, a5
                    #      jump label: while.head_90 
    sw      s11,532(sp)
    sd      s10,536(sp)
    sw      a5,524(sp)
    sw      s9,548(sp)
    sw      a7,528(sp)
    sw      s3,580(sp)
    sd      s4,568(sp)
    sd      a2,584(sp)
    sw      s7,560(sp)
    sw      s6,564(sp)
    sd      s8,552(sp)
    sb      a3,595(sp)
    j       .while.head_90
                    #regtab     a0:Freed { symidx: temp_278_87, tracked: true } |     a1:Freed { symidx: temp_279_87, tracked: true } |     a3:Freed { symidx: temp_281_89, tracked: true } |     a4:Freed { symidx: arr_87, tracked: true } |     a6:Freed { symidx: temp_280_87, tracked: true } |     s2:Freed { symidx: i_87, tracked: true } | 
                    #      label while.exit_90: 
.while.exit_90:
                    #      new_var temp_293_87:ptr->i32 
                    #      new_var temp_294_87:Array:i32:[Some(2_0)] 
                    #      temp_293_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0)] 
    li      a2, 0
    li      a5, 2
    li      a7, 0
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_294_87 = load temp_293_87:ptr->i32 
    lw      s1,0(a2)
                    #      new_var temp_295_87:ptr->i32 
                    #      new_var temp_296_87:Array:i32:[Some(2_0)] 
                    #      temp_295_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(a5) already exist with 2_0
    li      s4, 1
    add     s3,s3,a4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_296_87 = load temp_295_87:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_297_87:ptr->i32 
                    #      new_var temp_298_87:Array:i32:[Some(2_0)] 
                    #      temp_297_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(2_0)] 
    li      s6, 0
                    #found literal reg Some(a5) already exist with 2_0
    li      s7, 2
    add     s6,s6,a4
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_298_87 = load temp_297_87:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_299_87:ptr->i32 
                    #      new_var temp_300_87:Array:i32:[Some(2_0)] 
                    #      temp_299_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(3_0)] 
    li      s9, 0
                    #found literal reg Some(a5) already exist with 2_0
    li      s10, 3
    add     s9,s9,a4
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_300_87 = load temp_299_87:ptr->i32 
    lw      s11,0(s9)
                    #      new_var temp_301_87:ptr->i32 
                    #      new_var temp_302_87:Array:i32:[Some(2_0)] 
                    #      temp_301_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(4_0)] 
    li      a5, 0
                    #found literal reg Some(s7) already exist with 2_0
    li      a7, 4
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_302_87 = load temp_301_87:ptr->i32 
    lw      a7,0(a5)
                    #      new_var temp_303_87:ptr->i32 
                    #      new_var temp_304_87:Array:i32:[Some(2_0)] 
                    #      temp_303_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(5_0)] 
    li      s4, 0
                    #found literal reg Some(s7) already exist with 2_0
    li      s10, 5
    add     s4,s4,a4
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_304_87 = load temp_303_87:ptr->i32 
    lw      s7,0(s4)
                    #      new_var temp_305_87:ptr->i32 
                    #      new_var temp_306_87:Array:i32:[Some(2_0)] 
                    #      temp_305_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(6_0)] 
    li      s10, 0
    sw      a0,876(sp)
    li      a0, 2
    sd      a1,864(sp)
    li      a1, 6
    add     s10,s10,a4
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_306_87 = load temp_305_87:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_307_87:ptr->i32 
                    #      new_var temp_308_87:Array:i32:[Some(2_0)] 
                    #      temp_307_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(7_0)] 
    li      a1, 0
    sw      a0,412(sp)
    li      a0, 2
    sd      a2,512(sp)
    li      a2, 7
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_308_87 = load temp_307_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_309_87:ptr->i32 
                    #      new_var temp_310_87:Array:i32:[Some(2_0)] 
                    #      temp_309_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(8_0)] 
    li      a2, 0
    sw      a0,396(sp)
    li      a0, 2
    sd      a1,400(sp)
    li      a1, 8
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_310_87 = load temp_309_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_311_87:ptr->i32 
                    #      new_var temp_312_87:Array:i32:[Some(2_0)] 
                    #      temp_311_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(9_0)] 
    li      a1, 0
    sw      a0,380(sp)
    li      a0, 2
    sd      a2,384(sp)
    li      a2, 9
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_312_87 = load temp_311_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_313_87:ptr->i32 
                    #      new_var temp_314_87:Array:i32:[Some(2_0)] 
                    #      temp_313_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(10_0)] 
    li      a2, 0
    sw      a0,364(sp)
    li      a0, 2
    sd      a1,368(sp)
    li      a1, 10
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_314_87 = load temp_313_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_315_87:ptr->i32 
                    #      new_var temp_316_87:Array:i32:[Some(2_0)] 
                    #      temp_315_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(11_0)] 
    li      a1, 0
    sw      a0,348(sp)
    li      a0, 2
    sd      a2,352(sp)
    li      a2, 11
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_316_87 = load temp_315_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_317_87:ptr->i32 
                    #      new_var temp_318_87:Array:i32:[Some(2_0)] 
                    #      temp_317_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(12_0)] 
    li      a2, 0
    sw      a0,332(sp)
    li      a0, 2
    sd      a1,336(sp)
    li      a1, 12
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_318_87 = load temp_317_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_319_87:ptr->i32 
                    #      new_var temp_320_87:Array:i32:[Some(2_0)] 
                    #      temp_319_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(13_0)] 
    li      a1, 0
    sw      a0,316(sp)
    li      a0, 2
    sd      a2,320(sp)
    li      a2, 13
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_320_87 = load temp_319_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_321_87:ptr->i32 
                    #      new_var temp_322_87:Array:i32:[Some(2_0)] 
                    #      temp_321_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(14_0)] 
    li      a2, 0
    sw      a0,300(sp)
    li      a0, 2
    sd      a1,304(sp)
    li      a1, 14
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_322_87 = load temp_321_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_323_87:ptr->i32 
                    #      new_var temp_324_87:Array:i32:[Some(2_0)] 
                    #      temp_323_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(15_0)] 
    li      a1, 0
    sw      a0,284(sp)
    li      a0, 2
    sd      a2,288(sp)
    li      a2, 15
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_324_87 = load temp_323_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_325_87:ptr->i32 
                    #      new_var temp_326_87:Array:i32:[Some(2_0)] 
                    #      temp_325_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(16_0)] 
    li      a2, 0
    sw      a0,268(sp)
    li      a0, 2
    sd      a1,272(sp)
    li      a1, 16
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_326_87 = load temp_325_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_327_87:ptr->i32 
                    #      new_var temp_328_87:Array:i32:[Some(2_0)] 
                    #      temp_327_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(17_0)] 
    li      a1, 0
    sw      a0,252(sp)
    li      a0, 2
    sd      a2,256(sp)
    li      a2, 17
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_328_87 = load temp_327_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_329_87:ptr->i32 
                    #      new_var temp_330_87:Array:i32:[Some(2_0)] 
                    #      temp_329_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(18_0)] 
    li      a2, 0
    sw      a0,236(sp)
    li      a0, 2
    sd      a1,240(sp)
    li      a1, 18
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_330_87 = load temp_329_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_331_87:ptr->i32 
                    #      new_var temp_332_87:Array:i32:[Some(2_0)] 
                    #      temp_331_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(19_0)] 
    li      a1, 0
    sw      a0,220(sp)
    li      a0, 2
    sd      a2,224(sp)
    li      a2, 19
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_332_87 = load temp_331_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_333_87:ptr->i32 
                    #      new_var temp_334_87:Array:i32:[Some(2_0)] 
                    #      temp_333_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(20_0)] 
    li      a2, 0
    sw      a0,204(sp)
    li      a0, 2
    sd      a1,208(sp)
    li      a1, 20
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_334_87 = load temp_333_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_335_87:ptr->i32 
                    #      new_var temp_336_87:Array:i32:[Some(2_0)] 
                    #      temp_335_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(21_0)] 
    li      a1, 0
    sw      a0,188(sp)
    li      a0, 2
    sd      a2,192(sp)
    li      a2, 21
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_336_87 = load temp_335_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_337_87:ptr->i32 
                    #      new_var temp_338_87:Array:i32:[Some(2_0)] 
                    #      temp_337_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(22_0)] 
    li      a2, 0
    sw      a0,172(sp)
    li      a0, 2
    sd      a1,176(sp)
    li      a1, 22
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_338_87 = load temp_337_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_339_87:ptr->i32 
                    #      new_var temp_340_87:Array:i32:[Some(2_0)] 
                    #      temp_339_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(23_0)] 
    li      a1, 0
    sw      a0,156(sp)
    li      a0, 2
    sd      a2,160(sp)
    li      a2, 23
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_340_87 = load temp_339_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_341_87:ptr->i32 
                    #      new_var temp_342_87:Array:i32:[Some(2_0)] 
                    #      temp_341_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(24_0)] 
    li      a2, 0
    sw      a0,140(sp)
    li      a0, 2
    sd      a1,144(sp)
    li      a1, 24
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_342_87 = load temp_341_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_343_87:ptr->i32 
                    #      new_var temp_344_87:Array:i32:[Some(2_0)] 
                    #      temp_343_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(25_0)] 
    li      a1, 0
    sw      a0,124(sp)
    li      a0, 2
    sd      a2,128(sp)
    li      a2, 25
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_344_87 = load temp_343_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_345_87:ptr->i32 
                    #      new_var temp_346_87:Array:i32:[Some(2_0)] 
                    #      temp_345_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(26_0)] 
    li      a2, 0
    sw      a0,108(sp)
    li      a0, 2
    sd      a1,112(sp)
    li      a1, 26
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_346_87 = load temp_345_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_347_87:ptr->i32 
                    #      new_var temp_348_87:Array:i32:[Some(2_0)] 
                    #      temp_347_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(27_0)] 
    li      a1, 0
    sw      a0,92(sp)
    li      a0, 2
    sd      a2,96(sp)
    li      a2, 27
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_348_87 = load temp_347_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_349_87:ptr->i32 
                    #      new_var temp_350_87:Array:i32:[Some(2_0)] 
                    #      temp_349_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(28_0)] 
    li      a2, 0
    sw      a0,76(sp)
    li      a0, 2
    sd      a1,80(sp)
    li      a1, 28
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_350_87 = load temp_349_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_351_87:ptr->i32 
                    #      new_var temp_352_87:Array:i32:[Some(2_0)] 
                    #      temp_351_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(29_0)] 
    li      a1, 0
    sw      a0,60(sp)
    li      a0, 2
    sd      a2,64(sp)
    li      a2, 29
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_352_87 = load temp_351_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_353_87:ptr->i32 
                    #      new_var temp_354_87:Array:i32:[Some(2_0)] 
                    #      temp_353_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(30_0)] 
    li      a2, 0
    sw      a0,44(sp)
    li      a0, 2
    sd      a1,48(sp)
    li      a1, 30
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_354_87 = load temp_353_87:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_355_87:ptr->i32 
                    #      new_var temp_356_87:Array:i32:[Some(2_0)] 
                    #      temp_355_87 = getelementptr arr_87:Array:i32:[Some(32_0), Some(2_0)] [Some(31_0)] 
    li      a1, 0
    sw      a0,28(sp)
    li      a0, 2
    sd      a2,32(sp)
    li      a2, 31
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_356_87 = load temp_355_87:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_357_87:i32 
                    #      temp_357_87 =  Call i32 param32_arr_0(temp_294_87, temp_296_87, temp_298_87, temp_300_87, temp_302_87, temp_304_87, temp_306_87, temp_308_87, temp_310_87, temp_312_87, temp_314_87, temp_316_87, temp_318_87, temp_320_87, temp_322_87, temp_324_87, temp_326_87, temp_328_87, temp_330_87, temp_332_87, temp_334_87, temp_336_87, temp_338_87, temp_340_87, temp_342_87, temp_344_87, temp_346_87, temp_348_87, temp_350_87, temp_352_87, temp_354_87, temp_356_87) 
                    #saved register dumping to mem
    sw      s1,508(sp)
    sw      s2,596(sp)
    sd      s3,496(sp)
    sd      s4,432(sp)
    sw      s5,492(sp)
    sd      s6,480(sp)
    sw      s7,428(sp)
    sw      s8,476(sp)
    sd      s9,464(sp)
    sd      s10,416(sp)
    sw      s11,460(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    lw      a0,508(sp)
    sd      a1,16(sp)
    lw      a1,492(sp)
    lw      a2,476(sp)
    sb      a3,595(sp)
    lw      a3,460(sp)
    sw      a4,852(sp)
    mv      a4, a7
    sd      a5,448(sp)
    lw      a5,428(sp)
    sd      a6,856(sp)
    lw      a6,412(sp)
    sw      a7,444(sp)
    lw      a7,396(sp)
                    #arg load ended
    call    param32_arr
    sw      a0,4(sp)
                    #       Call void putint_0(temp_357_87) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,952(sp)
    ld      s0,944(sp)
    li      a0, 0
    addi    sp,sp,960
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } | 
