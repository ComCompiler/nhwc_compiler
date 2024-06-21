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
                    #      alloc i32 temp_0_20 
                    #      alloc i32 ch_20 
                    #      alloc i32 x_20 
                    #      alloc i32 f_20 
                    #      alloc i1 temp_1_23 
                    #      alloc i1 temp_2_23 
                    #      alloc i1 temp_3_23 
                    #      alloc i1 temp_4_26 
                    #      alloc i32 temp_5_25 
                    #      alloc i1 temp_6_30 
                    #      alloc i1 temp_7_30 
                    #      alloc i1 temp_8_30 
                    #      alloc i32 temp_9_32 
                    #      alloc i32 temp_10_32 
                    #      alloc i32 temp_11_32 
                    #      alloc i32 temp_12_32 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_35 
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_20 = i32 temp_0_20 
    mv      a1, a0
                    #      x_20 = i32 0_0 
    li      a2, 0
                    #      f_20 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_1_23:i1 
                    #      temp_1_23 = icmp i32 Sgt 57_0, ch_20 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_23:i1 
                    #      temp_2_23 = icmp i32 Slt ch_20, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_23:i1 
                    #      temp_3_23 = Or i1 temp_2_23, temp_1_23 
                    #      br i1 temp_3_23, label while.body_24, label while.exit_24 
    bnez    s1, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      new_var temp_4_26:i1 
                    #      temp_4_26 = icmp i32 Eq ch_20, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_26, label branch_true_27, label branch_false_27 
    bnez    a6, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #      f_20 = i32 1_0 
                    #      jump label: branch_false_27 
    j       .branch_false_27
                    #      label branch_false_27: 
.branch_false_27:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_5_25:i32 
                    #      temp_5_25 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_20 = i32 temp_5_25 
    mv      a1, a0
                    #      jump label: while.head_24 
    sb      a6,36(sp)
    sb      a5,39(sp)
    sb      a7,38(sp)
    sw      a0,32(sp)
    lw      a0,52(sp)
    j       .while.head_24
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_6_30:i1 
                    #      temp_6_30 = icmp i32 Sle 57_0, ch_20 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_30:i1 
                    #      temp_7_30 = icmp i32 Sge ch_20, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_30:i1 
                    #      temp_8_30 = And i1 temp_7_30, temp_6_30 
    and     s4,s3,a6
                    #      br i1 temp_8_30, label while.body_31, label while.exit_31 
    bnez    s4, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_9_32:i32 
                    #      temp_9_32 = Sub i32 ch_20, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_32:i32 
                    #      temp_10_32 = Mul i32 x_20, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_32:i32 
                    #      temp_11_32 = Add i32 temp_10_32, temp_9_32 
    add     s7,s6,s2
                    #      x_20 = i32 temp_11_32 
    mv      a2, s7
                    #      new_var temp_12_32:i32 
                    #      temp_12_32 =  Call i32 getch_0() 
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
                    #      ch_20 = i32 temp_12_32 
    mv      a1, a0
                    #      jump label: while.head_31 
    sb      a6,31(sp)
    lb      s1,37(sp)
    sw      a0,12(sp)
    lw      a0,52(sp)
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_20, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_36, label branch_false_36 
    bnez    s2, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_14_35:i32 
                    #      temp_14_35 = Sub i32 0_0, x_20 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_35 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_36: 
.branch_false_36:
                    #      ret x_20 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L11_0: 
.L11_0:
                    #      Define add_edge_0 [from_39, To_39] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
                    #mem layout:|ra_add_edge:8|s0_add_edge:8|from:4|To:4|temp_15:4|none:4|temp_16:8|temp_17:4|none:4|temp_18:8|temp_19:40020|none:4|temp_20:8|temp_21:4|none:4|temp_22:8|temp_23:4|temp_24:4|temp_25:4|none:4|temp_26:8
    li      a2, -40128
    li      a2, -40128
    add     sp,a2,sp
    li      a3, 40120
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 40112
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 40128
    li      a5, 40128
    add     s0,a5,sp
                    #      alloc i32 temp_15_41 
                    #      alloc ptr->i32 temp_16_41 
                    #      alloc i32 temp_17_41 
                    #      alloc ptr->i32 temp_18_41 
                    #      alloc Array:i32:[Some(10005_0)] temp_19_41 
                    #      alloc ptr->i32 temp_20_41 
                    #      alloc i32 temp_21_41 
                    #      alloc ptr->i32 temp_22_41 
                    #      alloc i32 temp_23_41 
                    #      alloc i32 temp_24_41 
                    #      alloc i32 temp_25_41 
                    #      alloc ptr->i32 temp_26_41 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_15_41:i32 
                    #      temp_15_41 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    lw      a7,0(a6)
                    #      new_var temp_16_41:ptr->i32 
                    #      temp_16_41 = getelementptr to_0:Array:i32:[Some(10005_0)] [Some(temp_15_41)] 
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a7
                    #occupy reg s3 with to_0
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,s1
                    #      store To_39:i32 temp_16_41:ptr->i32 
    sd      a1,0(s1)
                    #      mu to_0:118 
                    #      to_0 = chi to_0:118 
                    #      new_var temp_17_41:i32 
                    #      temp_17_41 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s4, cnt
                    #occupy reg s4 with *cnt_0
    lw      s5,0(s4)
                    #      new_var temp_18_41:ptr->i32 
                    #      temp_18_41 = getelementptr next_0:Array:i32:[Some(10005_0)] [Some(temp_17_41)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s7,s2,s5
                    #occupy reg s7 with next_0
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_19_41:Array:i32:[Some(10005_0)] 
                    #      temp_19_41 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      s8, head
                    #occupy reg s8 with *head_0
    lw      s9,0(s8)
                    #      new_var temp_20_41:ptr->i32 
                    #      new_var temp_21_41:i32 
                    #      temp_20_41 = getelementptr temp_19_41:Array:i32:[Some(10005_0)] [Some(from_39)] 
    li      s10, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_21_41 = load temp_20_41:ptr->i32 
    lw      s11,0(s10)
                    #      store temp_21_41:i32 temp_18_41:ptr->i32 
    sd      s11,0(s6)
                    #      mu next_0:136 
                    #      next_0 = chi next_0:136 
                    #      new_var temp_22_41:ptr->i32 
                    #      temp_22_41 = getelementptr head_0:Array:i32:[Some(10005_0)] [Some(from_39)] 
    li      a2, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     a3,s2,a0
                    #occupy reg a3 with head_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_23_41:i32 
                    #      temp_23_41 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a4,0(a3)
                    #      store temp_23_41:i32 temp_22_41:ptr->i32 
    sd      a4,0(a2)
                    #      mu head_0:145 
                    #      head_0 = chi head_0:145 
                    #      new_var temp_24_41:i32 
                    #      temp_24_41 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a3, cnt
                    #occupy reg a3 with *cnt_0
    lw      a5,0(a3)
                    #      new_var temp_25_41:i32 
                    #      temp_25_41 = Add i32 temp_24_41, 1_0 
                    #found literal reg Some(s2) already exist with 1_0
    add     a3,a5,s2
                    #      store temp_25_41:i32 *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a6, cnt
                    #occupy reg a6 with *cnt_0
    sd      a3,0(a6)
                    #      new_var temp_26_41:ptr->i32 
                    #      temp_26_41 = getelementptr f_0:Array:i32:[Some(10005_0), Some(20_0)] [Some(To_39), Some(0_0)] 
    li      a6, 0
    li      s2, 20
    mul     s3,s2,a1
                    #occupy reg s3 with f_0
    add     a6,a6,s3
    li      s2, 1
    li      s3, 0
    mul     s4,s2,s3
                    #occupy reg s4 with f_0
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,a6
                    #      store from_39:i32 temp_26_41:ptr->i32 
    sd      a0,0(a6)
                    #      mu f_0:158 
                    #      f_0 = chi f_0:158 
                    #      Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
                    #mem layout:|ra_init:8|s0_init:8|temp_27:8|i:4|temp_28:4|temp_29:1|none:7|temp_30:8|temp_31:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc ptr->i32 temp_27_48 
                    #      alloc i32 i_48 
                    #      alloc i32 temp_28_51 
                    #      alloc i1 temp_29_51 
                    #      alloc ptr->i32 temp_30_53 
                    #      alloc i32 temp_31_53 
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_27_48:ptr->i32 
                    #      temp_27_48 = getelementptr dep_0:Array:i32:[Some(10005_0)] [Some(0_0)] 
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
                    #occupy reg a3 with dep_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 0x3f3f3f3f_0:i32 temp_27_48:ptr->i32 
    li      a4, 0x3f3f3f3f
    sd      a4,0(a0)
                    #      mu dep_0:164 
                    #      dep_0 = chi dep_0:164 
                    #      i_48 = i32 1_0 
    li      a5, 1
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.head_52: 
.while.head_52:
                    #      new_var temp_28_51:i32 
                    #      temp_28_51 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_29_51:i1 
                    #      temp_29_51 = icmp i32 Sle i_48, temp_28_51 
    slt     a3,a2,a5
    xori    a3,a3,1
                    #      br i1 temp_29_51, label while.body_52, label while.exit_52 
    bnez    a3, .while.body_52
    j       .while.exit_52
                    #      label while.body_52: 
.while.body_52:
                    #      new_var temp_30_53:ptr->i32 
                    #      temp_30_53 = getelementptr head_0:Array:i32:[Some(10005_0)] [Some(i_48)] 
    li      a1, 0
    li      a4, 1
    mul     a6,a4,a5
                    #occupy reg a6 with head_0
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,a1
                    #      store -1_0:i32 temp_30_53:ptr->i32 
    li      a7, -1
    sd      a7,0(a1)
                    #      mu head_0:183 
                    #      head_0 = chi head_0:183 
                    #      new_var temp_31_53:i32 
                    #      temp_31_53 = Add i32 i_48, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s1,a5,a4
                    #      i_48 = i32 temp_31_53 
    mv      a5, s1
                    #      jump label: while.head_52 
    sd      a1,8(sp)
    sw      a2,24(sp)
    sb      a3,23(sp)
    sw      s1,4(sp)
    j       .while.head_52
                    #      label while.exit_52: 
.while.exit_52:
                    #      Define tree_0 [x_56, d_56] -> tree_ret_0 
    .globl tree
    .type tree,@function
tree:
                    #mem layout:|ra_tree:8|s0_tree:8|x:4|d:4|temp_32:8|i:4|temp_33:800400|none:4|temp_34:8|temp_35:4|temp_36:1|none:3|temp_37:4|none:4|temp_38:8|temp_39:800400|temp_40:8|temp_41:4|temp_42:800400|none:4|temp_43:8|temp_44:4|temp_45:4|temp_46:40020|none:4|temp_47:8|temp_48:4|temp_49:1|none:3|temp_50:40020|none:4|temp_51:8|temp_52:4|y:4|temp_53:4|temp_54:40020|temp_55:8|temp_56:4|none:4
    li      a2, -2521424
    li      a2, -2521424
    add     sp,a2,sp
    li      a3, 2521416
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 2521408
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 2521424
    li      a5, 2521424
    add     s0,a5,sp
                    #      alloc ptr->i32 temp_32_58 
                    #      alloc i32 i_58 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_33_61 
                    #      alloc ptr->i32 temp_34_61 
                    #      alloc i32 temp_35_61 
                    #      alloc i1 temp_36_1374 
                    #      alloc i32 temp_37_63 
                    #      alloc ptr->i32 temp_38_63 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_39_63 
                    #      alloc ptr->i32 temp_40_63 
                    #      alloc i32 temp_41_63 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_42_63 
                    #      alloc ptr->i32 temp_43_63 
                    #      alloc i32 temp_44_63 
                    #      alloc i32 temp_45_63 
                    #      alloc Array:i32:[Some(10005_0)] temp_46_58 
                    #      alloc ptr->i32 temp_47_58 
                    #      alloc i32 temp_48_58 
                    #      alloc i1 temp_49_67 
                    #      alloc Array:i32:[Some(10005_0)] temp_50_69 
                    #      alloc ptr->i32 temp_51_69 
                    #      alloc i32 temp_52_69 
                    #      alloc i32 y_69 
                    #      alloc i32 temp_53_69 
                    #      alloc Array:i32:[Some(10005_0)] temp_54_69 
                    #      alloc ptr->i32 temp_55_69 
                    #      alloc i32 temp_56_69 
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_32_58:ptr->i32 
                    #      temp_32_58 = getelementptr dep_0:Array:i32:[Some(10005_0)] [Some(x_56)] 
    li      a6, 0
    li      a7, 1
    mul     s1,a7,a0
                    #occupy reg s1 with dep_0
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,a6
                    #      store d_56:i32 temp_32_58:ptr->i32 
    sd      a1,0(a6)
                    #      mu dep_0:193 
                    #      dep_0 = chi dep_0:193 
                    #      i_58 = i32 0_0 
    li      s2, 0
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_33_61:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_33_61 = load *f_0:ptr->Array:i32:[Some(20_0)] 
                    #   load label f as ptr to reg
    la      a2, f
                    #occupy reg a2 with *f_0
    lw      a3,0(a2)
                    #      new_var temp_34_61:ptr->i32 
                    #      new_var temp_35_61:i32 
                    #      temp_34_61 = getelementptr temp_33_61:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(i_58)] 
    li      a4, 0
    li      a5, 20
    add     a4,a4,a3
    li      a7, 1
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_35_61 = load temp_34_61:ptr->i32 
    lw      s1,0(a4)
                    #      new_var temp_36_1374:i1 
                    #      temp_36_1374 = icmp i32 Ne temp_35_61, 0_0 
    li      s3, 0
    xor     s4,s1,s3
    snez    s4, s4
                    #      br i1 temp_36_1374, label while.body_62, label while.exit_62 
    bnez    s4, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_37_63:i32 
                    #      temp_37_63 = Add i32 i_58, 1_0 
    li      a2, 1
    add     a5,s2,a2
                    #      new_var temp_38_63:ptr->i32 
                    #      temp_38_63 = getelementptr f_0:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(temp_37_63)] 
    li      a7, 0
    li      s3, 20
    mul     s5,s3,a0
                    #occupy reg s5 with f_0
    add     a7,a7,s5
                    #found literal reg Some(a2) already exist with 1_0
    mul     s6,a2,a5
                    #occupy reg s6 with f_0
    add     a7,a7,s6
    slli a7,a7,2
    add     a7,a7,a7
                    #      new_var temp_39_63:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_39_63 = load *f_0:ptr->Array:i32:[Some(20_0)] 
                    #   load label f as ptr to reg
    la      s7, f
                    #occupy reg s7 with *f_0
    lw      s8,0(s7)
                    #      new_var temp_40_63:ptr->i32 
                    #      new_var temp_41_63:i32 
                    #      temp_40_63 = getelementptr temp_39_63:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_56), Some(i_58)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 20_0
    add     s9,s9,s8
                    #found literal reg Some(a2) already exist with 1_0
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_41_63 = load temp_40_63:ptr->i32 
    lw      s10,0(s9)
                    #      new_var temp_42_63:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_42_63 = load *f_0:ptr->Array:i32:[Some(20_0)] 
                    #   load label f as ptr to reg
    la      s11, f
                    #occupy reg s11 with *f_0
    lw      a2,0(s11)
                    #      new_var temp_43_63:ptr->i32 
                    #      new_var temp_44_63:i32 
                    #      temp_43_63 = getelementptr temp_42_63:Array:i32:[Some(10005_0), Some(20_0)] [Some(temp_41_63), Some(i_58)] 
    li      s3, 0
    li      s5, 20
    add     s3,s3,a2
    li      s5, 1
    add     s3,s3,a2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_44_63 = load temp_43_63:ptr->i32 
    lw      s5,0(s3)
                    #      store temp_44_63:i32 temp_38_63:ptr->i32 
    sd      s5,0(a7)
                    #      mu f_0:239 
                    #      f_0 = chi f_0:239 
                    #      new_var temp_45_63:i32 
                    #      temp_45_63 = Add i32 i_58, 1_0 
    li      s6, 1
    add     s7,s2,s6
                    #      i_58 = i32 temp_45_63 
    mv      s2, s7
                    #      jump label: while.head_62 
    li      a5, 1720964
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s3, 120128
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s5, 120124
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a4, 1720976
    add     a4,sp,a4
    sd      a4,0(a4)
    li      s9, 920544
    add     s9,sp,s9
    sd      s9,0(s9)
    li      a7, 1720952
    add     a7,sp,a7
    sd      a7,0(a7)
    li      a3, 2521384
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s10, 920540
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s7, 120120
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 1720948
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s1, 1720972
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 920536
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s4, 1720971
    add     s4,sp,s4
    sb      s4,0(s4)
    j       .while.head_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      new_var temp_46_58:Array:i32:[Some(10005_0)] 
                    #      temp_46_58 = load *head_0:ptr->i32 
                    #   load label head as ptr to reg
    la      a2, head
                    #occupy reg a2 with *head_0
    lw      a5,0(a2)
                    #      new_var temp_47_58:ptr->i32 
                    #      new_var temp_48_58:i32 
                    #      temp_47_58 = getelementptr temp_46_58:Array:i32:[Some(10005_0)] [Some(x_56)] 
    li      a7, 0
    li      s3, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_48_58 = load temp_47_58:ptr->i32 
    lw      s5,0(a7)
                    #      i_58 = i32 temp_48_58 
    mv      s2, s5
                    #      jump label: while.head_68 
    j       .while.head_68
                    #      label while.head_68: 
.while.head_68:
                    #      new_var temp_49_67:i1 
                    #      temp_49_67 = icmp i32 Ne i_58, -1_0 
    li      a2, -1
    xor     s3,s2,a2
    snez    s3, s3
                    #      br i1 temp_49_67, label while.body_68, label while.exit_68 
    bnez    s3, .while.body_68
    j       .while.exit_68
                    #      label while.body_68: 
.while.body_68:
                    #      new_var temp_50_69:Array:i32:[Some(10005_0)] 
                    #      temp_50_69 = load *to_0:ptr->i32 
                    #   load label to as ptr to reg
    la      a2, to
                    #occupy reg a2 with *to_0
    lw      s6,0(a2)
                    #      new_var temp_51_69:ptr->i32 
                    #      new_var temp_52_69:i32 
                    #      temp_51_69 = getelementptr temp_50_69:Array:i32:[Some(10005_0)] [Some(i_58)] 
    li      s7, 0
    li      s8, 1
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_52_69 = load temp_51_69:ptr->i32 
    lw      s9,0(s7)
                    #      y_69 = i32 temp_52_69 
    mv      s10, s9
                    #      new_var temp_53_69:i32 
                    #      temp_53_69 = Add i32 d_56, 1_0 
                    #found literal reg Some(s8) already exist with 1_0
    add     s11,a1,s8
                    #       Call void tree_0(y_69, temp_53_69) 
                    #saved register dumping to mem
    li      s1, 1720972
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 2521388
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 80083
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 1720971
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 80084
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 80076
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 40048
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 40044
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 40040
    add     s9,sp,s9
    sw      s10,0(s9)
    li      s10, 40036
    add     s10,sp,s10
    sw      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2521404
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s11, 40040
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 2521400
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 40036
    add     a2,sp,a2
    lw      a1,0(a2)
                    #arg load ended
    call    tree
                    #      new_var temp_54_69:Array:i32:[Some(10005_0)] 
                    #      temp_54_69 = load *next_0:ptr->i32 
                    #   load label next as ptr to reg
    la      a0, next
                    #occupy reg a0 with *next_0
    lw      a1,0(a0)
                    #      new_var temp_55_69:ptr->i32 
                    #      new_var temp_56_69:i32 
                    #      temp_55_69 = getelementptr temp_54_69:Array:i32:[Some(10005_0)] [Some(i_58)] 
    li      a0, 0
    li      s1, 1
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_56_69 = load temp_55_69:ptr->i32 
    lw      s1,0(a0)
                    #      i_58 = i32 temp_56_69 
    mv      s2, s1
                    #      jump label: while.head_68 
    li      s4, 80084
    add     s4,sp,s4
    lw      s5,0(s4)
    sd      a0,8(sp)
    li      s7, 2521404
    add     s7,sp,s7
    lw      a0,0(s7)
    li      s7, 2521404
    add     s7,sp,s7
    sw      s7,0(s7)
    li      a1, 40032
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 40036
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 2521400
    add     a2,sp,a2
    lw      a1,0(a2)
    li      s11, 40040
    add     s11,sp,s11
    sw      s11,0(s11)
    sw      s1,4(sp)
    li      a2, 2521400
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1720972
    add     a2,sp,a2
    lw      s1,0(a2)
    li      a2, 1720972
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s4, 80084
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a3, 2521384
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1720971
    add     a3,sp,a3
    lb      s4,0(a3)
    j       .while.head_68
                    #      label while.exit_68: 
.while.exit_68:
                    #      Define LCA_0 [x_73, y_73] -> LCA_ret_0 
    .globl LCA
    .type LCA,@function
LCA:
                    #mem layout:|ra_LCA:8|s0_LCA:8|x:4|y:4|temp_57:40020|none:4|temp_58:8|temp_59:4|temp_60:40020|temp_61:8|temp_62:4|temp_63:1|none:3|t:4|i:4|temp_64:40020|none:4|temp_65:8|temp_66:4|temp_67:40020|temp_68:8|temp_69:4|temp_70:1|none:3|temp_71:40020|none:4|temp_72:8|temp_73:4|temp_74:800400|none:4|temp_75:8|temp_76:4|temp_77:40020|temp_78:8|temp_79:4|temp_80:1|none:3|temp_81:800400|temp_82:8|temp_83:4|temp_84:1|temp_85:1|none:2|temp_86:800400|temp_87:8|temp_88:4|temp_89:4|temp_90:1|temp_91:1|none:2|temp_92:800400|none:4|temp_93:8|temp_94:4|temp_95:800400|none:4|temp_96:8|temp_97:4|temp_98:1|none:3|temp_99:800400|temp_100:8|temp_101:4|temp_102:800400|none:4|temp_103:8|temp_104:4|temp_105:4|temp_106:800400|temp_107:8|temp_108:4|none:4
    li      a2, -6643584
    li      a2, -6643584
    add     sp,a2,sp
    li      a3, 6643576
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 6643568
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 6643584
    li      a5, 6643584
    add     s0,a5,sp
                    #      alloc Array:i32:[Some(10005_0)] temp_57_76 
                    #      alloc ptr->i32 temp_58_76 
                    #      alloc i32 temp_59_76 
                    #      alloc Array:i32:[Some(10005_0)] temp_60_76 
                    #      alloc ptr->i32 temp_61_76 
                    #      alloc i32 temp_62_76 
                    #      alloc i1 temp_63_76 
                    #      alloc i32 t_78 
                    #      alloc i32 i_75 
                    #      alloc Array:i32:[Some(10005_0)] temp_64_83 
                    #      alloc ptr->i32 temp_65_83 
                    #      alloc i32 temp_66_83 
                    #      alloc Array:i32:[Some(10005_0)] temp_67_83 
                    #      alloc ptr->i32 temp_68_83 
                    #      alloc i32 temp_69_83 
                    #      alloc i1 temp_70_83 
                    #      alloc Array:i32:[Some(10005_0)] temp_71_86 
                    #      alloc ptr->i32 temp_72_86 
                    #      alloc i32 temp_73_86 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_74_86 
                    #      alloc ptr->i32 temp_75_86 
                    #      alloc i32 temp_76_86 
                    #      alloc Array:i32:[Some(10005_0)] temp_77_86 
                    #      alloc ptr->i32 temp_78_86 
                    #      alloc i32 temp_79_86 
                    #      alloc i1 temp_80_86 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_81_86 
                    #      alloc ptr->i32 temp_82_86 
                    #      alloc i32 temp_83_86 
                    #      alloc i1 temp_84_86 
                    #      alloc i1 temp_85_86 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_86_86 
                    #      alloc ptr->i32 temp_87_86 
                    #      alloc i32 temp_88_86 
                    #      alloc i32 temp_89_85 
                    #      alloc i1 temp_90_90 
                    #      alloc i1 temp_91_94 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_92_97 
                    #      alloc ptr->i32 temp_93_97 
                    #      alloc i32 temp_94_97 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_95_97 
                    #      alloc ptr->i32 temp_96_97 
                    #      alloc i32 temp_97_97 
                    #      alloc i1 temp_98_97 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_99_99 
                    #      alloc ptr->i32 temp_100_99 
                    #      alloc i32 temp_101_99 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_102_99 
                    #      alloc ptr->i32 temp_103_99 
                    #      alloc i32 temp_104_99 
                    #      alloc i32 temp_105_96 
                    #      alloc Array:i32:[Some(10005_0), Some(20_0)] temp_106_75 
                    #      alloc ptr->i32 temp_107_75 
                    #      alloc i32 temp_108_75 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_57_76:Array:i32:[Some(10005_0)] 
                    #      temp_57_76 = load *dep_0:ptr->i32 
                    #   load label dep as ptr to reg
    la      a6, dep
                    #occupy reg a6 with *dep_0
    lw      a7,0(a6)
                    #      new_var temp_58_76:ptr->i32 
                    #      new_var temp_59_76:i32 
                    #      temp_58_76 = getelementptr temp_57_76:Array:i32:[Some(10005_0)] [Some(y_73)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_59_76 = load temp_58_76:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_60_76:Array:i32:[Some(10005_0)] 
                    #      temp_60_76 = load *dep_0:ptr->i32 
                    #   load label dep as ptr to reg
    la      s4, dep
                    #occupy reg s4 with *dep_0
    lw      s5,0(s4)
                    #      new_var temp_61_76:ptr->i32 
                    #      new_var temp_62_76:i32 
                    #      temp_61_76 = getelementptr temp_60_76:Array:i32:[Some(10005_0)] [Some(x_73)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_62_76 = load temp_61_76:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_63_76:i1 
                    #      temp_63_76 = icmp i32 Slt temp_62_76, temp_59_76 
    slt     s8,s7,s3
                    #      br i1 temp_63_76, label branch_true_77, label branch_false_77 
    bnez    s8, .branch_true_77
    j       .branch_false_77
                    #      label branch_true_77: 
.branch_true_77:
                    #      t_78 = i32 x_73 
    mv      a2, a0
                    #      x_73 = i32 y_73 
    mv      a0, a1
                    #      y_73 = i32 t_78 
    mv      a1, a2
                    #      jump label: branch_false_77 
    li      a2, 6563484
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .branch_false_77
                    #      label branch_false_77: 
.branch_false_77:
                    #      label L2_0: 
.L2_0:
                    #      i_75 = i32 19_0 
    li      a2, 19
                    #      jump label: while.head_84 
    j       .while.head_84
                    #      label while.head_84: 
.while.head_84:
                    #      new_var temp_64_83:Array:i32:[Some(10005_0)] 
                    #      temp_64_83 = load *dep_0:ptr->i32 
                    #   load label dep as ptr to reg
    la      a3, dep
                    #occupy reg a3 with *dep_0
    lw      a4,0(a3)
                    #      new_var temp_65_83:ptr->i32 
                    #      new_var temp_66_83:i32 
                    #      temp_65_83 = getelementptr temp_64_83:Array:i32:[Some(10005_0)] [Some(y_73)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_66_83 = load temp_65_83:ptr->i32 
    lw      s2,0(a5)
                    #      new_var temp_67_83:Array:i32:[Some(10005_0)] 
                    #      temp_67_83 = load *dep_0:ptr->i32 
                    #   load label dep as ptr to reg
    la      s4, dep
                    #occupy reg s4 with *dep_0
    lw      s9,0(s4)
                    #      new_var temp_68_83:ptr->i32 
                    #      new_var temp_69_83:i32 
                    #      temp_68_83 = getelementptr temp_67_83:Array:i32:[Some(10005_0)] [Some(x_73)] 
    li      s10, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_69_83 = load temp_68_83:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_70_83:i1 
                    #      temp_70_83 = icmp i32 Sgt temp_69_83, temp_66_83 
    slt     a3,s2,s11
                    #      br i1 temp_70_83, label while.body_84, label while.exit_84 
    bnez    a3, .while.body_84
    j       .while.exit_84
                    #      label while.body_84: 
.while.body_84:
                    #      new_var temp_71_86:Array:i32:[Some(10005_0)] 
                    #      temp_71_86 = load *dep_0:ptr->i32 
                    #   load label dep as ptr to reg
    la      a6, dep
                    #occupy reg a6 with *dep_0
    lw      s4,0(a6)
                    #      new_var temp_72_86:ptr->i32 
                    #      new_var temp_73_86:i32 
                    #      temp_72_86 = getelementptr temp_71_86:Array:i32:[Some(10005_0)] [Some(y_73)] 
    li      a6, 0
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_73_86 = load temp_72_86:ptr->i32 
    lw      a0,0(a6)
                    #      new_var temp_74_86:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_74_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 6443372
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_75_86:ptr->i32 
                    #      new_var temp_76_86:i32 
                    #      temp_75_86 = getelementptr temp_74_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
    li      a0, 0
    li      a1, 6443368
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 6483411
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_76_86 = load temp_75_86:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_77_86:Array:i32:[Some(10005_0)] 
                    #      temp_77_86 = load *dep_0:ptr->i32 
    li      a0, 5642960
    add     a0,sp,a0
    sd      a0,0(a0)
                    #   load label dep as ptr to reg
    la      a0, dep
                    #occupy reg a0 with *dep_0
    li      a1, 5642956
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_78_86:ptr->i32 
                    #      new_var temp_79_86:i32 
                    #      temp_78_86 = getelementptr temp_77_86:Array:i32:[Some(10005_0)] [Some(temp_76_86)] 
    li      a0, 0
    li      a1, 5642952
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 6443368
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_79_86 = load temp_78_86:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_80_86:i1 
                    #      temp_80_86 = icmp i32 Sge temp_79_86, temp_73_86 
    li      a0, 5602928
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 5642956
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
    xori    a2,a2,1
                    #      new_var temp_81_86:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_81_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 6443372
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 5602924
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_82_86:ptr->i32 
                    #      new_var temp_83_86:i32 
                    #      temp_82_86 = getelementptr temp_81_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
    li      a0, 0
    li      a1, 5602916
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 5602923
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 5642952
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_83_86 = load temp_82_86:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_84_86:i1 
                    #      temp_84_86 = icmp i32 Ne temp_83_86, 0_0 
    li      a0, 4802512
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      new_var temp_85_86:i1 
                    #      temp_85_86 = And i1 temp_84_86, temp_80_86 
    li      a1, 4802508
    add     a1,sp,a1
    sw      a1,0(a1)
    and     a1,a2,a0
                    #      br i1 temp_85_86, label branch_true_87, label branch_false_87 
    bnez    a1, .branch_true_87
    j       .branch_false_87
                    #      label branch_true_87: 
.branch_true_87:
                    #      new_var temp_86_86:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_86_86 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 5602923
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 4802506
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_87_86:ptr->i32 
                    #      new_var temp_88_86:i32 
                    #      temp_87_86 = getelementptr temp_86_86:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
    li      a0, 0
    li      a1, 4802500
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 4802507
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 5602916
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_88_86 = load temp_87_86:ptr->i32 
    lw      a1,0(a0)
                    #      x_73 = i32 temp_88_86 
    li      a0, 4002096
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
                    #      jump label: branch_false_87 
    li      a1, 4002092
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 4802506
    add     a0,sp,a0
    lb      a1,0(a0)
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4802506
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 4802507
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 4802507
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 4802500
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 5602923
    add     a3,sp,a3
    lb      a0,0(a3)
    li      a3, 5602923
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a4, 6563476
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 5602916
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_87
                    #      label branch_false_87: 
.branch_false_87:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_89_85:i32 
                    #      temp_89_85 = Sub i32 i_75, 1_0 
    li      a0, 5602923
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a1, 4802506
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a1, 1
    li      a2, 4802507
    add     a2,sp,a2
    sb      a2,0(a2)
    sub     a2,a0,a1
                    #      i_75 = i32 temp_89_85 
    mv      a0, a2
                    #      jump label: while.head_84 
    li      s2, 6523444
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s9, 6523440
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a4, 6563476
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a0, 6563480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6643560
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a2, 4002088
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 6643560
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6563480
    add     a0,sp,a0
    lw      a2,0(a0)
    li      s11, 6483412
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a5, 6523448
    add     a5,sp,a5
    sd      a5,0(a5)
    li      a0, 6563480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 5602916
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6643564
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s4, 6483404
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a6, 6443376
    add     a6,sp,a6
    sd      a6,0(a6)
    li      s10, 6483416
    add     s10,sp,s10
    sd      s10,0(s10)
    li      a3, 6643564
    add     a3,sp,a3
    sw      a3,0(a3)
    j       .while.head_84
                    #      label while.exit_84: 
.while.exit_84:
                    #      new_var temp_90_90:i1 
                    #      temp_90_90 = icmp i32 Eq x_73, y_73 
    xor     a6,a0,a1
    seqz    a6, a6
                    #      br i1 temp_90_90, label branch_true_91, label branch_false_91 
    bnez    a6, .branch_true_91
    j       .branch_false_91
                    #      label branch_true_91: 
.branch_true_91:
                    #      ret x_73 
    li      s4, 6643576
    add     s4,sp,s4
    ld      ra,0(s4)
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6643568
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 6643568
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 6643584
    li      a1, 6643584
    add     sp,a1,sp
    ret
                    #      label branch_false_91: 
.branch_false_91:
                    #      label L4_0: 
.L4_0:
                    #      i_75 = i32 19_0 
                    #      jump label: while.head_95 
    j       .while.head_95
                    #      label while.head_95: 
.while.head_95:
                    #      new_var temp_91_94:i1 
                    #      temp_91_94 = icmp i32 Sge i_75, 0_0 
    li      s4, 0
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
    slt     a0,a2,s4
    xori    a0,a0,1
                    #      br i1 temp_91_94, label while.body_95, label while.exit_95 
    bnez    a0, .while.body_95
    j       .while.exit_95
                    #      label while.body_95: 
.while.body_95:
                    #      new_var temp_92_97:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_92_97 = load *f_0:ptr->Array:i32:[Some(20_0)] 
                    #   load label f as ptr to reg
    la      s4, f
                    #occupy reg s4 with *f_0
    li      a0, 4002086
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s4)
                    #      new_var temp_93_97:ptr->i32 
                    #      new_var temp_94_97:i32 
                    #      temp_93_97 = getelementptr temp_92_97:Array:i32:[Some(10005_0), Some(20_0)] [Some(y_73), Some(i_75)] 
    li      s4, 0
    li      a0, 4002080
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 20
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s4,s4,a2
    li      a0, 1
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
    add     s4,s4,a2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_94_97 = load temp_93_97:ptr->i32 
    lw      a0,0(s4)
                    #      new_var temp_95_97:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_95_97 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 3201668
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 6563480
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_96_97:ptr->i32 
                    #      new_var temp_97_97:i32 
                    #      temp_96_97 = getelementptr temp_95_97:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
    li      a0, 0
    li      a1, 3201664
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 4002080
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 6483411
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_97_97 = load temp_96_97:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_98_97:i1 
                    #      temp_98_97 = icmp i32 Ne temp_97_97, temp_94_97 
    li      a0, 2401256
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    snez    a2, a2
                    #      br i1 temp_98_97, label branch_true_98, label branch_false_98 
    bnez    a2, .branch_true_98
    j       .branch_false_98
                    #      label branch_true_98: 
.branch_true_98:
                    #      new_var temp_99_99:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_99_99 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 3201668
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 2401252
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_100_99:ptr->i32 
                    #      new_var temp_101_99:i32 
                    #      temp_100_99 = getelementptr temp_99_99:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(i_75)] 
    li      a0, 0
    li      a1, 2401244
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 2401251
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 3201664
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643564
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_101_99 = load temp_100_99:ptr->i32 
    lw      a1,0(a0)
                    #      x_73 = i32 temp_101_99 
    li      a0, 1600840
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
                    #      new_var temp_102_99:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_102_99 = load *f_0:ptr->Array:i32:[Some(20_0)] 
    li      a0, 6643564
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label f as ptr to reg
    la      a0, f
                    #occupy reg a0 with *f_0
    li      a1, 1600836
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_103_99:ptr->i32 
                    #      new_var temp_104_99:i32 
                    #      temp_103_99 = getelementptr temp_102_99:Array:i32:[Some(10005_0), Some(20_0)] [Some(y_73), Some(i_75)] 
    li      a0, 0
    li      a1, 1600832
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 20
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 2401244
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 6643560
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_104_99 = load temp_103_99:ptr->i32 
    lw      a1,0(a0)
                    #      y_73 = i32 temp_104_99 
    li      a0, 800424
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
                    #      jump label: branch_false_98 
    li      a1, 800420
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 6643560
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2401252
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 2401252
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2401251
    add     a0,sp,a0
    lb      a2,0(a0)
    li      a0, 2401251
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a3, 1600832
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3201668
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 3201668
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 6563476
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 3201664
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .branch_false_98
                    #      label branch_false_98: 
.branch_false_98:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_105_96:i32 
                    #      temp_105_96 = Sub i32 i_75, 1_0 
    li      a0, 3201668
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 2401252
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 2401251
    add     a2,sp,a2
    sb      a2,0(a2)
    sub     a2,a0,a1
                    #      i_75 = i32 temp_105_96 
    mv      a0, a2
                    #      jump label: while.head_95 
    li      a0, 6563480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6643560
    add     a0,sp,a0
    lw      a1,0(a0)
    li      a2, 800416
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 6643560
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 6563480
    add     a0,sp,a0
    lw      a2,0(a0)
    li      a0, 6563480
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 3201664
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 6643564
    add     a3,sp,a3
    lw      a0,0(a3)
    li      s4, 3201672
    add     s4,sp,s4
    sd      s4,0(s4)
    li      a3, 6643564
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 6563476
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 6483411
    add     a4,sp,a4
    lb      a3,0(a4)
    j       .while.head_95
                    #      label while.exit_95: 
.while.exit_95:
                    #      new_var temp_106_75:Array:i32:[Some(10005_0), Some(20_0)] 
                    #      temp_106_75 = load *f_0:ptr->Array:i32:[Some(20_0)] 
                    #   load label f as ptr to reg
    la      s4, f
                    #occupy reg s4 with *f_0
    li      a0, 4002086
    add     a0,sp,a0
    sb      a0,0(a0)
    lw      a0,0(s4)
                    #      new_var temp_107_75:ptr->i32 
                    #      new_var temp_108_75:i32 
                    #      temp_107_75 = getelementptr temp_106_75:Array:i32:[Some(10005_0), Some(20_0)] [Some(x_73), Some(0_0)] 
    li      s4, 0
    li      a0, 800412
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 20
    li      a1, 6643560
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 6563480
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a0,a1
    add     s4,s4,a2
    li      a0, 1
    li      a1, 6643564
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    add     s4,s4,a2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_108_75 = load temp_107_75:ptr->i32 
    lw      a0,0(s4)
                    #      ret temp_108_75 
    li      a1, 6643576
    add     a1,sp,a1
    ld      ra,0(a1)
    sw      a0,4(sp)
    li      a0, 6643568
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 6643568
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 6643576
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 6643584
    li      a1, 6643584
    add     sp,a1,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_109:4|temp_110:4|i:4|temp_111:4|temp_112:1|none:3|temp_113:4|x:4|temp_114:4|y:4|temp_115:4|temp_116:4|temp_117:1|none:3|temp_118:4|x:4|temp_119:4|y:4|temp_120:4|temp_121:4|temp_122:4|none:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_109_105 
                    #      alloc i32 temp_110_105 
                    #      alloc i32 i_105 
                    #      alloc i32 temp_111_110 
                    #      alloc i1 temp_112_110 
                    #      alloc i32 temp_113_112 
                    #      alloc i32 x_112 
                    #      alloc i32 temp_114_112 
                    #      alloc i32 y_112 
                    #      alloc i32 temp_115_112 
                    #      alloc i32 temp_116_117 
                    #      alloc i1 temp_117_3399 
                    #      alloc i32 temp_118_119 
                    #      alloc i32 x_119 
                    #      alloc i32 temp_119_119 
                    #      alloc i32 y_119 
                    #      alloc i32 temp_120_119 
                    #      alloc i32 temp_121_119 
                    #      alloc i32 temp_122_119 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_109_105:i32 
                    #      temp_109_105 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
                    #      store temp_109_105:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    sd      a0,0(a1)
                    #      new_var temp_110_105:i32 
                    #      temp_110_105 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,72(sp)
                    #      store temp_110_105:i32 *m_0:ptr->i32 
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
                    #      i_105 = i32 1_0 
    li      a3, 1
                    #      jump label: while.head_111 
    j       .while.head_111
                    #      label while.head_111: 
.while.head_111:
                    #      new_var temp_111_110:i32 
                    #      temp_111_110 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_112_110:i1 
                    #      temp_112_110 = icmp i32 Ne i_105, temp_111_110 
    xor     a4,a3,a2
    snez    a4, a4
                    #      br i1 temp_112_110, label while.body_111, label while.exit_111 
    bnez    a4, .while.body_111
    j       .while.exit_111
                    #      label while.body_111: 
.while.body_111:
                    #      new_var temp_113_112:i32 
                    #      temp_113_112 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,72(sp)
    sw      a0,56(sp)
                    #      x_112 = i32 temp_113_112 
    mv      a1, a0
                    #      new_var temp_114_112:i32 
                    #      temp_114_112 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,56(sp)
    sw      a0,48(sp)
                    #      y_112 = i32 temp_114_112 
    mv      a5, a0
                    #       Call void add_edge_0(x_112, y_112) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,48(sp)
    mv      a0, a1
    sw      a1,52(sp)
    mv      a1, a5
                    #arg load ended
    call    add_edge
                    #      new_var temp_115_112:i32 
                    #      temp_115_112 = Add i32 i_105, 1_0 
    li      a0, 1
    add     a1,a3,a0
                    #      i_105 = i32 temp_115_112 
    mv      a3, a1
                    #      jump label: while.head_111 
    sb      a4,63(sp)
    sw      a2,64(sp)
    sw      a5,44(sp)
    lw      a0,72(sp)
    sw      a1,40(sp)
    j       .while.head_111
                    #      label while.exit_111: 
.while.exit_111:
                    #       Call void tree_0(1_0, 1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,72(sp)
    li      a0, 1
    li      a1, 1
                    #arg load ended
    call    tree
                    #      jump label: while.head_118 
    j       .while.head_118
                    #      label while.head_118: 
.while.head_118:
                    #      new_var temp_116_117:i32 
                    #      temp_116_117 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_117_3399:i1 
                    #      temp_117_3399 = icmp i32 Ne temp_116_117, 0_0 
    li      a5, 0
    xor     a6,a1,a5
    snez    a6, a6
                    #      br i1 temp_117_3399, label while.body_118, label while.exit_118 
    bnez    a6, .while.body_118
    j       .while.exit_118
                    #      label while.body_118: 
.while.body_118:
                    #      new_var temp_118_119:i32 
                    #      temp_118_119 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,28(sp)
                    #      x_119 = i32 temp_118_119 
    mv      a5, a0
                    #      new_var temp_119_119:i32 
                    #      temp_119_119 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,28(sp)
    sw      a0,20(sp)
                    #      y_119 = i32 temp_119_119 
    mv      a7, a0
                    #      new_var temp_120_119:i32 
                    #      temp_120_119 =  Call i32 LCA_0(x_119, y_119) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a5
    sw      a1,36(sp)
    mv      a1, a7
                    #arg load ended
    call    LCA
    sw      a0,12(sp)
                    #       Call void putint_0(temp_120_119) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    lw      a0,12(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_121_119:i32 
                    #      temp_121_119 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_122_119:i32 
                    #      temp_122_119 = Sub i32 temp_121_119, 1_0 
    li      s1, 1
    sub     s2,a1,s1
                    #      store temp_122_119:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      s3, m
                    #occupy reg s3 with *m_0
    sd      s2,0(s3)
                    #      jump label: while.head_118 
    sw      s2,4(sp)
    sw      a7,16(sp)
    sw      a5,24(sp)
    sw      a1,8(sp)
    sb      a6,35(sp)
    j       .while.head_118
                    #      label while.exit_118: 
.while.exit_118:
                    #      ret 0_0 
    ld      ra,88(sp)
    ld      s0,80(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl cnt
                    #      global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
                    #      global Array:i32:[Some(10005_0)] head_0 
    .type head,@object
head:
    .zero 40020
    .align 4
    .globl next
                    #      global Array:i32:[Some(10005_0)] next_0 
    .type next,@object
next:
    .zero 40020
    .align 4
    .globl to
                    #      global Array:i32:[Some(10005_0)] to_0 
    .type to,@object
to:
    .zero 40020
    .align 4
    .globl dep
                    #      global Array:i32:[Some(10005_0)] dep_0 
    .type dep,@object
dep:
    .zero 40020
    .align 4
    .globl f
                    #      global Array:i32:[Some(10005_0), Some(20_0)] f_0 
    .type f,@object
f:
    .zero 800400
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
    .align 4
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 10005
