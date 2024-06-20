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
    sw      a1,504(sp)
    sw      a0,508(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a_22) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    putint
                    #       Call void putint_0(a_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
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
    li      a1, 5
    slt     a2,a0,a1
                    #      br i1 temp_4_31, label while.body_32, label while.exit_32 
    bnez    a2, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      a_33 = i32 0_0 
    li      a3, 0
                    #      new_var temp_5_33:i32 
                    #      temp_5_33 = Add i32 a_33, 1_0 
    li      a4, 1
    add     a5,a3,a4
                    #      a_33 = i32 temp_5_33 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_6_566:i1 
                    #      temp_6_566 = icmp i32 Ne a_33, 0_0 
    li      a6, 0
    xor     a7,a3,a6
    snez    a7, a7
                    #      br i1 temp_6_566, label branch_true_37, label branch_false_37 
    bnez    a7, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      jump label: while.exit_32 
    j       .while.exit_32
                    #      label while.exit_32: 
.while.exit_32:
                    #       Call void putint_0(a_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,508(sp)
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
                    #found literal reg Some(a4) already exist with 1_0
    li      s1, 2
    mul     s2,a4,s1
                    #occupy reg s2 with c_0
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 1_0:i32 temp_7_42:ptr->i32 
                    #found literal reg Some(a4) already exist with 1_0
    sd      a4,0(a0)
                    #      mu c_0:77 
                    #      c_0 = chi c_0:77 
                    #      new_var c_46:Array:i32:[Some(2_0), Some(8_0)] 
                    #      new_var temp_8_46:ptr->i32 
                    #      temp_8_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(1_0)] 
    li      s3, 0
    li      s4, 8
                    #found literal reg Some(a6) already exist with 0_0
    mul     s5,s4,a6
    add     s3,s3,s5
                    #found literal reg Some(a4) already exist with 1_0
    li      s6, 1
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_8_46:ptr->Array:i32:[Some(8_0)] 
    li      s7, 9
    sd      s7,0(s3)
                    #      mu c_46:84 
                    #      c_46 = chi c_46:84 
                    #      new_var temp_9_46:ptr->i32 
                    #      temp_9_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(0_0)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 8_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s8,s8,s5
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s8,s8,s5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 0_0:i32 temp_9_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(a6) already exist with 0_0
    sd      a6,0(s8)
                    #      mu c_46:90 
                    #      c_46 = chi c_46:90 
                    #      new_var temp_10_46:ptr->i32 
                    #      temp_10_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(2_0)] 
    li      s9, 0
                    #found literal reg Some(s4) already exist with 8_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s9,s9,s5
                    #found literal reg Some(a4) already exist with 1_0
                    #found literal reg Some(s1) already exist with 2_0
    add     s9,s9,s5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 8_0:i32 temp_10_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(s4) already exist with 8_0
    sd      s4,0(s9)
                    #      mu c_46:96 
                    #      c_46 = chi c_46:96 
                    #      new_var temp_11_46:ptr->i32 
                    #      temp_11_46 = getelementptr c_46:Array:i32:[Some(2_0), Some(8_0)] [Some(0_0), Some(3_0)] 
    li      s10, 0
                    #found literal reg Some(s4) already exist with 8_0
                    #found literal reg Some(a6) already exist with 0_0
    add     s10,s10,s5
                    #found literal reg Some(a4) already exist with 1_0
    li      s11, 3
    add     s10,s10,s5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 3_0:i32 temp_11_46:ptr->Array:i32:[Some(8_0)] 
                    #found literal reg Some(s11) already exist with 3_0
    sd      s11,0(s10)
                    #      mu c_46:102 
                    #      c_46 = chi c_46:102 
                    #      b_48 = i32 2_0 
    li      a1, 2
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_12_50:Array:i32:[Some(4_0)] 
                    #      temp_12_50 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a4, c
                    #occupy reg a4 with *c_0
    lw      a6,0(a4)
                    #      new_var temp_13_50:ptr->i32 
                    #      new_var temp_14_50:i32 
                    #      temp_13_50 = getelementptr temp_12_50:Array:i32:[Some(4_0)] [Some(2_0)] 
    li      a4, 0
                    #found literal reg Some(s6) already exist with 1_0
                    #found literal reg Some(s1) already exist with 2_0
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_14_50 = load temp_13_50:ptr->i32 
    lw      s1,0(a4)
                    #      new_var temp_15_935:i1 
                    #      temp_15_935 = icmp i32 Ne temp_14_50, 0_0 
    li      s2, 0
    xor     s4,s1,s2
    snez    s4, s4
                    #      br i1 temp_15_935, label branch_true_51, label branch_false_51 
    bnez    s4, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] 
                    #      new_var temp_16_52:ptr->i32 
                    #      temp_16_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(0_0)] 
    li      s2, 0
    li      s6, 5
    li      s7, 0
    mul     s11,s6,s7
    add     s2,s2,s11
                    #found literal reg Some(s6) already exist with 5_0
                    #found literal reg Some(s7) already exist with 0_0
    add     s2,s2,s11
    li      s6, 1
                    #found literal reg Some(s7) already exist with 0_0
    add     s2,s2,s11
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 2_0:i32 temp_16_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
    li      s6, 2
    sd      s6,0(s2)
                    #      mu c_52:127 
                    #      c_52 = chi c_52:127 
                    #      new_var temp_17_52:ptr->i32 
                    #      temp_17_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(1_0)] 
    li      s6, 0
    li      s7, 5
    sd      a0,480(sp)
    li      a0, 0
    add     s6,s6,s11
                    #found literal reg Some(s7) already exist with 5_0
                    #found literal reg Some(a0) already exist with 0_0
    add     s6,s6,s11
    li      a0, 1
    li      s7, 1
    add     s6,s6,s11
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 1_0:i32 temp_17_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
                    #found literal reg Some(s7) already exist with 1_0
    sd      s7,0(s6)
                    #      mu c_52:133 
                    #      c_52 = chi c_52:133 
                    #      new_var temp_18_52:ptr->i32 
                    #      temp_18_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(0_0), Some(0_0), Some(2_0)] 
    li      a0, 0
    li      s7, 5
    sw      a1,380(sp)
    li      a1, 0
    add     a0,a0,s11
                    #found literal reg Some(s7) already exist with 5_0
                    #found literal reg Some(a1) already exist with 0_0
    add     a0,a0,s11
    li      a1, 1
    li      s7, 2
    add     a0,a0,s11
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_18_52:ptr->Array:i32:[Some(1_0), Some(5_0)] 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu c_52:139 
                    #      c_52 = chi c_52:139 
                    #      new_var temp_19_52:ptr->i32 
                    #      new_var temp_20_52:i32 
                    #      temp_19_52 = getelementptr c_52:Array:i32:[Some(7_0), Some(1_0), Some(5_0)] [Some(b_48), Some(0_0), Some(0_0)] 
    li      a1, 0
    li      s7, 5
    sd      a0,320(sp)
    add     a1,a1,s11
                    #found literal reg Some(s7) already exist with 5_0
    sw      a0,380(sp)
    li      a0, 0
    add     a1,a1,s11
    li      a0, 1
    li      s7, 0
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_20_52 = load temp_19_52:ptr->i32 
    lw      a0,0(a1)
                    #       Call void putint_0(temp_20_52) 
                    #saved register dumping to mem
    sw      s1,348(sp)
    sd      s2,336(sp)
    sd      s3,472(sp)
    sb      s4,347(sp)
    sw      s5,444(sp)
    sd      s6,328(sp)
    sd      s8,464(sp)
    sd      s9,456(sp)
    sd      s10,448(sp)
    sw      s11,316(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,164(sp)
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
                    #arg load ended
    call    putint
                    #      jump label: branch_false_51 
    j       .branch_false_51
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L3_0: 
.L3_0:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_25_19:i32 
                    #      temp_25_19 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      s1,0(a0)
                    #       Call void putint_0(temp_25_19) 
                    #saved register dumping to mem
    sw      s1,128(sp)
                    #saved register dumped to mem
                    #arg load start
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
    lw      s1,0(a0)
                    #      new_var temp_27_19:ptr->i32 
                    #      new_var temp_28_19:i32 
                    #      temp_27_19 = getelementptr temp_26_19:Array:i32:[Some(4_0)] [Some(0_0)] 
    li      s2, 0
    li      s3, 1
    li      s4, 0
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_28_19 = load temp_27_19:ptr->i32 
    lw      s5,0(s2)
                    #       Call void putint_0(temp_28_19) 
                    #saved register dumping to mem
    sw      s1,124(sp)
    sd      s2,104(sp)
    sw      s5,100(sp)
                    #saved register dumped to mem
                    #arg load start
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
