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
                    #      Define quick_read_0 [] -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
                    #mem layout:|ra_quick_read:8|s0_quick_read:8|temp_0:4|ch:4|x:4|f:4|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:4|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 temp_0_22 
                    #      alloc i32 ch_22 
                    #      alloc i32 x_22 
                    #      alloc i32 f_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i1 temp_2_25 
                    #      alloc i1 temp_3_25 
                    #      alloc i1 temp_4_28 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_32 
                    #      alloc i1 temp_7_32 
                    #      alloc i1 temp_8_32 
                    #      alloc i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i32 temp_11_34 
                    #      alloc i32 temp_12_34 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_37 
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_22 = i32 temp_0_22 
    mv      a1, a0
                    #      x_22 = i32 0_0 
    li      a2, 0
                    #      f_22 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Sgt 57_0, ch_22 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_25:i1 
                    #      temp_2_25 = icmp i32 Slt ch_22, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_25:i1 
                    #      temp_3_25 = Or i1 temp_2_25, temp_1_25 
                    #      br i1 temp_3_25, label while.body_26, label while.exit_26 
    bnez    s1, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_4_28:i1 
                    #      temp_4_28 = icmp i32 Eq ch_22, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_28, label branch_true_29, label branch_false_29 
    bnez    a6, .branch_true_29
    j       .branch_false_29
                    #      label branch_true_29: 
.branch_true_29:
                    #      f_22 = i32 1_0 
                    #      jump label: branch_false_29 
    j       .branch_false_29
                    #      label branch_false_29: 
.branch_false_29:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_22 = i32 temp_5_27 
    mv      a1, a0
                    #      jump label: while.head_26 
    sb      a5,39(sp)
    sb      a6,36(sp)
    sw      a0,32(sp)
    lw      a0,52(sp)
    sb      a7,38(sp)
    j       .while.head_26
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_6_32:i1 
                    #      temp_6_32 = icmp i32 Sle 57_0, ch_22 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_32:i1 
                    #      temp_7_32 = icmp i32 Sge ch_22, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_32:i1 
                    #      temp_8_32 = And i1 temp_7_32, temp_6_32 
    and     s4,s3,a6
                    #      br i1 temp_8_32, label while.body_33, label while.exit_33 
    bnez    s4, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = Sub i32 ch_22, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Mul i32 x_22, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 temp_10_34, temp_9_34 
    add     s7,s6,s2
                    #      x_22 = i32 temp_11_34 
    mv      a2, s7
                    #      new_var temp_12_34:i32 
                    #      temp_12_34 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
    sw      s2,24(sp)
    sb      s3,30(sp)
    sb      s4,29(sp)
    sw      s6,20(sp)
    sw      s7,16(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,12(sp)
                    #      ch_22 = i32 temp_12_34 
    mv      a1, a0
                    #      jump label: while.head_33 
    sb      a6,31(sp)
    sw      a0,12(sp)
    lw      a0,52(sp)
    lb      s1,37(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_22, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_38, label branch_false_38 
    bnez    s2, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var temp_14_37:i32 
                    #      temp_14_37 = Sub i32 0_0, x_22 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_37 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_38: 
.branch_false_38:
                    #      ret x_22 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L13_0: 
.L13_0:
                    #      Define add_edge_0 [from_41, To_41] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
                    #mem layout:|ra_add_edge:8|s0_add_edge:8|from:4|To:4|temp_15:4|none:4|temp_16:8|temp_17:4|none:4|temp_18:8|temp_19:4020|none:4|temp_20:8|temp_21:4|none:4|temp_22:8|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:4020|none:4|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|temp_35:4|temp_36:4|none:4
    li      a2, -8208
    li      a2, -8208
    add     sp,a2,sp
    li      a3, 8200
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 8192
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 8208
    li      a5, 8208
    add     s0,a5,sp
                    #      alloc i32 temp_15_43 
                    #      alloc ptr->i32 temp_16_43 
                    #      alloc i32 temp_17_43 
                    #      alloc ptr->i32 temp_18_43 
                    #      alloc Array:i32:[Some(1005_0)] temp_19_43 
                    #      alloc ptr->i32 temp_20_43 
                    #      alloc i32 temp_21_43 
                    #      alloc ptr->i32 temp_22_43 
                    #      alloc i32 temp_23_43 
                    #      alloc i32 temp_24_43 
                    #      alloc i32 temp_25_43 
                    #      alloc i32 temp_26_43 
                    #      alloc ptr->i32 temp_27_43 
                    #      alloc i32 temp_28_43 
                    #      alloc ptr->i32 temp_29_43 
                    #      alloc Array:i32:[Some(1005_0)] temp_30_43 
                    #      alloc ptr->i32 temp_31_43 
                    #      alloc i32 temp_32_43 
                    #      alloc ptr->i32 temp_33_43 
                    #      alloc i32 temp_34_43 
                    #      alloc i32 temp_35_43 
                    #      alloc i32 temp_36_43 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_15_43:i32 
                    #      temp_15_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    lw      a7,0(a6)
                    #      new_var temp_16_43:ptr->i32 
                    #      temp_16_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_15_43)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
                    #occupy reg s3 with to_0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
                    #      store To_41:i32 temp_16_43:ptr->i32 
    sd      a1,0(s1)
                    #      mu to_0:118 
                    #      to_0 = chi to_0:118 
                    #      new_var temp_17_43:i32 
                    #      temp_17_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s4, cnt
                    #occupy reg s4 with *cnt_0
    lw      s5,0(s4)
                    #      new_var temp_18_43:ptr->i32 
                    #      temp_18_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_17_43)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s7,s2,s5
                    #occupy reg s7 with next_0
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_19_43:Array:i32:[Some(1005_0)] 
                    #      temp_19_43 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      s8, head
                    #occupy reg s8 with *head_0
    lw      s9,0(s8)
                    #      new_var temp_20_43:ptr->i32 
                    #      new_var temp_21_43:i32 
                    #      temp_20_43 = getelementptr temp_19_43:Array:i32:[Some(1005_0)] [Some(from_41)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_21_43 = load temp_20_43:ptr->i32 
    lw      s11,0(s10)
                    #      store temp_21_43:i32 temp_18_43:ptr->i32 
    sd      s11,0(s6)
                    #      mu next_0:136 
                    #      next_0 = chi next_0:136 
                    #      new_var temp_22_43:ptr->i32 
                    #      temp_22_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(from_41)] 
    li      a2, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     a3,s2,a0
                    #occupy reg a3 with head_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_23_43:i32 
                    #      temp_23_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a4,0(a3)
                    #      store temp_23_43:i32 temp_22_43:ptr->i32 
    sd      a4,0(a2)
                    #      mu head_0:145 
                    #      head_0 = chi head_0:145 
                    #      new_var temp_24_43:i32 
                    #      temp_24_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a5,0(a3)
                    #      new_var temp_25_43:i32 
                    #      temp_25_43 = Add i32 temp_24_43, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     a3,a5,s2
                    #      store temp_25_43:i32 *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    sd      a3,0(a6)
                    #      new_var temp_26_43:i32 
                    #      temp_26_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    lw      s2,0(a6)
                    #      new_var temp_27_43:ptr->i32 
                    #      temp_27_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_26_43)] 
    li      a6, 0
    li      s3, 1
    mul     s4,s3,s2
                    #occupy reg s4 with to_0
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,a6
                    #      store from_41:i32 temp_27_43:ptr->i32 
    sd      a0,0(a6)
                    #      mu to_0:161 
                    #      to_0 = chi to_0:161 
                    #      new_var temp_28_43:i32 
                    #      temp_28_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s3, cnt
                    #occupy reg s3 with *cnt_0
    lw      s4,0(s3)
                    #      new_var temp_29_43:ptr->i32 
                    #      temp_29_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_28_43)] 
    li      s3, 0
    li      s7, 1
    mul     s8,s7,s4
                    #occupy reg s8 with next_0
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,s3
                    #      new_var temp_30_43:Array:i32:[Some(1005_0)] 
                    #      temp_30_43 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      s7, head
                    #occupy reg s7 with *head_0
    lw      s8,0(s7)
                    #      new_var temp_31_43:ptr->i32 
                    #      new_var temp_32_43:i32 
                    #      temp_31_43 = getelementptr temp_30_43:Array:i32:[Some(1005_0)] [Some(To_41)] 
    li      s7, 0
    li      a0, 8188
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_32_43 = load temp_31_43:ptr->i32 
    lw      a0,0(s7)
                    #      store temp_32_43:i32 temp_29_43:ptr->i32 
    sd      a0,0(s3)
                    #      mu next_0:179 
                    #      next_0 = chi next_0:179 
                    #      new_var temp_33_43:ptr->i32 
                    #      temp_33_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(To_41)] 
    sw      a0,28(sp)
    li      a0, 0
    li      a1, 8184
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4104
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a3, 4092
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with head_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_34_43:i32 
                    #      temp_34_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    lw      a3,0(a1)
                    #      store temp_34_43:i32 temp_33_43:ptr->i32 
    sd      a3,0(a0)
                    #      mu head_0:188 
                    #      head_0 = chi head_0:188 
                    #      new_var temp_35_43:i32 
                    #      temp_35_43 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    sd      a0,16(sp)
    lw      a0,0(a1)
                    #      new_var temp_36_43:i32 
                    #      temp_36_43 = Add i32 temp_35_43, 1_0 
    li      a1, 1
    li      a2, 8184
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a0,a1
                    #      store temp_36_43:i32 *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a1, cnt
                    #occupy reg a1 with *cnt_0
    sd      a2,0(a1)
                    #      Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
                    #mem layout:|ra_init:8|s0_init:8|i:4|temp_37:1|none:3|temp_38:8|temp_39:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 i_53 
                    #      alloc i1 temp_37_55 
                    #      alloc ptr->i32 temp_38_57 
                    #      alloc i32 temp_39_57 
                    #      label L9_0: 
.L9_0:
                    #      i_53 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_56 
    j       .while.head_56
                    #      label while.head_56: 
.while.head_56:
                    #      new_var temp_37_55:i1 
                    #      temp_37_55 = icmp i32 Slt i_53, 1005_0 
    li      a1, 1005
    slt     a2,a0,a1
                    #      br i1 temp_37_55, label while.body_56, label while.exit_56 
    bnez    a2, .while.body_56
    j       .while.exit_56
                    #      label while.body_56: 
.while.body_56:
                    #      new_var temp_38_57:ptr->i32 
                    #      temp_38_57 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(i_53)] 
    li      a1, 0
    li      a3, 1
    mul     a4,a3,a0
                    #occupy reg a4 with head_0
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a1
                    #      store -1_0:i32 temp_38_57:ptr->i32 
    li      a5, -1
    sd      a5,0(a1)
                    #      mu head_0:211 
                    #      head_0 = chi head_0:211 
                    #      new_var temp_39_57:i32 
                    #      temp_39_57 = Add i32 i_53, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a6,a0,a3
                    #      i_53 = i32 temp_39_57 
    mv      a0, a6
                    #      jump label: while.head_56 
    sb      a2,19(sp)
    sw      a6,4(sp)
    sd      a1,8(sp)
    j       .while.head_56
                    #      label while.exit_56: 
.while.exit_56:
                    #      Define clear_0 [] -> clear_ret_0 
    .globl clear
    .type clear,@function
clear:
                    #mem layout:|ra_clear:8|s0_clear:8|i:4|temp_40:4|temp_41:1|none:7|temp_42:8|temp_43:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 i_61 
                    #      alloc i32 temp_40_63 
                    #      alloc i1 temp_41_63 
                    #      alloc ptr->i32 temp_42_65 
                    #      alloc i32 temp_43_65 
                    #      label L8_0: 
.L8_0:
                    #      i_61 = i32 1_0 
    li      a0, 1
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_40_63:i32 
                    #      temp_40_63 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_41_63:i1 
                    #      temp_41_63 = icmp i32 Sle i_61, temp_40_63 
    slt     a3,a2,a0
    xori    a3,a3,1
                    #      br i1 temp_41_63, label while.body_64, label while.exit_64 
    bnez    a3, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      new_var temp_42_65:ptr->i32 
                    #      temp_42_65 = getelementptr vis_0:Array:i32:[Some(1005_0)] [Some(i_61)] 
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
                    #occupy reg a5 with vis_0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,a1
                    #      store 0_0:i32 temp_42_65:ptr->i32 
    li      a6, 0
    sd      a6,0(a1)
                    #      mu vis_0:234 
                    #      vis_0 = chi vis_0:234 
                    #      new_var temp_43_65:i32 
                    #      temp_43_65 = Add i32 i_61, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a0,a4
                    #      i_61 = i32 temp_43_65 
    mv      a0, a7
                    #      jump label: while.head_64 
    sw      a7,4(sp)
    sd      a1,8(sp)
    sw      a2,24(sp)
    sb      a3,23(sp)
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      Define same_0 [x_68, tar_68] -> same_ret_0 
    .globl same
    .type same,@function
same:
                    #mem layout:|ra_same:8|s0_same:8|x:4|tar:4|temp_44:8|temp_45:1|none:3|temp_46:4020|temp_47:8|temp_48:4|i:4|temp_49:1|none:3|temp_50:20020|temp_51:8|temp_52:4|y:4|temp_53:4|temp_54:4020|temp_55:8|temp_56:4|temp_57:1|temp_58:1|temp_59:1|temp_60:1|temp_61:20020|none:4|temp_62:8|temp_63:4|none:4
    li      a2, -48192
    li      a2, -48192
    add     sp,a2,sp
    li      a3, 48184
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 48176
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 48192
    li      a5, 48192
    add     s0,a5,sp
                    #      alloc ptr->i32 temp_44_70 
                    #      alloc i1 temp_45_72 
                    #      alloc Array:i32:[Some(1005_0)] temp_46_70 
                    #      alloc ptr->i32 temp_47_70 
                    #      alloc i32 temp_48_70 
                    #      alloc i32 i_70 
                    #      alloc i1 temp_49_76 
                    #      alloc Array:i32:[Some(5005_0)] temp_50_78 
                    #      alloc ptr->i32 temp_51_78 
                    #      alloc i32 temp_52_78 
                    #      alloc i32 y_78 
                    #      alloc i32 temp_53_80 
                    #      alloc Array:i32:[Some(1005_0)] temp_54_80 
                    #      alloc ptr->i32 temp_55_80 
                    #      alloc i32 temp_56_80 
                    #      alloc i1 temp_57_80 
                    #      alloc i1 temp_58_80 
                    #      alloc i1 temp_59_80 
                    #      alloc i1 temp_60_80 
                    #      alloc Array:i32:[Some(5005_0)] temp_61_78 
                    #      alloc ptr->i32 temp_62_78 
                    #      alloc i32 temp_63_78 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_44_70:ptr->i32 
                    #      temp_44_70 = getelementptr vis_0:Array:i32:[Some(1005_0)] [Some(x_68)] 
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a0
                    #occupy reg s1 with vis_0
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,a6
                    #      store 1_0:i32 temp_44_70:ptr->i32 
                    #found literal reg Some(a7) already exist with 1_0
    sd      a7,0(a6)
                    #      mu vis_0:244 
                    #      vis_0 = chi vis_0:244 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_45_72:i1 
                    #      temp_45_72 = icmp i32 Eq x_68, tar_68 
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_45_72, label branch_true_73, label branch_false_73 
    bnez    a2, .branch_true_73
    j       .branch_false_73
                    #      label branch_true_73: 
.branch_true_73:
                    #      ret 1_0 
    li      a3, 48184
    add     a3,sp,a3
    ld      ra,0(a3)
    li      a4, 48176
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a0, 48172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a5, 48192
    li      a5, 48192
    add     sp,a5,sp
    ret
                    #      label branch_false_73: 
.branch_false_73:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_46_70:Array:i32:[Some(1005_0)] 
                    #      temp_46_70 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      a3, head
                    #occupy reg a3 with *head_0
    lw      a4,0(a3)
                    #      new_var temp_47_70:ptr->i32 
                    #      new_var temp_48_70:i32 
                    #      temp_47_70 = getelementptr temp_46_70:Array:i32:[Some(1005_0)] [Some(x_68)] 
    li      a5, 0
    li      a7, 1
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_48_70 = load temp_47_70:ptr->i32 
    lw      s1,0(a5)
                    #      i_70 = i32 temp_48_70 
    mv      s2, s1
                    #      jump label: while.head_77 
    j       .while.head_77
                    #      label while.head_77: 
.while.head_77:
                    #      new_var temp_49_76:i1 
                    #      temp_49_76 = icmp i32 Ne i_70, -1_0 
    li      a3, -1
    xor     a7,s2,a3
    snez    a7, a7
                    #      br i1 temp_49_76, label while.body_77, label while.exit_77 
    bnez    a7, .while.body_77
    j       .while.exit_77
                    #      label while.body_77: 
.while.body_77:
                    #      new_var temp_50_78:Array:i32:[Some(5005_0)] 
                    #      temp_50_78 = load *to_0:ptr->i32 
                    #   load label to as ptr to reg
    la      a3, to
                    #occupy reg a3 with *to_0
    lw      s3,0(a3)
                    #      new_var temp_51_78:ptr->i32 
                    #      new_var temp_52_78:i32 
                    #      temp_51_78 = getelementptr temp_50_78:Array:i32:[Some(5005_0)] [Some(i_70)] 
    li      s4, 0
    li      s5, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_52_78 = load temp_51_78:ptr->i32 
    lw      s6,0(s4)
                    #      y_78 = i32 temp_52_78 
    mv      s7, s6
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_53_80:i32 
                    #      temp_53_80 =  Call i32 same_0(y_78, tar_68) 
                    #saved register dumping to mem
    li      a3, 44124
    add     a3,sp,a3
    sw      s1,0(a3)
    li      s1, 44120
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 44112
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 24088
    add     s3,sp,s3
    sd      s4,0(s3)
    li      s4, 24084
    add     s4,sp,s4
    sw      s6,0(s4)
    li      s5, 24080
    add     s5,sp,s5
    sw      s7,0(s5)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 48172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s6, 24080
    add     s6,sp,s6
    lw      a0,0(s6)
    li      a1, 48168
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s7, 48168
    add     s7,sp,s7
    lw      a1,0(s7)
                    #arg load ended
    call    same
    li      a0, 24076
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_54_80:Array:i32:[Some(1005_0)] 
                    #      temp_54_80 = load *vis_0:ptr->i32 
                    #   load label vis as ptr to reg
    la      a1, vis
                    #occupy reg a1 with *vis_0
    lw      s8,0(a1)
                    #      new_var temp_55_80:ptr->i32 
                    #      new_var temp_56_80:i32 
                    #      temp_55_80 = getelementptr temp_54_80:Array:i32:[Some(1005_0)] [Some(y_78)] 
    li      s9, 0
    li      s10, 1
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_56_80 = load temp_55_80:ptr->i32 
    lw      s11,0(s9)
                    #      new_var temp_57_80:i1 
                    #      temp_57_80 = icmp i1 Ne temp_56_80, 0_0 
    li      a1, 0
    xor     a3,s11,a1
    snez    a3, a3
                    #      new_var temp_58_80:i1 
                    #      temp_58_80 = xor i1 temp_57_80, true 
    seqz    a1, a3
                    #      new_var temp_59_80:i1 
                    #      temp_59_80 = icmp i32 Ne temp_53_80, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    snez    s2, s2
                    #      new_var temp_60_80:i1 
                    #      temp_60_80 = And i1 temp_58_80, temp_59_80 
    and     s1,a1,s2
                    #      br i1 temp_60_80, label branch_true_81, label branch_false_81 
    bnez    s1, .branch_true_81
    j       .branch_false_81
                    #      label branch_true_81: 
.branch_true_81:
                    #      ret 1_0 
    li      s3, 48184
    add     s3,sp,s3
    ld      ra,0(s3)
    li      s4, 48176
    add     s4,sp,s4
    ld      s0,0(s4)
    li      a0, 24076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      s5, 48192
    li      s5, 48192
    add     sp,s5,sp
    ret
                    #      label branch_false_81: 
.branch_false_81:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_61_78:Array:i32:[Some(5005_0)] 
                    #      temp_61_78 = load *next_0:ptr->i32 
                    #   load label next as ptr to reg
    la      s3, next
                    #occupy reg s3 with *next_0
    lw      s4,0(s3)
                    #      new_var temp_62_78:ptr->i32 
                    #      new_var temp_63_78:i32 
                    #      temp_62_78 = getelementptr temp_61_78:Array:i32:[Some(5005_0)] [Some(i_70)] 
    li      s5, 0
    li      s10, 1
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_63_78 = load temp_62_78:ptr->i32 
    lw      s10,0(s5)
                    #      i_70 = i32 temp_63_78 
    mv      s3, s10
                    #      jump label: while.head_77 
    li      s1, 20040
    add     s1,sp,s1
    sb      s1,0(s1)
    li      a0, 24076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 44124
    add     a0,sp,a0
    lw      s1,0(a0)
    li      s11, 20044
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s6, 24080
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a0, 44124
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 20042
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 48172
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s3, 44120
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a7, 44119
    add     a7,sp,a7
    sb      a7,0(a7)
    li      a3, 20043
    add     a3,sp,a3
    sb      a3,0(a3)
    li      s8, 24072
    add     s8,sp,s8
    sw      s8,0(s8)
    sw      s10,4(sp)
    li      s7, 48168
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s4, 20036
    add     s4,sp,s4
    sw      s4,0(s4)
    sd      s5,8(sp)
    li      s2, 20041
    add     s2,sp,s2
    sb      s2,0(s2)
    li      a1, 48172
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 44120
    add     a1,sp,a1
    lw      s2,0(a1)
    li      a1, 44120
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 48159
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 48168
    add     a2,sp,a2
    lw      a1,0(a2)
    li      s9, 20048
    add     s9,sp,s9
    sd      s9,0(s9)
    j       .while.head_77
                    #      label while.exit_77: 
.while.exit_77:
                    #      ret 0_0 
    li      a3, 48184
    add     a3,sp,a3
    ld      ra,0(a3)
    li      s3, 48176
    add     s3,sp,s3
    ld      s0,0(s3)
    li      a0, 48172
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      s4, 48192
    li      s4, 48192
    add     sp,s4,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_64:4|temp_65:4|temp_66:4|temp_67:1|none:3|temp_68:4|ch:4|temp_69:1|temp_70:1|temp_71:1|none:1|temp_72:4|temp_73:1|none:3|temp_74:4|x:4|temp_75:4|y:4|temp_76:4|temp_77:4|temp_78:4|temp_79:4|x:4|temp_80:4|y:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_64_86 
                    #      alloc i32 temp_65_86 
                    #      alloc i32 temp_66_90 
                    #      alloc i1 temp_67_2111 
                    #      alloc i32 temp_68_92 
                    #      alloc i32 ch_92 
                    #      alloc i1 temp_69_94 
                    #      alloc i1 temp_70_94 
                    #      alloc i1 temp_71_94 
                    #      alloc i32 temp_72_96 
                    #      alloc i1 temp_73_98 
                    #      alloc i32 temp_74_100 
                    #      alloc i32 x_100 
                    #      alloc i32 temp_75_100 
                    #      alloc i32 y_100 
                    #      alloc i32 temp_76_100 
                    #      alloc i32 temp_77_92 
                    #      alloc i32 temp_78_92 
                    #      alloc i32 temp_79_105 
                    #      alloc i32 x_105 
                    #      alloc i32 temp_80_105 
                    #      alloc i32 y_105 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_64_86:i32 
                    #      temp_64_86 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
                    #      store temp_64_86:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    sd      a0,0(a1)
                    #      new_var temp_65_86:i32 
                    #      temp_65_86 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,72(sp)
                    #      store temp_65_86:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a2, m
                    #occupy reg a2 with *m_0
    sd      a0,0(a2)
                    #       Call void init_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    init
                    #      jump label: while.head_91 
    j       .while.head_91
                    #      label while.head_91: 
.while.head_91:
                    #      new_var temp_66_90:i32 
                    #      temp_66_90 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a1, m
                    #occupy reg a1 with *m_0
    lw      a2,0(a1)
                    #      new_var temp_67_2111:i1 
                    #      temp_67_2111 = icmp i32 Ne temp_66_90, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_67_2111, label while.body_91, label while.exit_91 
    bnez    a4, .while.body_91
    j       .while.exit_91
                    #      label while.body_91: 
.while.body_91:
                    #      new_var temp_68_92:i32 
                    #      temp_68_92 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,72(sp)
    sw      a0,60(sp)
                    #      ch_92 = i32 temp_68_92 
    mv      a1, a0
                    #      jump label: while.head_95 
    j       .while.head_95
                    #      label while.head_95: 
.while.head_95:
                    #      new_var temp_69_94:i1 
                    #      temp_69_94 = icmp i32 Ne 85_0, ch_92 
    li      a3, 85
    xor     a5,a3,a1
    snez    a5, a5
                    #      new_var temp_70_94:i1 
                    #      temp_70_94 = icmp i32 Ne ch_92, 81_0 
    li      a6, 81
    xor     a7,a1,a6
    snez    a7, a7
                    #      new_var temp_71_94:i1 
                    #      temp_71_94 = And i1 temp_70_94, temp_69_94 
    and     s1,a7,a5
                    #      br i1 temp_71_94, label while.body_95, label while.exit_95 
    bnez    s1, .while.body_95
    j       .while.exit_95
                    #      label while.body_95: 
.while.body_95:
                    #      new_var temp_72_96:i32 
                    #      temp_72_96 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,60(sp)
    sw      a0,48(sp)
                    #      ch_92 = i32 temp_72_96 
    mv      a1, a0
                    #      jump label: while.head_95 
    sb      a7,54(sp)
    sb      a5,55(sp)
    sw      a0,48(sp)
    lw      a0,60(sp)
    j       .while.head_95
                    #      label while.exit_95: 
.while.exit_95:
                    #      new_var temp_73_98:i1 
                    #      temp_73_98 = icmp i32 Eq ch_92, 81_0 
    li      a3, 81
    xor     a6,a1,a3
    seqz    a6, a6
                    #      br i1 temp_73_98, label branch_true_99, label branch_false_99 
    bnez    a6, .branch_true_99
    j       .branch_false_99
                    #      label branch_true_99: 
.branch_true_99:
                    #      new_var temp_74_100:i32 
                    #      temp_74_100 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,60(sp)
    sw      a0,40(sp)
                    #      x_100 = i32 temp_74_100 
    mv      a3, a0
                    #      new_var temp_75_100:i32 
                    #      temp_75_100 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,40(sp)
    sw      a0,32(sp)
                    #      y_100 = i32 temp_75_100 
    mv      s1, a0
                    #       Call void clear_0() 
                    #saved register dumping to mem
    sw      s1,28(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    clear
                    #      new_var temp_76_100:i32 
                    #      temp_76_100 =  Call i32 same_0(x_100, y_100) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
    mv      a0, a3
    sw      a1,56(sp)
    lw      a1,28(sp)
                    #arg load ended
    call    same
    sw      a0,24(sp)
                    #       Call void putint_0(temp_76_100) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    lw      a0,24(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_99: 
.branch_false_99:
                    #      new_var temp_79_105:i32 
                    #      temp_79_105 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,53(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,60(sp)
    sw      a0,12(sp)
                    #      x_105 = i32 temp_79_105 
    mv      a3, a0
                    #      new_var temp_80_105:i32 
                    #      temp_80_105 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,12(sp)
    sw      a0,4(sp)
                    #      y_105 = i32 temp_80_105 
    mv      s1, a0
                    #       Call void add_edge_0(x_105, y_105) 
                    #saved register dumping to mem
    sw      s1,0(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    mv      a0, a3
    sw      a1,56(sp)
    lw      a1,0(sp)
                    #arg load ended
    call    add_edge
                    #      jump label: L1_0 
    sw      a3,8(sp)
    lw      a3,36(sp)
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_77_92:i32 
                    #      temp_77_92 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_78_92:i32 
                    #      temp_78_92 = Sub i32 temp_77_92, 1_0 
    li      s1, 1
    sub     s2,a1,s1
                    #      store temp_78_92:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      s3, m
                    #occupy reg s3 with *m_0
    sd      s2,0(s3)
                    #      jump label: while.head_91 
    sb      a7,54(sp)
    sb      a6,47(sp)
    sw      a2,68(sp)
    sb      a5,55(sp)
    sw      s2,16(sp)
    sw      a3,36(sp)
    sw      a1,20(sp)
    sb      a4,67(sp)
    lw      a0,72(sp)
    j       .while.head_91
                    #      label while.exit_91: 
.while.exit_91:
                    #      ret 0_0 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,72(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl vis
                    #      global Array:i32:[Some(1005_0)] vis_0 
    .type vis,@object
vis:
    .zero 4020
    .align 4
    .globl cnt
                    #      global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
                    #      global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
                    #      global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
                    #      global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
                    #      global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
                    #      global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
