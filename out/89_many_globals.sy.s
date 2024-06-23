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
                    #      Define testParam8_0 [a0_56, a1_56, a2_56, a3_56, a4_56, a5_56, a6_56, a7_56] -> testParam8_ret_0 
    .globl testParam8
    .type testParam8,@function
testParam8:
                    #mem layout:|ra_testParam8:8|s0_testParam8:8|a0:4|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|temp_0:4|temp_1:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|none:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 temp_0_58 
                    #      alloc i32 temp_1_58 
                    #      alloc i32 temp_2_58 
                    #      alloc i32 temp_3_58 
                    #      alloc i32 temp_4_58 
                    #      alloc i32 temp_5_58 
                    #      alloc i32 temp_6_58 
                    #regtab     a0:Freed { symidx: a0_56, tracked: true } |     a1:Freed { symidx: a1_56, tracked: true } |     a2:Freed { symidx: a2_56, tracked: true } |     a3:Freed { symidx: a3_56, tracked: true } |     a4:Freed { symidx: a4_56, tracked: true } |     a5:Freed { symidx: a5_56, tracked: true } |     a6:Freed { symidx: a6_56, tracked: true } |     a7:Freed { symidx: a7_56, tracked: true } | 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_0_58:i32 
                    #      temp_0_58 = Add i32 a6_56, a7_56 
    add     s1,a6,a7
                    #      new_var temp_1_58:i32 
                    #      temp_1_58 = Add i32 a5_56, temp_0_58 
    add     s2,a5,s1
                    #      new_var temp_2_58:i32 
                    #      temp_2_58 = Add i32 a4_56, temp_1_58 
    add     s3,a4,s2
                    #      new_var temp_3_58:i32 
                    #      temp_3_58 = Add i32 a3_56, temp_2_58 
    add     s4,a3,s3
                    #      new_var temp_4_58:i32 
                    #      temp_4_58 = Add i32 a2_56, temp_3_58 
    add     s5,a2,s4
                    #      new_var temp_5_58:i32 
                    #      temp_5_58 = Add i32 a1_56, temp_4_58 
    add     s6,a1,s5
                    #      new_var temp_6_58:i32 
                    #      temp_6_58 = Add i32 a0_56, temp_5_58 
    add     s7,a0,s6
                    #      ret temp_6_58 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      s7,4(sp)
    sw      a0,60(sp)
    addi    sp,sp,80
    ret
                    #regtab     a0:Freed { symidx: temp_6_58, tracked: true } |     a1:Freed { symidx: a1_56, tracked: true } |     a2:Freed { symidx: a2_56, tracked: true } |     a3:Freed { symidx: a3_56, tracked: true } |     a4:Freed { symidx: a4_56, tracked: true } |     a5:Freed { symidx: a5_56, tracked: true } |     a6:Freed { symidx: a6_56, tracked: true } |     a7:Freed { symidx: a7_56, tracked: true } |     s1:Freed { symidx: temp_0_58, tracked: true } |     s2:Freed { symidx: temp_1_58, tracked: true } |     s3:Freed { symidx: temp_2_58, tracked: true } |     s4:Freed { symidx: temp_3_58, tracked: true } |     s5:Freed { symidx: temp_4_58, tracked: true } |     s6:Freed { symidx: temp_5_58, tracked: true } | 
                    #regtab 
                    #      Define testParam16_0 [a0_60, a1_60, a2_60, a3_60, a4_60, a5_60, a6_60, a7_60, a8_60, a9_60, a10_60, a11_60, a12_60, a13_60, a14_60, a15_60] -> testParam16_ret_0 
    .globl testParam16
    .type testParam16,@function
testParam16:
                    #mem layout:|a8:4|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|ra_testParam16:8|s0_testParam16:8|a0:4|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|none:4
    addi    sp,sp,-144
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,144
                    #      alloc i32 temp_7_62 
                    #      alloc i32 temp_8_62 
                    #      alloc i32 temp_9_62 
                    #      alloc i32 temp_10_62 
                    #      alloc i32 temp_11_62 
                    #      alloc i32 temp_12_62 
                    #      alloc i32 temp_13_62 
                    #      alloc i32 temp_14_62 
                    #      alloc i32 temp_15_62 
                    #      alloc i32 temp_16_62 
                    #      alloc i32 temp_17_62 
                    #      alloc i32 temp_18_62 
                    #      alloc i32 temp_19_62 
                    #      alloc i32 temp_20_62 
                    #      alloc i32 temp_21_62 
                    #regtab     a0:Freed { symidx: a0_60, tracked: true } |     a1:Freed { symidx: a1_60, tracked: true } |     a2:Freed { symidx: a2_60, tracked: true } |     a3:Freed { symidx: a3_60, tracked: true } |     a4:Freed { symidx: a4_60, tracked: true } |     a5:Freed { symidx: a5_60, tracked: true } |     a6:Freed { symidx: a6_60, tracked: true } |     a7:Freed { symidx: a7_60, tracked: true } | 
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_7_62:i32 
                    #      temp_7_62 = Add i32 a14_60, a15_60 
    add     s3,s1,s2
                    #      new_var temp_8_62:i32 
                    #      temp_8_62 = Add i32 a13_60, temp_7_62 
    add     s5,s4,s3
                    #      new_var temp_9_62:i32 
                    #      temp_9_62 = Add i32 a12_60, temp_8_62 
    add     s7,s6,s5
                    #      new_var temp_10_62:i32 
                    #      temp_10_62 = Add i32 a11_60, temp_9_62 
    add     s9,s8,s7
                    #      new_var temp_11_62:i32 
                    #      temp_11_62 = Add i32 a10_60, temp_10_62 
    add     s11,s10,s9
                    #      new_var temp_12_62:i32 
                    #      temp_12_62 = Add i32 a9_60, temp_11_62 
    sw      a0,92(sp)
    sw      a1,88(sp)
    add     a1,a0,s11
                    #      new_var temp_13_62:i32 
                    #      temp_13_62 = Add i32 a8_60, temp_12_62 
    sw      a0,136(sp)
    sw      a2,84(sp)
    add     a2,a0,a1
                    #      new_var temp_14_62:i32 
                    #      temp_14_62 = Add i32 a7_60, temp_13_62 
    sw      a0,140(sp)
    add     a0,a7,a2
                    #      new_var temp_15_62:i32 
                    #      temp_15_62 = Sub i32 a6_60, temp_14_62 
    sw      a1,40(sp)
    sub     a1,a6,a0
                    #      new_var temp_16_62:i32 
                    #      temp_16_62 = Sub i32 a5_60, temp_15_62 
    sw      a0,32(sp)
    sub     a0,a5,a1
                    #      new_var temp_17_62:i32 
                    #      temp_17_62 = Sub i32 a4_60, temp_16_62 
    sw      a1,28(sp)
    sub     a1,a4,a0
                    #      new_var temp_18_62:i32 
                    #      temp_18_62 = Sub i32 a3_60, temp_17_62 
    sw      a0,24(sp)
    sub     a0,a3,a1
                    #      new_var temp_19_62:i32 
                    #      temp_19_62 = Sub i32 a2_60, temp_18_62 
    sw      a0,16(sp)
    sw      a1,20(sp)
    sw      a2,36(sp)
    sub     a2,a0,a1
                    #      new_var temp_20_62:i32 
                    #      temp_20_62 = Add i32 a1_60, temp_19_62 
    sw      a0,84(sp)
    sw      a1,16(sp)
    add     a1,a0,a2
                    #      new_var temp_21_62:i32 
                    #      temp_21_62 = Add i32 a0_60, temp_20_62 
    sw      a0,88(sp)
    sw      a2,12(sp)
    add     a2,a0,a1
                    #      ret temp_21_62 
    ld      ra,104(sp)
    ld      s0,96(sp)
    sw      a2,4(sp)
    sw      a0,92(sp)
    addi    sp,sp,144
    ret
                    #regtab     a0:Freed { symidx: temp_21_62, tracked: true } |     a1:Freed { symidx: temp_20_62, tracked: true } |     a3:Freed { symidx: a3_60, tracked: true } |     a4:Freed { symidx: a4_60, tracked: true } |     a5:Freed { symidx: a5_60, tracked: true } |     a6:Freed { symidx: a6_60, tracked: true } |     a7:Freed { symidx: a7_60, tracked: true } |     s10:Freed { symidx: a10_60, tracked: true } |     s11:Freed { symidx: temp_11_62, tracked: true } |     s1:Freed { symidx: a14_60, tracked: true } |     s2:Freed { symidx: a15_60, tracked: true } |     s3:Freed { symidx: temp_7_62, tracked: true } |     s4:Freed { symidx: a13_60, tracked: true } |     s5:Freed { symidx: temp_8_62, tracked: true } |     s6:Freed { symidx: a12_60, tracked: true } |     s7:Freed { symidx: temp_9_62, tracked: true } |     s8:Freed { symidx: a11_60, tracked: true } |     s9:Freed { symidx: temp_10_62, tracked: true } | 
                    #regtab 
                    #      Define testParam32_0 [a0_64, a1_64, a2_64, a3_64, a4_64, a5_64, a6_64, a7_64, a8_64, a9_64, a10_64, a11_64, a12_64, a13_64, a14_64, a15_64, a16_64, a17_64, a18_64, a19_64, a20_64, a21_64, a22_64, a23_64, a24_64, a25_64, a26_64, a27_64, a28_64, a29_64, a30_64, a31_64] -> testParam32_ret_0 
    .globl testParam32
    .type testParam32,@function
testParam32:
                    #mem layout:|a8:4|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4|a17:4|a18:4|a19:4|a20:4|a21:4|a22:4|a23:4|a24:4|a25:4|a26:4|a27:4|a28:4|a29:4|a30:4|a31:4|ra_testParam32:8|s0_testParam32:8|a0:4|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:4|temp_35:4|temp_36:4|temp_37:4|temp_38:4|temp_39:4|temp_40:4|temp_41:4|temp_42:4|temp_43:4|temp_44:4|temp_45:4|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:4|temp_51:4|temp_52:4|none:4
    addi    sp,sp,-272
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,272
                    #      alloc i32 temp_22_66 
                    #      alloc i32 temp_23_66 
                    #      alloc i32 temp_24_66 
                    #      alloc i32 temp_25_66 
                    #      alloc i32 temp_26_66 
                    #      alloc i32 temp_27_66 
                    #      alloc i32 temp_28_66 
                    #      alloc i32 temp_29_66 
                    #      alloc i32 temp_30_66 
                    #      alloc i32 temp_31_66 
                    #      alloc i32 temp_32_66 
                    #      alloc i32 temp_33_66 
                    #      alloc i32 temp_34_66 
                    #      alloc i32 temp_35_66 
                    #      alloc i32 temp_36_66 
                    #      alloc i32 temp_37_66 
                    #      alloc i32 temp_38_66 
                    #      alloc i32 temp_39_66 
                    #      alloc i32 temp_40_66 
                    #      alloc i32 temp_41_66 
                    #      alloc i32 temp_42_66 
                    #      alloc i32 temp_43_66 
                    #      alloc i32 temp_44_66 
                    #      alloc i32 temp_45_66 
                    #      alloc i32 temp_46_66 
                    #      alloc i32 temp_47_66 
                    #      alloc i32 temp_48_66 
                    #      alloc i32 temp_49_66 
                    #      alloc i32 temp_50_66 
                    #      alloc i32 temp_51_66 
                    #      alloc i32 temp_52_66 
                    #regtab     a0:Freed { symidx: a0_64, tracked: true } |     a1:Freed { symidx: a1_64, tracked: true } |     a2:Freed { symidx: a2_64, tracked: true } |     a3:Freed { symidx: a3_64, tracked: true } |     a4:Freed { symidx: a4_64, tracked: true } |     a5:Freed { symidx: a5_64, tracked: true } |     a6:Freed { symidx: a6_64, tracked: true } |     a7:Freed { symidx: a7_64, tracked: true } | 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_22_66:i32 
                    #      temp_22_66 = Add i32 a30_64, a31_64 
    add     s3,s1,s2
                    #      new_var temp_23_66:i32 
                    #      temp_23_66 = Add i32 a29_64, temp_22_66 
    add     s5,s4,s3
                    #      new_var temp_24_66:i32 
                    #      temp_24_66 = Add i32 a28_64, temp_23_66 
    add     s7,s6,s5
                    #      new_var temp_25_66:i32 
                    #      temp_25_66 = Add i32 a27_64, temp_24_66 
    add     s9,s8,s7
                    #      new_var temp_26_66:i32 
                    #      temp_26_66 = Add i32 a26_64, temp_25_66 
    add     s11,s10,s9
                    #      new_var temp_27_66:i32 
                    #      temp_27_66 = Add i32 a25_64, temp_26_66 
    sw      a0,156(sp)
    sw      a1,152(sp)
    add     a1,a0,s11
                    #      new_var temp_28_66:i32 
                    #      temp_28_66 = Add i32 a24_64, temp_27_66 
    sw      a0,200(sp)
    sw      a2,148(sp)
    add     a2,a0,a1
                    #      new_var temp_29_66:i32 
                    #      temp_29_66 = Add i32 a23_64, temp_28_66 
    sw      a0,204(sp)
    sw      a1,104(sp)
    add     a1,a0,a2
                    #      new_var temp_30_66:i32 
                    #      temp_30_66 = Add i32 a22_64, temp_29_66 
    sw      a0,208(sp)
    sw      a2,100(sp)
    add     a2,a0,a1
                    #      new_var temp_31_66:i32 
                    #      temp_31_66 = Sub i32 a21_64, temp_30_66 
    sw      a0,212(sp)
    sw      a1,96(sp)
    sub     a1,a0,a2
                    #      new_var temp_32_66:i32 
                    #      temp_32_66 = Sub i32 a20_64, temp_31_66 
    sw      a0,216(sp)
    sw      a2,92(sp)
    sub     a2,a0,a1
                    #      new_var temp_33_66:i32 
                    #      temp_33_66 = Sub i32 a19_64, temp_32_66 
    sw      a0,220(sp)
    sw      a1,88(sp)
    sub     a1,a0,a2
                    #      new_var temp_34_66:i32 
                    #      temp_34_66 = Sub i32 a18_64, temp_33_66 
    sw      a0,224(sp)
    sw      a2,84(sp)
    sub     a2,a0,a1
                    #      new_var temp_35_66:i32 
                    #      temp_35_66 = Sub i32 a17_64, temp_34_66 
    sw      a0,228(sp)
    sw      a1,80(sp)
    sub     a1,a0,a2
                    #      new_var temp_36_66:i32 
                    #      temp_36_66 = Add i32 a16_64, temp_35_66 
    sw      a0,232(sp)
    sw      a2,76(sp)
    add     a2,a0,a1
                    #      new_var temp_37_66:i32 
                    #      temp_37_66 = Add i32 a15_64, temp_36_66 
    sw      a0,236(sp)
    sw      a1,72(sp)
    add     a1,a0,a2
                    #      new_var temp_38_66:i32 
                    #      temp_38_66 = Add i32 a14_64, temp_37_66 
    sw      a0,240(sp)
    sw      a2,68(sp)
    add     a2,a0,a1
                    #      new_var temp_39_66:i32 
                    #      temp_39_66 = Add i32 a13_64, temp_38_66 
    sw      a0,244(sp)
    sw      a1,64(sp)
    add     a1,a0,a2
                    #      new_var temp_40_66:i32 
                    #      temp_40_66 = Add i32 a12_64, temp_39_66 
    sw      a0,248(sp)
    sw      a2,60(sp)
    add     a2,a0,a1
                    #      new_var temp_41_66:i32 
                    #      temp_41_66 = Add i32 a11_64, temp_40_66 
    sw      a0,252(sp)
    sw      a1,56(sp)
    add     a1,a0,a2
                    #      new_var temp_42_66:i32 
                    #      temp_42_66 = Add i32 a10_64, temp_41_66 
    sw      a0,256(sp)
    sw      a2,52(sp)
    add     a2,a0,a1
                    #      new_var temp_43_66:i32 
                    #      temp_43_66 = Add i32 a9_64, temp_42_66 
    sw      a0,260(sp)
    sw      a1,48(sp)
    add     a1,a0,a2
                    #      new_var temp_44_66:i32 
                    #      temp_44_66 = Add i32 a8_64, temp_43_66 
    sw      a0,264(sp)
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      new_var temp_45_66:i32 
                    #      temp_45_66 = Add i32 a7_64, temp_44_66 
    sw      a0,268(sp)
    add     a0,a7,a2
                    #      new_var temp_46_66:i32 
                    #      temp_46_66 = Add i32 a6_64, temp_45_66 
    sw      a1,40(sp)
    add     a1,a6,a0
                    #      new_var temp_47_66:i32 
                    #      temp_47_66 = Add i32 a5_64, temp_46_66 
    sw      a0,32(sp)
    add     a0,a5,a1
                    #      new_var temp_48_66:i32 
                    #      temp_48_66 = Add i32 a4_64, temp_47_66 
    sw      a1,28(sp)
    add     a1,a4,a0
                    #      new_var temp_49_66:i32 
                    #      temp_49_66 = Add i32 a3_64, temp_48_66 
    sw      a0,24(sp)
    add     a0,a3,a1
                    #      new_var temp_50_66:i32 
                    #      temp_50_66 = Add i32 a2_64, temp_49_66 
    sw      a0,16(sp)
    sw      a1,20(sp)
    sw      a2,36(sp)
    add     a2,a0,a1
                    #      new_var temp_51_66:i32 
                    #      temp_51_66 = Add i32 a1_64, temp_50_66 
    sw      a0,148(sp)
    sw      a1,16(sp)
    add     a1,a0,a2
                    #      new_var temp_52_66:i32 
                    #      temp_52_66 = Add i32 a0_64, temp_51_66 
    sw      a0,152(sp)
    sw      a2,12(sp)
    add     a2,a0,a1
                    #      ret temp_52_66 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a2,4(sp)
    sw      a0,156(sp)
    addi    sp,sp,272
    ret
                    #regtab     a0:Freed { symidx: temp_52_66, tracked: true } |     a1:Freed { symidx: temp_51_66, tracked: true } |     a3:Freed { symidx: a3_64, tracked: true } |     a4:Freed { symidx: a4_64, tracked: true } |     a5:Freed { symidx: a5_64, tracked: true } |     a6:Freed { symidx: a6_64, tracked: true } |     a7:Freed { symidx: a7_64, tracked: true } |     s10:Freed { symidx: a26_64, tracked: true } |     s11:Freed { symidx: temp_26_66, tracked: true } |     s1:Freed { symidx: a30_64, tracked: true } |     s2:Freed { symidx: a31_64, tracked: true } |     s3:Freed { symidx: temp_22_66, tracked: true } |     s4:Freed { symidx: a29_64, tracked: true } |     s5:Freed { symidx: temp_23_66, tracked: true } |     s6:Freed { symidx: a28_64, tracked: true } |     s7:Freed { symidx: temp_24_66, tracked: true } |     s8:Freed { symidx: a27_64, tracked: true } |     s9:Freed { symidx: temp_25_66, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_53:4|temp_54:4|temp_55:4|temp_56:4|temp_57:4|temp_58:4|temp_59:4|temp_60:4|temp_61:4|temp_62:4|temp_63:4|temp_64:4|temp_65:4|temp_66:4|temp_67:4|temp_68:4|temp_69:4|temp_70:4|temp_71:4|temp_72:4|temp_73:4|temp_74:4|temp_75:4|temp_76:4|temp_77:4|temp_78:4|temp_79:4|temp_80:4|temp_81:4|temp_82:4|temp_83:4|temp_84:4|temp_85:4|temp_86:4|temp_87:4|temp_88:4|temp_89:4|temp_90:4|temp_91:4|temp_92:4|temp_93:4|temp_94:4|temp_95:4|temp_96:4|temp_97:4|temp_98:4|temp_99:4|temp_100:4|temp_101:4|temp_102:4|temp_103:4|temp_104:4|temp_105:4|temp_106:4|temp_107:4|temp_108:4|temp_109:4|temp_110:4|temp_111:4|temp_112:4|temp_113:4|temp_114:4
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
                    #      alloc i32 temp_53_69 
                    #      alloc i32 temp_54_69 
                    #      alloc i32 temp_55_69 
                    #      alloc i32 temp_56_69 
                    #      alloc i32 temp_57_69 
                    #      alloc i32 temp_58_69 
                    #      alloc i32 temp_59_69 
                    #      alloc i32 temp_60_69 
                    #      alloc i32 temp_61_69 
                    #      alloc i32 temp_62_69 
                    #      alloc i32 temp_63_69 
                    #      alloc i32 temp_64_69 
                    #      alloc i32 temp_65_69 
                    #      alloc i32 temp_66_69 
                    #      alloc i32 temp_67_69 
                    #      alloc i32 temp_68_69 
                    #      alloc i32 temp_69_69 
                    #      alloc i32 temp_70_69 
                    #      alloc i32 temp_71_69 
                    #      alloc i32 temp_72_69 
                    #      alloc i32 temp_73_69 
                    #      alloc i32 temp_74_69 
                    #      alloc i32 temp_75_69 
                    #      alloc i32 temp_76_69 
                    #      alloc i32 temp_77_69 
                    #      alloc i32 temp_78_69 
                    #      alloc i32 temp_79_69 
                    #      alloc i32 temp_80_69 
                    #      alloc i32 temp_81_69 
                    #      alloc i32 temp_82_69 
                    #      alloc i32 temp_83_69 
                    #      alloc i32 temp_84_69 
                    #      alloc i32 temp_85_69 
                    #      alloc i32 temp_86_69 
                    #      alloc i32 temp_87_69 
                    #      alloc i32 temp_88_69 
                    #      alloc i32 temp_89_69 
                    #      alloc i32 temp_90_69 
                    #      alloc i32 temp_91_69 
                    #      alloc i32 temp_92_69 
                    #      alloc i32 temp_93_69 
                    #      alloc i32 temp_94_69 
                    #      alloc i32 temp_95_69 
                    #      alloc i32 temp_96_69 
                    #      alloc i32 temp_97_69 
                    #      alloc i32 temp_98_69 
                    #      alloc i32 temp_99_69 
                    #      alloc i32 temp_100_69 
                    #      alloc i32 temp_101_69 
                    #      alloc i32 temp_102_69 
                    #      alloc i32 temp_103_69 
                    #      alloc i32 temp_104_69 
                    #      alloc i32 temp_105_69 
                    #      alloc i32 temp_106_69 
                    #      alloc i32 temp_107_69 
                    #      alloc i32 temp_108_69 
                    #      alloc i32 temp_109_69 
                    #      alloc i32 temp_110_69 
                    #      alloc i32 temp_111_69 
                    #      alloc i32 temp_112_69 
                    #      alloc i32 temp_113_69 
                    #      alloc i32 temp_114_69 
                    #regtab 
                    #      label L0_0: 
.L0_0:
                    #      store 0_0:i32 *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a0, a0
                    #occupy reg a0 with *a0_0
    li      a1, 0
    sd      a1,0(a0)
                    #      store 1_0:i32 *a1_0:ptr->i32 
                    #   load label a1 as ptr to reg
    la      a2, a1
                    #occupy reg a2 with *a1_0
    li      a3, 1
    sd      a3,0(a2)
                    #      store 2_0:i32 *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      a4, a2
                    #occupy reg a4 with *a2_0
    li      a5, 2
    sd      a5,0(a4)
                    #      store 3_0:i32 *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      a6, a3
                    #occupy reg a6 with *a3_0
    li      a7, 3
    sd      a7,0(a6)
                    #      store 4_0:i32 *a4_0:ptr->i32 
                    #   load label a4 as ptr to reg
    la      s1, a4
                    #occupy reg s1 with *a4_0
    li      s2, 4
    sd      s2,0(s1)
                    #      store 5_0:i32 *a5_0:ptr->i32 
                    #   load label a5 as ptr to reg
    la      s3, a5
                    #occupy reg s3 with *a5_0
    li      s4, 5
    sd      s4,0(s3)
                    #      store 6_0:i32 *a6_0:ptr->i32 
                    #   load label a6 as ptr to reg
    la      s5, a6
                    #occupy reg s5 with *a6_0
    li      s6, 6
    sd      s6,0(s5)
                    #      store 7_0:i32 *a7_0:ptr->i32 
                    #   load label a7 as ptr to reg
    la      s7, a7
                    #occupy reg s7 with *a7_0
    li      s8, 7
    sd      s8,0(s7)
                    #      store 8_0:i32 *a8_0:ptr->i32 
                    #   load label a8 as ptr to reg
    la      s9, a8
                    #occupy reg s9 with *a8_0
    li      s10, 8
    sd      s10,0(s9)
                    #      store 9_0:i32 *a9_0:ptr->i32 
                    #   load label a9 as ptr to reg
    la      s11, a9
                    #occupy reg s11 with *a9_0
    li      a0, 9
    sd      a0,0(s11)
                    #      store 0_0:i32 *a10_0:ptr->i32 
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
                    #found literal reg Some(a1) already exist with 0_0
    sd      a1,0(a0)
                    #      store 1_0:i32 *a11_0:ptr->i32 
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a0)
                    #      store 2_0:i32 *a12_0:ptr->i32 
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
                    #found literal reg Some(a5) already exist with 2_0
    sd      a5,0(a0)
                    #      store 3_0:i32 *a13_0:ptr->i32 
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
                    #found literal reg Some(a7) already exist with 3_0
    sd      a7,0(a0)
                    #      store 4_0:i32 *a14_0:ptr->i32 
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
                    #found literal reg Some(s2) already exist with 4_0
    sd      s2,0(a0)
                    #      store 5_0:i32 *a15_0:ptr->i32 
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
                    #found literal reg Some(s4) already exist with 5_0
    sd      s4,0(a0)
                    #      store 6_0:i32 *a16_0:ptr->i32 
                    #   load label a16 as ptr to reg
    la      a0, a16
                    #occupy reg a0 with *a16_0
                    #found literal reg Some(s6) already exist with 6_0
    sd      s6,0(a0)
                    #      store 7_0:i32 *a17_0:ptr->i32 
                    #   load label a17 as ptr to reg
    la      a0, a17
                    #occupy reg a0 with *a17_0
                    #found literal reg Some(s8) already exist with 7_0
    sd      s8,0(a0)
                    #      store 8_0:i32 *a18_0:ptr->i32 
                    #   load label a18 as ptr to reg
    la      a0, a18
                    #occupy reg a0 with *a18_0
                    #found literal reg Some(s10) already exist with 8_0
    sd      s10,0(a0)
                    #      store 9_0:i32 *a19_0:ptr->i32 
                    #   load label a19 as ptr to reg
    la      a0, a19
                    #occupy reg a0 with *a19_0
    li      a1, 9
    sd      a1,0(a0)
                    #      store 0_0:i32 *a20_0:ptr->i32 
                    #   load label a20 as ptr to reg
    la      a0, a20
                    #occupy reg a0 with *a20_0
    li      a1, 0
    sd      a1,0(a0)
                    #      store 1_0:i32 *a21_0:ptr->i32 
                    #   load label a21 as ptr to reg
    la      a0, a21
                    #occupy reg a0 with *a21_0
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a0)
                    #      store 2_0:i32 *a22_0:ptr->i32 
                    #   load label a22 as ptr to reg
    la      a0, a22
                    #occupy reg a0 with *a22_0
                    #found literal reg Some(a5) already exist with 2_0
    sd      a5,0(a0)
                    #      store 3_0:i32 *a23_0:ptr->i32 
                    #   load label a23 as ptr to reg
    la      a0, a23
                    #occupy reg a0 with *a23_0
                    #found literal reg Some(a7) already exist with 3_0
    sd      a7,0(a0)
                    #      store 4_0:i32 *a24_0:ptr->i32 
                    #   load label a24 as ptr to reg
    la      a0, a24
                    #occupy reg a0 with *a24_0
                    #found literal reg Some(s2) already exist with 4_0
    sd      s2,0(a0)
                    #      store 5_0:i32 *a25_0:ptr->i32 
                    #   load label a25 as ptr to reg
    la      a0, a25
                    #occupy reg a0 with *a25_0
                    #found literal reg Some(s4) already exist with 5_0
    sd      s4,0(a0)
                    #      store 6_0:i32 *a26_0:ptr->i32 
                    #   load label a26 as ptr to reg
    la      a0, a26
                    #occupy reg a0 with *a26_0
                    #found literal reg Some(s6) already exist with 6_0
    sd      s6,0(a0)
                    #      store 7_0:i32 *a27_0:ptr->i32 
                    #   load label a27 as ptr to reg
    la      a0, a27
                    #occupy reg a0 with *a27_0
                    #found literal reg Some(s8) already exist with 7_0
    sd      s8,0(a0)
                    #      store 8_0:i32 *a28_0:ptr->i32 
                    #   load label a28 as ptr to reg
    la      a0, a28
                    #occupy reg a0 with *a28_0
                    #found literal reg Some(s10) already exist with 8_0
    sd      s10,0(a0)
                    #      store 9_0:i32 *a29_0:ptr->i32 
                    #   load label a29 as ptr to reg
    la      a0, a29
                    #occupy reg a0 with *a29_0
    li      a1, 9
    sd      a1,0(a0)
                    #      store 0_0:i32 *a30_0:ptr->i32 
                    #   load label a30 as ptr to reg
    la      a0, a30
                    #occupy reg a0 with *a30_0
    li      a1, 0
    sd      a1,0(a0)
                    #      store 1_0:i32 *a31_0:ptr->i32 
                    #   load label a31 as ptr to reg
    la      a0, a31
                    #occupy reg a0 with *a31_0
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a0)
                    #      store 4_0:i32 *a32_0:ptr->i32 
                    #   load label a32 as ptr to reg
    la      a0, a32
                    #occupy reg a0 with *a32_0
                    #found literal reg Some(s2) already exist with 4_0
    sd      s2,0(a0)
                    #      store 5_0:i32 *a33_0:ptr->i32 
                    #   load label a33 as ptr to reg
    la      a0, a33
                    #occupy reg a0 with *a33_0
                    #found literal reg Some(s4) already exist with 5_0
    sd      s4,0(a0)
                    #      store 6_0:i32 *a34_0:ptr->i32 
                    #   load label a34 as ptr to reg
    la      a0, a34
                    #occupy reg a0 with *a34_0
                    #found literal reg Some(s6) already exist with 6_0
    sd      s6,0(a0)
                    #      store 7_0:i32 *a35_0:ptr->i32 
                    #   load label a35 as ptr to reg
    la      a0, a35
                    #occupy reg a0 with *a35_0
                    #found literal reg Some(s8) already exist with 7_0
    sd      s8,0(a0)
                    #      store 8_0:i32 *a36_0:ptr->i32 
                    #   load label a36 as ptr to reg
    la      a0, a36
                    #occupy reg a0 with *a36_0
                    #found literal reg Some(s10) already exist with 8_0
    sd      s10,0(a0)
                    #      store 9_0:i32 *a37_0:ptr->i32 
                    #   load label a37 as ptr to reg
    la      a0, a37
                    #occupy reg a0 with *a37_0
    li      a1, 9
    sd      a1,0(a0)
                    #      store 0_0:i32 *a38_0:ptr->i32 
                    #   load label a38 as ptr to reg
    la      a0, a38
                    #occupy reg a0 with *a38_0
    li      a1, 0
    sd      a1,0(a0)
                    #      store 1_0:i32 *a39_0:ptr->i32 
                    #   load label a39 as ptr to reg
    la      a0, a39
                    #occupy reg a0 with *a39_0
                    #found literal reg Some(a3) already exist with 1_0
    sd      a3,0(a0)
                    #      new_var temp_53_69:i32 
                    #      temp_53_69 = load *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a0, a0
                    #occupy reg a0 with *a0_0
    lw      a1,0(a0)
                    #      new_var temp_54_69:i32 
                    #      temp_54_69 = load *a1_0:ptr->i32 
                    #   load label a1 as ptr to reg
    la      a0, a1
                    #occupy reg a0 with *a1_0
    lw      a2,0(a0)
                    #      new_var temp_55_69:i32 
                    #      temp_55_69 = load *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      a0, a2
                    #occupy reg a0 with *a2_0
    lw      a3,0(a0)
                    #      new_var temp_56_69:i32 
                    #      temp_56_69 = load *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      a0, a3
                    #occupy reg a0 with *a3_0
    lw      a4,0(a0)
                    #      new_var temp_57_69:i32 
                    #      temp_57_69 = load *a4_0:ptr->i32 
                    #   load label a4 as ptr to reg
    la      a0, a4
                    #occupy reg a0 with *a4_0
    lw      a5,0(a0)
                    #      new_var temp_58_69:i32 
                    #      temp_58_69 = load *a5_0:ptr->i32 
                    #   load label a5 as ptr to reg
    la      a0, a5
                    #occupy reg a0 with *a5_0
    lw      a6,0(a0)
                    #      new_var temp_59_69:i32 
                    #      temp_59_69 = load *a6_0:ptr->i32 
                    #   load label a6 as ptr to reg
    la      a0, a6
                    #occupy reg a0 with *a6_0
    lw      a7,0(a0)
                    #      new_var temp_60_69:i32 
                    #      temp_60_69 = load *a7_0:ptr->i32 
                    #   load label a7 as ptr to reg
    la      a0, a7
                    #occupy reg a0 with *a7_0
    lw      s1,0(a0)
                    #      new_var temp_61_69:i32 
                    #      temp_61_69 =  Call i32 testParam8_0(temp_53_69, temp_54_69, temp_55_69, temp_56_69, temp_57_69, temp_58_69, temp_59_69, temp_60_69) 
                    #saved register dumping to mem
    sw      s1,216(sp)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a1
    sw      a1,244(sp)
    mv      a1, a2
    sw      a2,240(sp)
    mv      a2, a3
    sw      a3,236(sp)
    mv      a3, a4
    sw      a4,232(sp)
    mv      a4, a5
    sw      a5,228(sp)
    mv      a5, a6
    sw      a6,224(sp)
    mv      a6, a7
    sw      a7,220(sp)
    lw      a7,216(sp)
                    #arg load ended
    call    testParam8
    sw      a0,212(sp)
                    #      store temp_61_69:i32 *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a1, a0
                    #occupy reg a1 with *a0_0
    sd      a0,0(a1)
                    #      new_var temp_62_69:i32 
                    #      temp_62_69 = load *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a2, a0
                    #occupy reg a2 with *a0_0
    lw      a3,0(a2)
                    #       Call void putint_0(temp_62_69) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,212(sp)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #      new_var temp_63_69:i32 
                    #      temp_63_69 = load *a32_0:ptr->i32 
                    #   load label a32 as ptr to reg
    la      a0, a32
                    #occupy reg a0 with *a32_0
    lw      a4,0(a0)
                    #      new_var temp_64_69:i32 
                    #      temp_64_69 = load *a33_0:ptr->i32 
                    #   load label a33 as ptr to reg
    la      a5, a33
                    #occupy reg a5 with *a33_0
    lw      a6,0(a5)
                    #      new_var temp_65_69:i32 
                    #      temp_65_69 = load *a34_0:ptr->i32 
                    #   load label a34 as ptr to reg
    la      a7, a34
                    #occupy reg a7 with *a34_0
    lw      s1,0(a7)
                    #      new_var temp_66_69:i32 
                    #      temp_66_69 = load *a35_0:ptr->i32 
                    #   load label a35 as ptr to reg
    la      s2, a35
                    #occupy reg s2 with *a35_0
    lw      s3,0(s2)
                    #      new_var temp_67_69:i32 
                    #      temp_67_69 = load *a36_0:ptr->i32 
                    #   load label a36 as ptr to reg
    la      s4, a36
                    #occupy reg s4 with *a36_0
    lw      s5,0(s4)
                    #      new_var temp_68_69:i32 
                    #      temp_68_69 = load *a37_0:ptr->i32 
                    #   load label a37 as ptr to reg
    la      s6, a37
                    #occupy reg s6 with *a37_0
    lw      s7,0(s6)
                    #      new_var temp_69_69:i32 
                    #      temp_69_69 = load *a38_0:ptr->i32 
                    #   load label a38 as ptr to reg
    la      s8, a38
                    #occupy reg s8 with *a38_0
    lw      s9,0(s8)
                    #      new_var temp_70_69:i32 
                    #      temp_70_69 = load *a39_0:ptr->i32 
                    #   load label a39 as ptr to reg
    la      s10, a39
                    #occupy reg s10 with *a39_0
    lw      s11,0(s10)
                    #      new_var temp_71_69:i32 
                    #      temp_71_69 = load *a8_0:ptr->i32 
                    #   load label a8 as ptr to reg
    la      a0, a8
                    #occupy reg a0 with *a8_0
    lw      a1,0(a0)
                    #      new_var temp_72_69:i32 
                    #      temp_72_69 = load *a9_0:ptr->i32 
                    #   load label a9 as ptr to reg
    la      a0, a9
                    #occupy reg a0 with *a9_0
    lw      a2,0(a0)
                    #      new_var temp_73_69:i32 
                    #      temp_73_69 = load *a10_0:ptr->i32 
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
    lw      a5,0(a0)
                    #      new_var temp_74_69:i32 
                    #      temp_74_69 = load *a11_0:ptr->i32 
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
    lw      a7,0(a0)
                    #      new_var temp_75_69:i32 
                    #      temp_75_69 = load *a12_0:ptr->i32 
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
    lw      s2,0(a0)
                    #      new_var temp_76_69:i32 
                    #      temp_76_69 = load *a13_0:ptr->i32 
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
    lw      s4,0(a0)
                    #      new_var temp_77_69:i32 
                    #      temp_77_69 = load *a14_0:ptr->i32 
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
    lw      s6,0(a0)
                    #      new_var temp_78_69:i32 
                    #      temp_78_69 = load *a15_0:ptr->i32 
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
    lw      s8,0(a0)
                    #      new_var temp_79_69:i32 
                    #      temp_79_69 =  Call i32 testParam16_0(temp_63_69, temp_64_69, temp_65_69, temp_66_69, temp_67_69, temp_68_69, temp_69_69, temp_70_69, temp_71_69, temp_72_69, temp_73_69, temp_74_69, temp_75_69, temp_76_69, temp_77_69, temp_78_69) 
                    #saved register dumping to mem
    sw      s1,196(sp)
    sw      s2,156(sp)
    sw      s3,192(sp)
    sw      s4,152(sp)
    sw      s5,188(sp)
    sw      s6,148(sp)
    sw      s7,184(sp)
    sw      s8,144(sp)
    sw      s9,180(sp)
    sw      s11,176(sp)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a4
    sw      a1,172(sp)
    mv      a1, a6
    sw      a2,168(sp)
    lw      a2,196(sp)
    sw      a3,208(sp)
    lw      a3,192(sp)
    sw      a4,204(sp)
    lw      a4,188(sp)
    sw      a5,164(sp)
    lw      a5,184(sp)
    sw      a6,200(sp)
    lw      a6,180(sp)
    sw      a7,160(sp)
    lw      a7,176(sp)
                    #arg load ended
    call    testParam16
    sw      a0,140(sp)
                    #      store temp_79_69:i32 *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a1, a0
                    #occupy reg a1 with *a0_0
    sd      a0,0(a1)
                    #      new_var temp_80_69:i32 
                    #      temp_80_69 = load *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a2, a0
                    #occupy reg a2 with *a0_0
    lw      a3,0(a2)
                    #       Call void putint_0(temp_80_69) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,140(sp)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #      new_var temp_81_69:i32 
                    #      temp_81_69 = load *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a0, a0
                    #occupy reg a0 with *a0_0
    lw      a4,0(a0)
                    #      new_var temp_82_69:i32 
                    #      temp_82_69 = load *a1_0:ptr->i32 
                    #   load label a1 as ptr to reg
    la      a5, a1
                    #occupy reg a5 with *a1_0
    lw      a6,0(a5)
                    #      new_var temp_83_69:i32 
                    #      temp_83_69 = load *a2_0:ptr->i32 
                    #   load label a2 as ptr to reg
    la      a7, a2
                    #occupy reg a7 with *a2_0
    lw      s1,0(a7)
                    #      new_var temp_84_69:i32 
                    #      temp_84_69 = load *a3_0:ptr->i32 
                    #   load label a3 as ptr to reg
    la      s2, a3
                    #occupy reg s2 with *a3_0
    lw      s3,0(s2)
                    #      new_var temp_85_69:i32 
                    #      temp_85_69 = load *a4_0:ptr->i32 
                    #   load label a4 as ptr to reg
    la      s4, a4
                    #occupy reg s4 with *a4_0
    lw      s5,0(s4)
                    #      new_var temp_86_69:i32 
                    #      temp_86_69 = load *a5_0:ptr->i32 
                    #   load label a5 as ptr to reg
    la      s6, a5
                    #occupy reg s6 with *a5_0
    lw      s7,0(s6)
                    #      new_var temp_87_69:i32 
                    #      temp_87_69 = load *a6_0:ptr->i32 
                    #   load label a6 as ptr to reg
    la      s8, a6
                    #occupy reg s8 with *a6_0
    lw      s9,0(s8)
                    #      new_var temp_88_69:i32 
                    #      temp_88_69 = load *a7_0:ptr->i32 
                    #   load label a7 as ptr to reg
    la      s10, a7
                    #occupy reg s10 with *a7_0
    lw      s11,0(s10)
                    #      new_var temp_89_69:i32 
                    #      temp_89_69 = load *a8_0:ptr->i32 
                    #   load label a8 as ptr to reg
    la      a0, a8
                    #occupy reg a0 with *a8_0
    lw      a1,0(a0)
                    #      new_var temp_90_69:i32 
                    #      temp_90_69 = load *a9_0:ptr->i32 
                    #   load label a9 as ptr to reg
    la      a0, a9
                    #occupy reg a0 with *a9_0
    lw      a2,0(a0)
                    #      new_var temp_91_69:i32 
                    #      temp_91_69 = load *a10_0:ptr->i32 
                    #   load label a10 as ptr to reg
    la      a0, a10
                    #occupy reg a0 with *a10_0
    lw      a5,0(a0)
                    #      new_var temp_92_69:i32 
                    #      temp_92_69 = load *a11_0:ptr->i32 
                    #   load label a11 as ptr to reg
    la      a0, a11
                    #occupy reg a0 with *a11_0
    lw      a7,0(a0)
                    #      new_var temp_93_69:i32 
                    #      temp_93_69 = load *a12_0:ptr->i32 
                    #   load label a12 as ptr to reg
    la      a0, a12
                    #occupy reg a0 with *a12_0
    lw      s2,0(a0)
                    #      new_var temp_94_69:i32 
                    #      temp_94_69 = load *a13_0:ptr->i32 
                    #   load label a13 as ptr to reg
    la      a0, a13
                    #occupy reg a0 with *a13_0
    lw      s4,0(a0)
                    #      new_var temp_95_69:i32 
                    #      temp_95_69 = load *a14_0:ptr->i32 
                    #   load label a14 as ptr to reg
    la      a0, a14
                    #occupy reg a0 with *a14_0
    lw      s6,0(a0)
                    #      new_var temp_96_69:i32 
                    #      temp_96_69 = load *a15_0:ptr->i32 
                    #   load label a15 as ptr to reg
    la      a0, a15
                    #occupy reg a0 with *a15_0
    lw      s8,0(a0)
                    #      new_var temp_97_69:i32 
                    #      temp_97_69 = load *a16_0:ptr->i32 
                    #   load label a16 as ptr to reg
    la      a0, a16
                    #occupy reg a0 with *a16_0
    lw      s10,0(a0)
                    #      new_var temp_98_69:i32 
                    #      temp_98_69 = load *a17_0:ptr->i32 
                    #   load label a17 as ptr to reg
    la      a0, a17
                    #occupy reg a0 with *a17_0
    sw      a1,100(sp)
    lw      a1,0(a0)
                    #      new_var temp_99_69:i32 
                    #      temp_99_69 = load *a18_0:ptr->i32 
                    #   load label a18 as ptr to reg
    la      a0, a18
                    #occupy reg a0 with *a18_0
    sw      a1,64(sp)
    lw      a1,0(a0)
                    #      new_var temp_100_69:i32 
                    #      temp_100_69 = load *a19_0:ptr->i32 
                    #   load label a19 as ptr to reg
    la      a0, a19
                    #occupy reg a0 with *a19_0
    sw      a1,60(sp)
    lw      a1,0(a0)
                    #      new_var temp_101_69:i32 
                    #      temp_101_69 = load *a20_0:ptr->i32 
                    #   load label a20 as ptr to reg
    la      a0, a20
                    #occupy reg a0 with *a20_0
    sw      a1,56(sp)
    lw      a1,0(a0)
                    #      new_var temp_102_69:i32 
                    #      temp_102_69 = load *a21_0:ptr->i32 
                    #   load label a21 as ptr to reg
    la      a0, a21
                    #occupy reg a0 with *a21_0
    sw      a1,52(sp)
    lw      a1,0(a0)
                    #      new_var temp_103_69:i32 
                    #      temp_103_69 = load *a22_0:ptr->i32 
                    #   load label a22 as ptr to reg
    la      a0, a22
                    #occupy reg a0 with *a22_0
    sw      a1,48(sp)
    lw      a1,0(a0)
                    #      new_var temp_104_69:i32 
                    #      temp_104_69 = load *a23_0:ptr->i32 
                    #   load label a23 as ptr to reg
    la      a0, a23
                    #occupy reg a0 with *a23_0
    sw      a1,44(sp)
    lw      a1,0(a0)
                    #      new_var temp_105_69:i32 
                    #      temp_105_69 = load *a24_0:ptr->i32 
                    #   load label a24 as ptr to reg
    la      a0, a24
                    #occupy reg a0 with *a24_0
    sw      a1,40(sp)
    lw      a1,0(a0)
                    #      new_var temp_106_69:i32 
                    #      temp_106_69 = load *a25_0:ptr->i32 
                    #   load label a25 as ptr to reg
    la      a0, a25
                    #occupy reg a0 with *a25_0
    sw      a1,36(sp)
    lw      a1,0(a0)
                    #      new_var temp_107_69:i32 
                    #      temp_107_69 = load *a26_0:ptr->i32 
                    #   load label a26 as ptr to reg
    la      a0, a26
                    #occupy reg a0 with *a26_0
    sw      a1,32(sp)
    lw      a1,0(a0)
                    #      new_var temp_108_69:i32 
                    #      temp_108_69 = load *a27_0:ptr->i32 
                    #   load label a27 as ptr to reg
    la      a0, a27
                    #occupy reg a0 with *a27_0
    sw      a1,28(sp)
    lw      a1,0(a0)
                    #      new_var temp_109_69:i32 
                    #      temp_109_69 = load *a28_0:ptr->i32 
                    #   load label a28 as ptr to reg
    la      a0, a28
                    #occupy reg a0 with *a28_0
    sw      a1,24(sp)
    lw      a1,0(a0)
                    #      new_var temp_110_69:i32 
                    #      temp_110_69 = load *a29_0:ptr->i32 
                    #   load label a29 as ptr to reg
    la      a0, a29
                    #occupy reg a0 with *a29_0
    sw      a1,20(sp)
    lw      a1,0(a0)
                    #      new_var temp_111_69:i32 
                    #      temp_111_69 = load *a30_0:ptr->i32 
                    #   load label a30 as ptr to reg
    la      a0, a30
                    #occupy reg a0 with *a30_0
    sw      a1,16(sp)
    lw      a1,0(a0)
                    #      new_var temp_112_69:i32 
                    #      temp_112_69 = load *a31_0:ptr->i32 
                    #   load label a31 as ptr to reg
    la      a0, a31
                    #occupy reg a0 with *a31_0
    sw      a1,12(sp)
    lw      a1,0(a0)
                    #      new_var temp_113_69:i32 
                    #      temp_113_69 =  Call i32 testParam32_0(temp_81_69, temp_82_69, temp_83_69, temp_84_69, temp_85_69, temp_86_69, temp_87_69, temp_88_69, temp_89_69, temp_90_69, temp_91_69, temp_92_69, temp_93_69, temp_94_69, temp_95_69, temp_96_69, temp_97_69, temp_98_69, temp_99_69, temp_100_69, temp_101_69, temp_102_69, temp_103_69, temp_104_69, temp_105_69, temp_106_69, temp_107_69, temp_108_69, temp_109_69, temp_110_69, temp_111_69, temp_112_69) 
                    #saved register dumping to mem
    sw      s1,124(sp)
    sw      s2,84(sp)
    sw      s3,120(sp)
    sw      s4,80(sp)
    sw      s5,116(sp)
    sw      s6,76(sp)
    sw      s7,112(sp)
    sw      s8,72(sp)
    sw      s9,108(sp)
    sw      s10,68(sp)
    sw      s11,104(sp)
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a4
    sw      a1,8(sp)
    mv      a1, a6
    sw      a2,96(sp)
    lw      a2,124(sp)
    sw      a3,136(sp)
    lw      a3,120(sp)
    sw      a4,132(sp)
    lw      a4,116(sp)
    sw      a5,92(sp)
    lw      a5,112(sp)
    sw      a6,128(sp)
    lw      a6,108(sp)
    sw      a7,88(sp)
    lw      a7,104(sp)
                    #arg load ended
    call    testParam32
    sw      a0,4(sp)
                    #      store temp_113_69:i32 *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a1, a0
                    #occupy reg a1 with *a0_0
    sd      a0,0(a1)
                    #      new_var temp_114_69:i32 
                    #      temp_114_69 = load *a0_0:ptr->i32 
                    #   load label a0 as ptr to reg
    la      a2, a0
                    #occupy reg a2 with *a0_0
    lw      a3,0(a2)
                    #       Call void putint_0(temp_114_69) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,256(sp)
    ld      s0,248(sp)
    li      a0, 0
    addi    sp,sp,264
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: *a0_0, tracked: false } |     a2:Freed { symidx: *a0_0, tracked: false } |     a3:Freed { symidx: temp_114_69, tracked: true } | 
.section
    .data
    .align 4
    .globl a39
                    #      global i32 a39_0 
    .type a39,@object
a39:
    .word 0
    .align 4
    .globl a38
                    #      global i32 a38_0 
    .type a38,@object
a38:
    .word 0
    .align 4
    .globl a37
                    #      global i32 a37_0 
    .type a37,@object
a37:
    .word 0
    .align 4
    .globl a36
                    #      global i32 a36_0 
    .type a36,@object
a36:
    .word 0
    .align 4
    .globl a35
                    #      global i32 a35_0 
    .type a35,@object
a35:
    .word 0
    .align 4
    .globl a34
                    #      global i32 a34_0 
    .type a34,@object
a34:
    .word 0
    .align 4
    .globl a33
                    #      global i32 a33_0 
    .type a33,@object
a33:
    .word 0
    .align 4
    .globl a32
                    #      global i32 a32_0 
    .type a32,@object
a32:
    .word 0
    .align 4
    .globl a31
                    #      global i32 a31_0 
    .type a31,@object
a31:
    .word 0
    .align 4
    .globl a30
                    #      global i32 a30_0 
    .type a30,@object
a30:
    .word 0
    .align 4
    .globl a29
                    #      global i32 a29_0 
    .type a29,@object
a29:
    .word 0
    .align 4
    .globl a28
                    #      global i32 a28_0 
    .type a28,@object
a28:
    .word 0
    .align 4
    .globl a27
                    #      global i32 a27_0 
    .type a27,@object
a27:
    .word 0
    .align 4
    .globl a26
                    #      global i32 a26_0 
    .type a26,@object
a26:
    .word 0
    .align 4
    .globl a25
                    #      global i32 a25_0 
    .type a25,@object
a25:
    .word 0
    .align 4
    .globl a24
                    #      global i32 a24_0 
    .type a24,@object
a24:
    .word 0
    .align 4
    .globl a23
                    #      global i32 a23_0 
    .type a23,@object
a23:
    .word 0
    .align 4
    .globl a22
                    #      global i32 a22_0 
    .type a22,@object
a22:
    .word 0
    .align 4
    .globl a21
                    #      global i32 a21_0 
    .type a21,@object
a21:
    .word 0
    .align 4
    .globl a20
                    #      global i32 a20_0 
    .type a20,@object
a20:
    .word 0
    .align 4
    .globl a19
                    #      global i32 a19_0 
    .type a19,@object
a19:
    .word 0
    .align 4
    .globl a18
                    #      global i32 a18_0 
    .type a18,@object
a18:
    .word 0
    .align 4
    .globl a17
                    #      global i32 a17_0 
    .type a17,@object
a17:
    .word 0
    .align 4
    .globl a16
                    #      global i32 a16_0 
    .type a16,@object
a16:
    .word 0
    .align 4
    .globl a15
                    #      global i32 a15_0 
    .type a15,@object
a15:
    .word 0
    .align 4
    .globl a14
                    #      global i32 a14_0 
    .type a14,@object
a14:
    .word 0
    .align 4
    .globl a13
                    #      global i32 a13_0 
    .type a13,@object
a13:
    .word 0
    .align 4
    .globl a12
                    #      global i32 a12_0 
    .type a12,@object
a12:
    .word 0
    .align 4
    .globl a11
                    #      global i32 a11_0 
    .type a11,@object
a11:
    .word 0
    .align 4
    .globl a10
                    #      global i32 a10_0 
    .type a10,@object
a10:
    .word 0
    .align 4
    .globl a9
                    #      global i32 a9_0 
    .type a9,@object
a9:
    .word 0
    .align 4
    .globl a8
                    #      global i32 a8_0 
    .type a8,@object
a8:
    .word 0
    .align 4
    .globl a7
                    #      global i32 a7_0 
    .type a7,@object
a7:
    .word 0
    .align 4
    .globl a6
                    #      global i32 a6_0 
    .type a6,@object
a6:
    .word 0
    .align 4
    .globl a5
                    #      global i32 a5_0 
    .type a5,@object
a5:
    .word 0
    .align 4
    .globl a4
                    #      global i32 a4_0 
    .type a4,@object
a4:
    .word 0
    .align 4
    .globl a3
                    #      global i32 a3_0 
    .type a3,@object
a3:
    .word 0
    .align 4
    .globl a2
                    #      global i32 a2_0 
    .type a2,@object
a2:
    .word 0
    .align 4
    .globl a1
                    #      global i32 a1_0 
    .type a1,@object
a1:
    .word 0
    .align 4
    .globl a0
                    #      global i32 a0_0 
    .type a0,@object
a0:
    .word 0
