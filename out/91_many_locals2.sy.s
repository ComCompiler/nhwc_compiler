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
                    #mem layout:|ra_main:8|s0_main:8|a0:4|a1:4|a2:4|a3:4|a4:4|a5:4|a6:4|a7:4|a8:4|a9:4|a10:4|a11:4|a12:4|a13:4|a14:4|a15:4|a16:4|a17:4|a18:4|a19:4|a20:4|a21:4|a22:4|a23:4|a24:4|a25:4|a26:4|a27:4|a28:4|a29:4|b:4|temp_0:4|temp_1:1|none:3|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|t:4|newline:4|none:4
    addi    sp,sp,-280
    sd      ra,272(sp)
    sd      s0,264(sp)
    addi    s0,sp,280
                    #      alloc i32 a0_18 
                    #      alloc i32 a1_18 
                    #      alloc i32 a2_18 
                    #      alloc i32 a3_18 
                    #      alloc i32 a4_18 
                    #      alloc i32 a5_18 
                    #      alloc i32 a6_18 
                    #      alloc i32 a7_18 
                    #      alloc i32 a8_18 
                    #      alloc i32 a9_18 
                    #      alloc i32 a10_18 
                    #      alloc i32 a11_18 
                    #      alloc i32 a12_18 
                    #      alloc i32 a13_18 
                    #      alloc i32 a14_18 
                    #      alloc i32 a15_18 
                    #      alloc i32 a16_18 
                    #      alloc i32 a17_18 
                    #      alloc i32 a18_18 
                    #      alloc i32 a19_18 
                    #      alloc i32 a20_18 
                    #      alloc i32 a21_18 
                    #      alloc i32 a22_18 
                    #      alloc i32 a23_18 
                    #      alloc i32 a24_18 
                    #      alloc i32 a25_18 
                    #      alloc i32 a26_18 
                    #      alloc i32 a27_18 
                    #      alloc i32 a28_18 
                    #      alloc i32 a29_18 
                    #      alloc i32 b_18 
                    #      alloc i32 temp_0_18 
                    #      alloc i1 temp_1_51 
                    #      alloc i32 temp_2_53 
                    #      alloc i32 temp_3_18 
                    #      alloc i32 temp_4_18 
                    #      alloc i32 temp_5_18 
                    #      alloc i32 temp_6_18 
                    #      alloc i32 temp_7_18 
                    #      alloc i32 temp_8_18 
                    #      alloc i32 temp_9_18 
                    #      alloc i32 temp_10_18 
                    #      alloc i32 temp_11_18 
                    #      alloc i32 temp_12_18 
                    #      alloc i32 temp_13_18 
                    #      alloc i32 temp_14_18 
                    #      alloc i32 temp_15_18 
                    #      alloc i32 temp_16_18 
                    #      alloc i32 temp_17_18 
                    #      alloc i32 temp_18_18 
                    #      alloc i32 temp_19_18 
                    #      alloc i32 temp_20_18 
                    #      alloc i32 temp_21_18 
                    #      alloc i32 temp_22_18 
                    #      alloc i32 temp_23_18 
                    #      alloc i32 temp_24_18 
                    #      alloc i32 temp_25_18 
                    #      alloc i32 temp_26_18 
                    #      alloc i32 temp_27_18 
                    #      alloc i32 temp_28_18 
                    #      alloc i32 temp_29_18 
                    #      alloc i32 temp_30_18 
                    #      alloc i32 temp_31_18 
                    #      alloc i32 t_18 
                    #      alloc i32 newline_18 
                    #      label L0_0: 
.L0_0:
                    #      new_var a0_18:i32 
                    #      new_var a1_18:i32 
                    #      new_var a2_18:i32 
                    #      new_var a3_18:i32 
                    #      new_var a4_18:i32 
                    #      new_var a5_18:i32 
                    #      new_var a6_18:i32 
                    #      new_var a7_18:i32 
                    #      new_var a8_18:i32 
                    #      new_var a9_18:i32 
                    #      new_var a10_18:i32 
                    #      new_var a11_18:i32 
                    #      new_var a12_18:i32 
                    #      new_var a13_18:i32 
                    #      new_var a14_18:i32 
                    #      new_var a15_18:i32 
                    #      new_var a16_18:i32 
                    #      new_var a17_18:i32 
                    #      new_var a18_18:i32 
                    #      new_var a19_18:i32 
                    #      new_var a20_18:i32 
                    #      new_var a21_18:i32 
                    #      new_var a22_18:i32 
                    #      new_var a23_18:i32 
                    #      new_var a24_18:i32 
                    #      new_var a25_18:i32 
                    #      new_var a26_18:i32 
                    #      new_var a27_18:i32 
                    #      new_var a28_18:i32 
                    #      new_var a29_18:i32 
                    #      new_var b_18:i32 
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,136(sp)
                    #      b_18 = i32 temp_0_18 
    mv      a1, a0
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.head_52: 
.while.head_52:
                    #      new_var temp_1_51:i1 
                    #      temp_1_51 = icmp i32 Eq b_18, 5_0 
    li      a2, 5
    xor     a3,a1,a2
    seqz    a3, a3
                    #      br i1 temp_1_51, label while.body_52, label while.exit_52 
    bnez    a3, .while.body_52
    j       .while.exit_52
                    #      label while.body_52: 
.while.body_52:
                    #      new_var temp_2_53:i32 
                    #      temp_2_53 = Add i32 b_18, 1_0 
    li      a2, 1
    add     a4,a1,a2
                    #      b_18 = i32 temp_2_53 
    mv      a1, a4
                    #      jump label: while.head_52 
    sb      a3,135(sp)
    sw      a4,128(sp)
    j       .while.head_52
                    #      label while.exit_52: 
.while.exit_52:
                    #      a0_18 = i32 0_0 
    li      a2, 0
                    #      new_var temp_3_18:i32 
                    #      temp_3_18 = Add i32 a0_18, 1_0 
    li      a4, 1
    add     a5,a2,a4
                    #      a1_18 = i32 temp_3_18 
    mv      a6, a5
                    #      new_var temp_4_18:i32 
                    #      temp_4_18 = Add i32 a1_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a6,a4
                    #      a2_18 = i32 temp_4_18 
    mv      s1, a7
                    #      new_var temp_5_18:i32 
                    #      temp_5_18 = Add i32 a2_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s2,s1,a4
                    #      a3_18 = i32 temp_5_18 
    mv      s3, s2
                    #      new_var temp_6_18:i32 
                    #      temp_6_18 = Add i32 a3_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s4,s3,a4
                    #      a4_18 = i32 temp_6_18 
    mv      s5, s4
                    #      new_var temp_7_18:i32 
                    #      temp_7_18 = Add i32 a4_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s6,s5,a4
                    #      a5_18 = i32 temp_7_18 
    mv      s7, s6
                    #      new_var temp_8_18:i32 
                    #      temp_8_18 = Add i32 a5_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s8,s7,a4
                    #      a6_18 = i32 temp_8_18 
    mv      s9, s8
                    #      new_var temp_9_18:i32 
                    #      temp_9_18 = Add i32 a6_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s10,s9,a4
                    #      a7_18 = i32 temp_9_18 
    mv      s11, s10
                    #      new_var temp_10_18:i32 
                    #      temp_10_18 = Add i32 a7_18, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    sw      a0,136(sp)
    add     a0,s11,a4
                    #      a8_18 = i32 temp_10_18 
    mv      a4, a0
                    #      new_var temp_11_18:i32 
                    #      temp_11_18 = Add i32 a8_18, 1_0 
    sw      a0,96(sp)
    li      a0, 1
    sw      a1,140(sp)
    add     a1,a4,a0
                    #      a9_18 = i32 temp_11_18 
    mv      a0, a1
                    #      new_var temp_12_18:i32 
                    #      temp_12_18 = Add i32 a9_18, 1_0 
    sw      a1,92(sp)
    li      a1, 1
    sw      a2,260(sp)
    add     a2,a0,a1
                    #      a10_18 = i32 temp_12_18 
    mv      a1, a2
                    #      new_var temp_13_18:i32 
                    #      temp_13_18 = Add i32 a10_18, 1_0 
    sw      a0,224(sp)
    li      a0, 1
    sw      a2,88(sp)
    add     a2,a1,a0
                    #      a11_18 = i32 temp_13_18 
    mv      a0, a2
                    #      new_var temp_14_18:i32 
                    #      temp_14_18 = Add i32 a11_18, 1_0 
    sw      a1,220(sp)
    li      a1, 1
    sw      a2,84(sp)
    add     a2,a0,a1
                    #      a12_18 = i32 temp_14_18 
    mv      a1, a2
                    #      new_var temp_15_18:i32 
                    #      temp_15_18 = Add i32 a12_18, 1_0 
    sw      a0,216(sp)
    li      a0, 1
    sw      a2,80(sp)
    add     a2,a1,a0
                    #      a13_18 = i32 temp_15_18 
    mv      a0, a2
                    #      new_var temp_16_18:i32 
                    #      temp_16_18 = Add i32 a13_18, 1_0 
    sw      a1,212(sp)
    li      a1, 1
    sw      a2,76(sp)
    add     a2,a0,a1
                    #      a14_18 = i32 temp_16_18 
    mv      a1, a2
                    #      new_var temp_17_18:i32 
                    #      temp_17_18 = Add i32 a14_18, 1_0 
    sw      a0,208(sp)
    li      a0, 1
    sw      a2,72(sp)
    add     a2,a1,a0
                    #      a15_18 = i32 temp_17_18 
    mv      a0, a2
                    #      new_var temp_18_18:i32 
                    #      temp_18_18 = Add i32 a15_18, 1_0 
    sw      a1,204(sp)
    li      a1, 1
    sw      a2,68(sp)
    add     a2,a0,a1
                    #      a16_18 = i32 temp_18_18 
    mv      a1, a2
                    #      new_var temp_19_18:i32 
                    #      temp_19_18 = Add i32 a16_18, 1_0 
    sw      a0,200(sp)
    li      a0, 1
    sw      a2,64(sp)
    add     a2,a1,a0
                    #      a17_18 = i32 temp_19_18 
    mv      a0, a2
                    #      new_var temp_20_18:i32 
                    #      temp_20_18 = Add i32 a17_18, 1_0 
    sw      a1,196(sp)
    li      a1, 1
    sw      a2,60(sp)
    add     a2,a0,a1
                    #      a18_18 = i32 temp_20_18 
    mv      a1, a2
                    #      new_var temp_21_18:i32 
                    #      temp_21_18 = Add i32 a18_18, 1_0 
    sw      a0,192(sp)
    li      a0, 1
    sw      a2,56(sp)
    add     a2,a1,a0
                    #      a19_18 = i32 temp_21_18 
    mv      a0, a2
                    #      new_var temp_22_18:i32 
                    #      temp_22_18 = Add i32 a19_18, 1_0 
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,52(sp)
    add     a2,a0,a1
                    #      a20_18 = i32 temp_22_18 
    mv      a1, a2
                    #      new_var temp_23_18:i32 
                    #      temp_23_18 = Add i32 a20_18, 1_0 
    sw      a0,184(sp)
    li      a0, 1
    sw      a2,48(sp)
    add     a2,a1,a0
                    #      a21_18 = i32 temp_23_18 
    mv      a0, a2
                    #      new_var temp_24_18:i32 
                    #      temp_24_18 = Add i32 a21_18, 1_0 
    sw      a1,180(sp)
    li      a1, 1
    sw      a2,44(sp)
    add     a2,a0,a1
                    #      a22_18 = i32 temp_24_18 
    mv      a1, a2
                    #      new_var temp_25_18:i32 
                    #      temp_25_18 = Add i32 a22_18, 1_0 
    sw      a0,176(sp)
    li      a0, 1
    sw      a2,40(sp)
    add     a2,a1,a0
                    #      a23_18 = i32 temp_25_18 
    mv      a0, a2
                    #      new_var temp_26_18:i32 
                    #      temp_26_18 = Add i32 a23_18, 1_0 
    sw      a1,172(sp)
    li      a1, 1
    sw      a2,36(sp)
    add     a2,a0,a1
                    #      a24_18 = i32 temp_26_18 
    mv      a1, a2
                    #      new_var temp_27_18:i32 
                    #      temp_27_18 = Add i32 a24_18, 1_0 
    sw      a0,168(sp)
    li      a0, 1
    sw      a2,32(sp)
    add     a2,a1,a0
                    #      a25_18 = i32 temp_27_18 
    mv      a0, a2
                    #      new_var temp_28_18:i32 
                    #      temp_28_18 = Add i32 a25_18, 1_0 
    sw      a1,164(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a2,a0,a1
                    #      a26_18 = i32 temp_28_18 
    mv      a1, a2
                    #      new_var temp_29_18:i32 
                    #      temp_29_18 = Add i32 a26_18, 1_0 
    sw      a0,160(sp)
    li      a0, 1
    sw      a2,24(sp)
    add     a2,a1,a0
                    #      a27_18 = i32 temp_29_18 
    mv      a0, a2
                    #      new_var temp_30_18:i32 
                    #      temp_30_18 = Add i32 a27_18, 1_0 
    sw      a1,156(sp)
    li      a1, 1
    sw      a2,20(sp)
    add     a2,a0,a1
                    #      a28_18 = i32 temp_30_18 
    mv      a1, a2
                    #      new_var temp_31_18:i32 
                    #      temp_31_18 = Add i32 a28_18, 1_0 
    sw      a0,152(sp)
    li      a0, 1
    sw      a2,16(sp)
    add     a2,a1,a0
                    #      a29_18 = i32 temp_31_18 
    mv      a0, a2
                    #      new_var t_18:i32 
                    #       Call void putint_0(a0_18) 
                    #saved register dumping to mem
    sw      s1,252(sp)
    sw      s2,116(sp)
    sw      s3,248(sp)
    sw      s4,112(sp)
    sw      s5,244(sp)
    sw      s6,108(sp)
    sw      s7,240(sp)
    sw      s8,104(sp)
    sw      s9,236(sp)
    sw      s10,100(sp)
    sw      s11,232(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,144(sp)
    lw      a0,260(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a1_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a6
                    #arg load ended
    call    putint
                    #       Call void putint_0(a2_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,252(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a3_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,248(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a4_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,244(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a5_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,240(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a6_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,236(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a7_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,232(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a8_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a4
                    #arg load ended
    call    putint
                    #       Call void putint_0(a9_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,224(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a10_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,220(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a11_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,216(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a12_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,212(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a13_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,208(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a14_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,204(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a15_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,200(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a16_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,196(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a17_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,192(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a18_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,188(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a19_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,184(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a20_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,180(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a21_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,176(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a22_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,172(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a23_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,168(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a24_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,164(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a25_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,160(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a26_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,156(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a27_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,152(sp)
                    #arg load ended
    call    putint
                    #       Call void putint_0(a28_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a1
                    #arg load ended
    call    putint
                    #       Call void putint_0(a29_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,144(sp)
                    #arg load ended
    call    putint
                    #      new_var newline_18:i32 
                    #      newline_18 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(newline_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
                    #arg load ended
    call    putch
                    #       Call void putint_0(b_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,140(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(newline_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,4(sp)
                    #arg load ended
    call    putch
                    #      ret a25_18 
    ld      ra,272(sp)
    ld      s0,264(sp)
    addi    sp,sp,280
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
