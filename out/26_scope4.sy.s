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
                    #      Define getA_0 [] -> getA_ret_0 
    .globl getA
    .type getA,@function
getA:
                    #mem layout:|ra_getA:8|s0_getA:8|temp_0:4|temp_1:4|temp_2:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 temp_0_20 
                    #      alloc i32 temp_1_20 
                    #      alloc i32 temp_2_20 
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = load *count_0:ptr->i32 
                    #   load label count as ptr to reg
    la      a0, count
                    #occupy reg a0 with *count_0
    lw      a1,0(a0)
                    #      new_var temp_1_20:i32 
                    #      temp_1_20 = Add i32 temp_0_20, 1_0 
    li      a2, 1
    add     a3,a1,a2
                    #      store temp_1_20:i32 *count_0:ptr->i32 
                    #   load label count as ptr to reg
    la      a4, count
                    #occupy reg a4 with *count_0
    sd      a3,0(a4)
                    #      new_var temp_2_20:i32 
                    #      temp_2_20 = load *count_0:ptr->i32 
                    #   load label count as ptr to reg
    la      a5, count
                    #occupy reg a5 with *count_0
    lw      a6,0(a5)
                    #      ret temp_2_20 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a6,4(sp)
    addi    sp,sp,32
    ret
                    #      Define f1_0 [a_23] -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
                    #mem layout:|ra_f1:8|s0_f1:8|a:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:1|none:3|temp_9:4|a:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|none:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 temp_3_25 
                    #      alloc i32 temp_4_25 
                    #      alloc i32 temp_5_25 
                    #      alloc i32 temp_6_25 
                    #      alloc i32 temp_7_25 
                    #      alloc i1 temp_8_274 
                    #      alloc i32 temp_9_32 
                    #      alloc i32 a_32 
                    #      alloc i32 temp_10_32 
                    #      alloc i32 temp_11_32 
                    #      alloc i32 temp_12_29 
                    #      alloc i32 temp_13_29 
                    #      alloc i32 temp_14_25 
                    #      alloc i32 temp_15_25 
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_3_25:i32 
                    #      temp_3_25 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a1, sum
                    #occupy reg a1 with *sum_0
    lw      a2,0(a1)
                    #      new_var temp_4_25:i32 
                    #      temp_4_25 = Add i32 temp_3_25, a_23 
    add     a3,a2,a0
                    #      store temp_4_25:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a4, sum
                    #occupy reg a4 with *sum_0
    sd      a3,0(a4)
                    #      new_var temp_5_25:i32 
                    #      temp_5_25 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,60(sp)
    sw      a0,48(sp)
                    #      a_23 = i32 temp_5_25 
    mv      a5, a0
                    #      new_var temp_6_25:i32 
                    #      temp_6_25 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a6, sum
                    #occupy reg a6 with *sum_0
    lw      a7,0(a6)
                    #      new_var temp_7_25:i32 
                    #      temp_7_25 = Add i32 temp_6_25, a_23 
    add     s1,a7,a5
                    #      store temp_7_25:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s2, sum
                    #occupy reg s2 with *sum_0
    sd      s1,0(s2)
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_8_274:i1 
                    #      temp_8_274 = icmp i32 Ne 1_0, 0_0 
    li      a1, 1
    li      a4, 0
    xor     a6,a1,a4
    snez    a6, a6
                    #      br i1 temp_8_274, label branch_true_31, label branch_false_31 
    bnez    a6, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var temp_9_32:i32 
                    #      temp_9_32 =  Call i32 getA_0() 
                    #saved register dumping to mem
    sw      s1,40(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,48(sp)
    sw      a0,32(sp)
                    #      a_32 = i32 temp_9_32 
    mv      a1, a0
                    #      new_var temp_10_32:i32 
                    #      temp_10_32 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a4, sum
                    #occupy reg a4 with *sum_0
    lw      s1,0(a4)
                    #      new_var temp_11_32:i32 
                    #      temp_11_32 = Add i32 temp_10_32, a_32 
    add     s2,s1,a1
                    #      store temp_11_32:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s3, sum
                    #occupy reg s3 with *sum_0
    sd      s2,0(s3)
                    #      jump label: branch_false_31 
    sw      a0,32(sp)
    lw      a0,48(sp)
    sw      s2,20(sp)
    sw      a1,28(sp)
    sw      s1,24(sp)
    lw      s1,40(sp)
    j       .branch_false_31
                    #      label branch_false_31: 
.branch_false_31:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_12_29:i32 
                    #      temp_12_29 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a1, sum
                    #occupy reg a1 with *sum_0
    lw      a4,0(a1)
                    #      new_var temp_13_29:i32 
                    #      temp_13_29 = Add i32 temp_12_29, a_23 
    add     s2,a4,a5
                    #      store temp_13_29:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s3, sum
                    #occupy reg s3 with *sum_0
    sd      s2,0(s3)
                    #      new_var temp_14_25:i32 
                    #      temp_14_25 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s4, sum
                    #occupy reg s4 with *sum_0
    lw      s5,0(s4)
                    #      new_var temp_15_25:i32 
                    #      temp_15_25 = Add i32 temp_14_25, a_23 
    add     s6,s5,a5
                    #      store temp_15_25:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s7, sum
                    #occupy reg s7 with *sum_0
    sd      s6,0(s7)
                    #      Define f2_0 [] -> f2_ret_0 
    .globl f2
    .type f2,@function
f2:
                    #mem layout:|ra_f2:8|s0_f2:8|temp_16:4|temp_17:4|temp_18:4|temp_19:4|a:4|temp_20:4|temp_21:4|temp_22:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 temp_16_38 
                    #      alloc i32 temp_17_38 
                    #      alloc i32 temp_18_38 
                    #      alloc i32 temp_19_42 
                    #      alloc i32 a_42 
                    #      alloc i32 temp_20_40 
                    #      alloc i32 temp_21_40 
                    #      alloc i32 temp_22_40 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_16_38:i32 
                    #      temp_16_38 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      a1,0(a0)
                    #      new_var temp_17_38:i32 
                    #      temp_17_38 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a2, sum
                    #occupy reg a2 with *sum_0
    lw      a3,0(a2)
                    #      new_var temp_18_38:i32 
                    #      temp_18_38 = Add i32 temp_17_38, temp_16_38 
    add     a4,a3,a1
                    #      store temp_18_38:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a5, sum
                    #occupy reg a5 with *sum_0
    sd      a4,0(a5)
                    #      new_var temp_19_42:i32 
                    #      temp_19_42 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,16(sp)
                    #      a_42 = i32 temp_19_42 
    mv      a6, a0
                    #      new_var temp_20_40:i32 
                    #      temp_20_40 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a7, a
                    #occupy reg a7 with *a_0
    lw      s1,0(a7)
                    #      new_var temp_21_40:i32 
                    #      temp_21_40 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s2, sum
                    #occupy reg s2 with *sum_0
    lw      s3,0(s2)
                    #      new_var temp_22_40:i32 
                    #      temp_22_40 = Add i32 temp_21_40, temp_20_40 
    add     s4,s3,s1
                    #      store temp_22_40:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s5, sum
                    #occupy reg s5 with *sum_0
    sd      s4,0(s5)
                    #      Define f3_0 [] -> f3_ret_0 
    .globl f3
    .type f3,@function
f3:
                    #mem layout:|ra_f3:8|s0_f3:8|temp_23:4|a:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|a:4|temp_30:4|temp_31:4|none:4
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
                    #      alloc i32 temp_23_46 
                    #      alloc i32 a_46 
                    #      alloc i32 temp_24_46 
                    #      alloc i32 temp_25_46 
                    #      alloc i32 temp_26_51 
                    #      alloc i32 temp_27_50 
                    #      alloc i32 temp_28_50 
                    #      alloc i32 temp_29_50 
                    #      alloc i32 a_50 
                    #      alloc i32 temp_30_49 
                    #      alloc i32 temp_31_49 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_23_46:i32 
                    #      temp_23_46 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,44(sp)
                    #      a_46 = i32 temp_23_46 
    mv      a1, a0
                    #      new_var temp_24_46:i32 
                    #      temp_24_46 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a2, sum
                    #occupy reg a2 with *sum_0
    lw      a3,0(a2)
                    #      new_var temp_25_46:i32 
                    #      temp_25_46 = Add i32 temp_24_46, a_46 
    add     a4,a3,a1
                    #      store temp_25_46:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a5, sum
                    #occupy reg a5 with *sum_0
    sd      a4,0(a5)
                    #      new_var temp_26_51:i32 
                    #      temp_26_51 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,44(sp)
    sw      a0,28(sp)
                    #      a_46 = i32 temp_26_51 
    mv      a1, a0
                    #      new_var temp_27_50:i32 
                    #      temp_27_50 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a6, sum
                    #occupy reg a6 with *sum_0
    lw      a7,0(a6)
                    #      new_var temp_28_50:i32 
                    #      temp_28_50 = Add i32 temp_27_50, a_46 
    add     s1,a7,a1
                    #      store temp_28_50:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s2, sum
                    #occupy reg s2 with *sum_0
    sd      s1,0(s2)
                    #      new_var temp_29_50:i32 
                    #      temp_29_50 =  Call i32 getA_0() 
                    #saved register dumping to mem
    sw      s1,20(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,28(sp)
    sw      a0,16(sp)
                    #      a_50 = i32 temp_29_50 
    mv      s1, a0
                    #      new_var temp_30_49:i32 
                    #      temp_30_49 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s2, sum
                    #occupy reg s2 with *sum_0
    lw      s3,0(s2)
                    #      new_var temp_31_49:i32 
                    #      temp_31_49 = Add i32 temp_30_49, a_46 
    add     s4,s3,a1
                    #      store temp_31_49:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s5, sum
                    #occupy reg s5 with *sum_0
    sd      s4,0(s5)
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_32:4|temp_33:4|temp_34:4|temp_35:4|temp_36:4|a:4|temp_37:4|a:4|temp_38:4|a:4|temp_39:4|a:4|temp_40:4|a:4|temp_41:4|temp_42:1|temp_43:1|none:2|i:4|temp_44:1|temp_45:1|temp_46:1|none:1|temp_47:4|temp_48:1|none:3|temp_49:4|a:4|temp_50:4|temp_51:4|temp_52:4|none:4
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
                    #      alloc i32 temp_32_57 
                    #      alloc i32 temp_33_57 
                    #      alloc i32 temp_34_57 
                    #      alloc i32 temp_35_57 
                    #      alloc i32 temp_36_57 
                    #      alloc i32 a_57 
                    #      alloc i32 temp_37_66 
                    #      alloc i32 a_66 
                    #      alloc i32 temp_38_74 
                    #      alloc i32 a_74 
                    #      alloc i32 temp_39_76 
                    #      alloc i32 a_76 
                    #      alloc i32 temp_40_78 
                    #      alloc i32 a_78 
                    #      alloc i32 temp_41_86 
                    #      alloc i1 temp_42_1857 
                    #      alloc i1 temp_43_1886 
                    #      alloc i32 i_99 
                    #      alloc i1 temp_44_101 
                    #      alloc i1 temp_45_1984 
                    #      alloc i1 temp_46_2013 
                    #      alloc i32 temp_47_106 
                    #      alloc i1 temp_48_116 
                    #      alloc i32 temp_49_118 
                    #      alloc i32 a_118 
                    #      alloc i32 temp_50_118 
                    #      alloc i32 temp_51_115 
                    #      alloc i32 temp_52_103 
                    #      label L0_0: 
.L0_0:
                    #      store 0_0:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a0, sum
                    #occupy reg a0 with *sum_0
    li      a1, 0
    sd      a1,0(a0)
                    #      new_var temp_32_57:i32 
                    #      temp_32_57 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,100(sp)
                    #      store temp_32_57:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a2, a
                    #occupy reg a2 with *a_0
    sd      a0,0(a2)
                    #      new_var temp_33_57:i32 
                    #      temp_33_57 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a3, a
                    #occupy reg a3 with *a_0
    lw      a4,0(a3)
                    #      new_var temp_34_57:i32 
                    #      temp_34_57 = load *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      a5, sum
                    #occupy reg a5 with *sum_0
    lw      a6,0(a5)
                    #      new_var temp_35_57:i32 
                    #      temp_35_57 = Add i32 temp_34_57, temp_33_57 
    add     a7,a6,a4
                    #      store temp_35_57:i32 *sum_0:ptr->i32 
                    #   load label sum as ptr to reg
    la      s1, sum
                    #occupy reg s1 with *sum_0
    sd      a7,0(s1)
                    #      new_var temp_36_57:i32 
                    #      temp_36_57 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,100(sp)
    sw      a0,84(sp)
                    #      a_57 = i32 temp_36_57 
    mv      s1, a0
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
    sw      s1,80(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      new_var temp_37_66:i32 
                    #      temp_37_66 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,76(sp)
                    #      a_66 = i32 temp_37_66 
    mv      s1, a0
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
    sw      s1,72(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,76(sp)
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      new_var temp_38_74:i32 
                    #      temp_38_74 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,68(sp)
                    #      a_74 = i32 temp_38_74 
    mv      s1, a0
                    #      new_var temp_39_76:i32 
                    #      temp_39_76 =  Call i32 getA_0() 
                    #saved register dumping to mem
    sw      s1,64(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,68(sp)
    sw      a0,60(sp)
                    #      a_76 = i32 temp_39_76 
    mv      s1, a0
                    #       Call void f1_0(a_76) 
                    #saved register dumping to mem
    sw      s1,56(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,60(sp)
    lw      a0,56(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      new_var temp_40_78:i32 
                    #      temp_40_78 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,52(sp)
                    #      a_78 = i32 temp_40_78 
    mv      s1, a0
                    #       Call void f1_0(a_78) 
                    #saved register dumping to mem
    sw      s1,48(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,52(sp)
    lw      a0,48(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      new_var temp_41_86:i32 
                    #      temp_41_86 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,44(sp)
                    #      a_78 = i32 temp_41_86 
    mv      s1, a0
                    #       Call void f1_0(a_78) 
                    #saved register dumping to mem
    sw      s1,48(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,44(sp)
    lw      a0,48(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      jump label: while.head_95 
    j       .while.head_95
                    #      label while.head_95: 
.while.head_95:
                    #      new_var temp_42_1857:i1 
                    #      temp_42_1857 = icmp i32 Ne 1_0, 0_0 
    li      a0, 1
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_42_1857, label while.body_95, label while.exit_95 
    bnez    a2, .while.body_95
    j       .while.exit_95
                    #      label while.head_98: 
.while.head_98:
                    #      new_var temp_43_1886:i1 
                    #      temp_43_1886 = icmp i32 Ne 1_0, 0_0 
    li      a0, 1
    li      a1, 0
    xor     a3,a0,a1
    snez    a3, a3
                    #      br i1 temp_43_1886, label while.body_98, label while.exit_98 
    bnez    a3, .while.body_98
    j       .while.exit_98
                    #      label while.body_98: 
.while.body_98:
                    #      i_99 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_102 
    j       .while.head_102
                    #      label while.head_102: 
.while.head_102:
                    #      new_var temp_44_101:i1 
                    #      temp_44_101 = icmp i32 Slt i_99, 3_0 
    li      a1, 3
    slt     a5,a0,a1
                    #      br i1 temp_44_101, label while.body_102, label while.exit_102 
    bnez    a5, .while.body_102
    j       .while.exit_102
                    #      label while.head_105: 
.while.head_105:
                    #      new_var temp_45_1984:i1 
                    #      temp_45_1984 = icmp i32 Ne 1_0, 0_0 
    li      a1, 1
    li      s1, 0
    xor     s2,a1,s1
    snez    s2, s2
                    #      br i1 temp_45_1984, label while.body_105, label while.exit_105 
    bnez    s2, .while.body_105
    j       .while.exit_105
                    #      label while.body_105: 
.while.body_105:
                    #      new_var temp_46_2013:i1 
                    #      temp_46_2013 = icmp i32 Ne 1_0, 0_0 
    li      a1, 1
    li      s1, 0
    xor     s3,a1,s1
    snez    s3, s3
                    #      br i1 temp_46_2013, label branch_true_108, label branch_false_108 
    bnez    s3, .branch_true_108
    j       .branch_false_108
                    #      label branch_true_108: 
.branch_true_108:
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
    sb      s2,34(sp)
    sb      s3,33(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      jump label: while.exit_105 
    lw      a0,36(sp)
    lb      s2,34(sp)
    j       .while.exit_105
                    #      label while.exit_105: 
.while.exit_105:
                    #      new_var temp_48_116:i1 
                    #      temp_48_116 = icmp i32 Eq i_99, 1_0 
    li      a1, 1
    xor     s1,a0,a1
    seqz    s1, s1
                    #      br i1 temp_48_116, label branch_true_117, label branch_false_117 
    bnez    s1, .branch_true_117
    j       .branch_false_117
                    #      label branch_true_117: 
.branch_true_117:
                    #      new_var temp_49_118:i32 
                    #      temp_49_118 =  Call i32 getA_0() 
                    #saved register dumping to mem
    sb      s1,27(sp)
    sb      s2,34(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,36(sp)
    sw      a0,20(sp)
                    #      a_118 = i32 temp_49_118 
    mv      a1, a0
                    #       Call void f1_0(a_118) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a1
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      new_var temp_50_118:i32 
                    #      temp_50_118 = Add i32 i_99, 1_0 
    li      s1, 1
    add     s2,a0,s1
                    #      i_99 = i32 temp_50_118 
    mv      a0, s2
                    #      jump label: while.exit_105 
    sw      s2,12(sp)
    lb      s2,34(sp)
    sw      a1,16(sp)
    j       .while.exit_105
                    #      label branch_false_117: 
.branch_false_117:
                    #       Call void f1_0(a_57) 
                    #saved register dumping to mem
    sb      s1,27(sp)
    sb      s2,34(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
    lw      a0,80(sp)
                    #arg load ended
    call    f1
                    #       Call void f2_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f2
                    #       Call void f3_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    f3
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_51_115:i32 
                    #      temp_51_115 =  Call i32 getA_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,8(sp)
                    #      a_57 = i32 temp_51_115 
    mv      a1, a0
                    #      new_var temp_52_103:i32 
                    #      temp_52_103 = Add i32 i_99, 1_0 
    li      s2, 1
    add     s3,s1,s2
                    #      i_99 = i32 temp_52_103 
    mv      s1, s3
                    #      jump label: while.head_102 
    sw      a0,8(sp)
    mv      a0, s1
    sw      s1,36(sp)
    sw      a1,80(sp)
    sb      a5,35(sp)
    sw      s3,4(sp)
    j       .while.head_102
                    #      label branch_false_108: 
.branch_false_108:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_47_106:i32 
                    #      temp_47_106 =  Call i32 getA_0() 
                    #saved register dumping to mem
    sb      s2,34(sp)
    sb      s3,33(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getA
    sw      a0,36(sp)
    sw      a0,28(sp)
                    #      a_57 = i32 temp_47_106 
    mv      a1, a0
                    #      jump label: while.head_105 
    sw      a0,28(sp)
    lw      a0,36(sp)
    sw      a1,80(sp)
    j       .while.head_105
                    #      label while.exit_102: 
.while.exit_102:
                    #      jump label: while.exit_102 
    j       .while.exit_102
                    #      label while.exit_98: 
.while.exit_98:
                    #      jump label: while.head_95 
    sb      a3,42(sp)
    sb      a2,43(sp)
    j       .while.head_95
                    #      label while.exit_95: 
.while.exit_95:
.section        .data
    .align 4
    .globl count
                    #      global i32 count_0 
    .type count,@object
count:
    .word 0
    .align 4
    .globl sum
                    #      global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 0
