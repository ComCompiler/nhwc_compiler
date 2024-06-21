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
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:4|a:4|temp_4:1|none:3|a:4|temp_5:4|temp_6:1|none:3|temp_7:8|temp_8:8|temp_9:8|temp_10:8|temp_11:8|c:64|b:4|temp_12:16|none:4|temp_13:8|temp_14:4|temp_15:1|none:3|temp_16:8|temp_17:8|temp_18:8|c:140|none:4|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:4|none:4|temp_23:8|temp_24:4|temp_25:4|temp_26:16|temp_27:8|temp_28:4|temp_29:16|none:4|temp_30:8|temp_31:4|temp_32:16|none:4|temp_33:8|temp_34:4|temp_35:16|none:4|temp_36:8|temp_37:4|none:4
    addi    sp,sp,-528
    sd      ra,520(sp)
    sd      s0,512(sp)
    addi    s0,sp,528
                    #      alloc i32 a_19 
                    #      alloc i32 a_22 
                    #      alloc i1 temp_4_31 
                    #      alloc i32 a_33 
                    #      alloc i32 temp_5_33 
                    #      alloc i1 temp_6_566 
                    #      alloc ptr->i32 temp_7_42 
                    #      alloc ptr->i32 temp_8_46 
                    #      alloc ptr->i32 temp_9_46 
                    #      alloc ptr->i32 temp_10_46 
                    #      alloc ptr->i32 temp_11_46 
                    #      alloc Array:i32:[Some(2_0), Some(8_0)] c_46 
                    #      alloc i32 b_48 
                    #      alloc Array:i32:[Some(4_0)] temp_12_50 
                    #      alloc ptr->i32 temp_13_50 
                    #      alloc i32 temp_14_50 
                    #      alloc i1 temp_15_935 
                    #      alloc ptr->i32 temp_16_52 
                    #      alloc ptr->i32 temp_17_52 
                    #      alloc ptr->i32 temp_18_52 
                    #      alloc Array:i32:[Some(7_0), Some(1_0), Some(5_0)] c_52 
                    #      alloc ptr->i32 temp_19_52 
                    #      alloc i32 temp_20_52 
                    #      alloc ptr->i32 temp_21_52 
                    #      alloc i32 temp_22_52 
                    #      alloc ptr->i32 temp_23_52 
                    #      alloc i32 temp_24_52 
                    #      alloc i32 temp_25_19 
                    #      alloc Array:i32:[Some(4_0)] temp_26_19 
                    #      alloc ptr->i32 temp_27_19 
                    #      alloc i32 temp_28_19 
                    #      alloc Array:i32:[Some(4_0)] temp_29_19 
                    #      alloc ptr->i32 temp_30_19 
                    #      alloc i32 temp_31_19 
                    #      alloc Array:i32:[Some(4_0)] temp_32_19 
                    #      alloc ptr->i32 temp_33_19 
                    #      alloc i32 temp_34_19 
                    #      alloc Array:i32:[Some(4_0)] temp_35_19 
                    #      alloc ptr->i32 temp_36_19 
                    #      alloc i32 temp_37_19 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_19:i32 
                    #      a_19 = i32 1_0 
    li      a0, 1
                    #      new_var a_22:i32 
                    #      a_22 = i32 2_0 
    li      a1, 2
                    #      a_22 = i32 3_0 
                    #       Call void putint_0(a_22) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,508(sp)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #       Call void putint_0(a_22) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a1
                    #arg load ended
    call    putint
                    #       Call void putint_0(a_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,508(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_4_31:i1 
                    #      temp_4_31 = icmp i32 Slt a_19, 5_0 
    li      a2, 5
    slt     a3,a0,a2
                    #      br i1 temp_4_31, label while.body_32, label while.exit_32 
    bnez    a3, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      a_33 = i32 0_0 
    li      a2, 0
                    #      new_var temp_5_33:i32 
                    #      temp_5_33 = Add i32 a_33, 1_0 
    li      a4, 1
    add     a5,a2,a4
                    #      a_33 = i32 temp_5_33 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_6_566:i1 
                    #      temp_6_566 = icmp i32 Ne a_33, 0_0 
    li      a4, 0
    xor     a6,a2,a4
    snez    a6, a6
                    #      br i1 temp_6_566, label branch_true_37, label branch_false_37 
    bnez    a6, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      jump label: while.exit_32 
    sb      a6,491(sp)
    sw      a5,492(sp)
    sw      a2,496(sp)
    j       .while.exit_32
                    #      label while.exit_32: 
.while.exit_32:
                    #       Call void putint_0(a_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,508(sp)
    lw      a0,508(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_7_42:ptr->i32 
                    #      temp_7_42 = getelementptr c_0:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      a0, 0
    li      a2, 1
    li      a4, 2
    mul     a5,a2,a4
                    #occupy reg a5 with c_0
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_7_42:ptr->i32 
                    #found literal reg Some(a2) already exist with 1_0
    sd      a2,0(a0)
                    #      mu c_0:77 
                    #      c_0 = chi c_0:77 
                    #      new_var c_46:Array:i32:[Some(2_0), Some(8_0)] 
                    #      new_var temp_8_46:ptr->i32 
                    #      temp_8_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(1_0)] 
    li      a6, 0
    li      a7, 8
    li      s1, 0
    mul     s2,a7,s1
    add     a6,a6,s2
                    #found literal reg Some(a2) already exist with 1_0
    li      s3, 1
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 9_0:i32 temp_8_46:ptr->Array:i32:[Some(8_0)] 
    li      s4, 9
    sd      s4,0(a6)
                    #      mu c_46:84 
                    #      c_46 = chi c_46:84 
                    #      new_var temp_9_46:ptr->i32 
                    #      temp_9_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(2_0)] 
    li      s5, 0
                    #found literal reg Some(a7) already exist with 8_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s5,s5,s2
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 2_0
    add     s5,s5,s2
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 8_0:i32 temp_9_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(a7) already exist with 8_0
    sd      a7,0(s5)
                    #      mu c_46:90 
                    #      c_46 = chi c_46:90 
                    #      new_var temp_10_46:ptr->i32 
                    #      temp_10_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(0_0)] 
    li      s6, 0
                    #found literal reg Some(a7) already exist with 8_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s6,s6,s2
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s6,s6,s2
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 0_0:i32 temp_10_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(s1) already exist with 0_0
    sd      s1,0(s6)
                    #      mu c_46:96 
                    #      c_46 = chi c_46:96 
                    #      new_var temp_11_46:ptr->i32 
                    #      temp_11_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(3_0)] 
    li      s7, 0
                    #found literal reg Some(a7) already exist with 8_0
                    #found literal reg Some(s1) already exist with 0_0
    add     s7,s7,s2
                    #found literal reg Some(s3) already exist with 1_0
    li      s8, 3
    add     s7,s7,s2
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 3_0:i32 temp_11_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(s8) already exist with 3_0
    sd      s8,0(s7)
                    #      mu c_46:102 
                    #      c_46 = chi c_46:102 
                    #      b_48 = i32 2_0 
    li      s9, 2
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_12_50:Array:i32:[Some(4_0)] 
                    #      temp_12_50 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a2, c
                    #occupy reg a2 with *c_0
    lw      a4,0(a2)
                    #      new_var temp_13_50:ptr->i32 
                    #      new_var temp_14_50:i32 
                    #      temp_13_50 = getelementptr temp_12_50:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      a5, 0
    li      a7, 1
    li      s1, 2
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_14_50 = load temp_13_50:ptr->i32 
    lw      s3,0(a5)
                    #      new_var temp_15_935:i1 
                    #      temp_15_935 = icmp i32 Ne temp_14_50, 0_0 
    li      s4, 0
    xor     s8,s3,s4
    snez    s8, s8
                    #      br i1 temp_15_935, label branch_true_51, label branch_false_51 
    bnez    s8, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] 
                    #      new_var temp_16_52:ptr->i32 
                    #      temp_16_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(0_0)] 
    li      a2, 0
    li      a7, 5
    li      s1, 0
    mul     s4,a7,s1
    add     a2,a2,s4
                    #found literal reg Some(a7) already exist with 5_0
                    #found literal reg Some(s1) already exist with 0_0
    add     a2,a2,s4
    li      s10, 1
                    #found literal reg Some(s1) already exist with 0_0
    add     a2,a2,s4
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 2_0:i32 temp_16_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
    li      s11, 2
    sd      s11,0(a2)
                    #      mu c_52:127 
                    #      c_52 = chi c_52:127 
                    #      new_var temp_17_52:ptr->i32 
                    #      temp_17_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(2_0)] 
    li      a7, 0
    li      s1, 5
    li      s10, 0
    add     a7,a7,s4
                    #found literal reg Some(s1) already exist with 5_0
                    #found literal reg Some(s10) already exist with 0_0
    add     a7,a7,s4
    li      s1, 1
                    #found literal reg Some(s11) already exist with 2_0
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 8_0:i32 temp_17_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
    li      s1, 8
    sd      s1,0(a7)
                    #      mu c_52:133 
                    #      c_52 = chi c_52:133 
                    #      new_var temp_18_52:ptr->i32 
                    #      temp_18_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(1_0)] 
    li      s1, 0
    li      s10, 5
    li      s11, 0
    add     s1,s1,s4
                    #found literal reg Some(s10) already exist with 5_0
                    #found literal reg Some(s11) already exist with 0_0
    add     s1,s1,s4
    li      s10, 1
    li      s11, 1
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 1_0:i32 temp_18_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(s1)
                    #      mu c_52:139 
                    #      c_52 = chi c_52:139 
                    #      new_var temp_19_52:ptr->i32 
                    #      new_var temp_20_52:i32 
                    #      temp_19_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(0_0)] 
    li      s10, 0
    li      s11, 5
    add     s10,s10,s4
                    #found literal reg Some(s11) already exist with 5_0
    sd      a0,480(sp)
    li      a0, 0
    add     s10,s10,s4
    li      a0, 1
    li      s11, 0
    add     s10,s10,s4
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_20_52 = load temp_19_52:ptr->i32 
    lw      a0,0(s10)
                    #       Call void putint_0(temp_20_52) 
                    #saved register dumping to mem
    sd      s1,320(sp)
    sw      s2,444(sp)
    sw      s3,348(sp)
    sw      s4,316(sp)
    sd      s5,464(sp)
    sd      s6,456(sp)
    sd      s7,448(sp)
    sb      s8,347(sp)
    sw      s9,380(sp)
    sd      s10,168(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,164(sp)
    lw      a0,164(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_21_52:ptr->i32 
                    #      new_var temp_22_52:i32 
                    #      temp_21_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(1_0)] 
    li      a0, 0
    li      s1, 5
    mul     s3,s1,s2
    add     a0,a0,s3
                    #found literal reg Some(s1) already exist with 5_0
    li      s4, 0
    add     a0,a0,s3
    li      s5, 1
    li      s6, 1
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_22_52 = load temp_21_52:ptr->i32 
    lw      s7,0(a0)
                    #       Call void putint_0(temp_22_52) 
                    #saved register dumping to mem
    sw      s2,380(sp)
    sw      s3,316(sp)
    sw      s7,148(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,152(sp)
    lw      a0,148(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_23_52:ptr->i32 
                    #      new_var temp_24_52:i32 
                    #      temp_23_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(2_0)] 
    li      a0, 0
    li      s1, 5
    mul     s3,s1,s2
    add     a0,a0,s3
                    #found literal reg Some(s1) already exist with 5_0
    li      s4, 0
    add     a0,a0,s3
    li      s5, 1
    li      s6, 2
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_24_52 = load temp_23_52:ptr->i32 
    lw      s7,0(a0)
                    #       Call void putint_0(temp_24_52) 
                    #saved register dumping to mem
    sw      s2,380(sp)
    sw      s3,316(sp)
    sw      s7,132(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,136(sp)
    lw      a0,132(sp)
                    #arg load ended
    call    putint
                    #      jump label: branch_false_51 
    lw      s9,380(sp)
    ld      a0,480(sp)
    ld      s5,464(sp)
    lw      s2,444(sp)
    lb      s8,347(sp)
    sd      a7,328(sp)
    ld      s6,456(sp)
    ld      s7,448(sp)
    lw      s3,348(sp)
    sd      a2,336(sp)
    j       .branch_false_51
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L3_0: 
.L3_0:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sw      s2,444(sp)
    sw      s3,348(sp)
    sd      s5,464(sp)
    sd      s6,456(sp)
    sd      s7,448(sp)
    sb      s8,347(sp)
    sw      s9,380(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,480(sp)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_25_19:i32 
                    #      temp_25_19 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      a2,0(a0)
                    #       Call void putint_0(temp_25_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a2
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_26_19:Array:i32:[Some(4_0)] 
                    #      temp_26_19 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      a7,0(a0)
                    #      new_var temp_27_19:ptr->i32 
                    #      new_var temp_28_19:i32 
                    #      temp_27_19 = getelementptr temp_26_19:Array:i32:[Some(4_0)] [Some(0_0)] 
    li      s1, 0
    li      s2, 1
    li      s3, 0
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_28_19 = load temp_27_19:ptr->i32 
    lw      s4,0(s1)
                    #       Call void putint_0(temp_28_19) 
                    #saved register dumping to mem
    sd      s1,104(sp)
    sw      s4,100(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,100(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_29_19:Array:i32:[Some(4_0)] 
                    #      temp_29_19 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      s1,0(a0)
                    #      new_var temp_30_19:ptr->i32 
                    #      new_var temp_31_19:i32 
                    #      temp_30_19 = getelementptr temp_29_19:Array:i32:[Some(4_0)] [Some(1_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_31_19 = load temp_30_19:ptr->i32 
    lw      s5,0(s2)
                    #       Call void putint_0(temp_31_19) 
                    #saved register dumping to mem
    sw      s1,96(sp)
    sd      s2,72(sp)
    sw      s5,68(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,68(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_32_19:Array:i32:[Some(4_0)] 
                    #      temp_32_19 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      s1,0(a0)
                    #      new_var temp_33_19:ptr->i32 
                    #      new_var temp_34_19:i32 
                    #      temp_33_19 = getelementptr temp_32_19:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 2
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_34_19 = load temp_33_19:ptr->i32 
    lw      s5,0(s2)
                    #       Call void putint_0(temp_34_19) 
                    #saved register dumping to mem
    sw      s1,64(sp)
    sd      s2,40(sp)
    sw      s5,36(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,36(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_35_19:Array:i32:[Some(4_0)] 
                    #      temp_35_19 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      s1,0(a0)
                    #      new_var temp_36_19:ptr->i32 
                    #      new_var temp_37_19:i32 
                    #      temp_36_19 = getelementptr temp_35_19:Array:i32:[Some(4_0)] [Some(3_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 3
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_37_19 = load temp_36_19:ptr->i32 
    lw      s5,0(s2)
                    #       Call void putint_0(temp_37_19) 
                    #saved register dumping to mem
    sw      s1,32(sp)
    sd      s2,8(sp)
    sw      s5,4(sp)
                    #saved register dumped to mem
                    #arg load start
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
    ld      ra,520(sp)
    ld      s0,512(sp)
    li      a0, 0
    addi    sp,sp,528
    ret
                    #      label branch_false_37: 
.branch_false_37:
                    #      jump label: while.head_32 
    sb      a3,503(sp)
    sw      a0,508(sp)
    sb      a6,491(sp)
    sw      a5,492(sp)
    sw      a2,496(sp)
    j       .while.head_32
.section        .data
    .align 4
    .globl c
                    #      global Array:i32:[Some(4_0)] c_0 
    .type c,@object
c:
    .word 6
    .word 7
    .word 8
    .word 9
    .zero 13
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 5
