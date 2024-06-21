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
                    #      Define my_memset_0 [arr_22, val_22, n_22] -> my_memset_ret_0 
    .globl my_memset
    .type my_memset,@function
my_memset:
                    #mem layout:|ra_my_memset:8|s0_my_memset:8|arr:8|val:4|n:4|i:4|temp_0:1|none:3|temp_1:8|temp_2:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      new_var arr_22:ptr->i32 
                    #      alloc i32 i_24 
                    #      alloc i1 temp_0_26 
                    #      alloc ptr->i32 temp_1_28 
                    #      alloc i32 temp_2_28 
                    #      label L14_0: 
.L14_0:
                    #      i_24 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.head_27: 
.while.head_27:
                    #      new_var temp_0_26:i1 
                    #      temp_0_26 = icmp i32 Slt i_24, n_22 
    slt     a4,a3,a2
                    #      br i1 temp_0_26, label while.body_27, label while.exit_27 
    bnez    a4, .while.body_27
    j       .while.exit_27
                    #      label while.body_27: 
.while.body_27:
                    #      new_var temp_1_28:ptr->i32 
                    #      temp_1_28 = getelementptr arr_22:ptr->i32 [Some(i_24)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store val_22:i32 temp_1_28:ptr->i32 
    sd      a1,0(a5)
                    #      mu arr_22:46 
                    #      arr_22 = chi arr_22:46 
                    #      new_var temp_2_28:i32 
                    #      temp_2_28 = Add i32 i_24, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     a7,a3,a6
                    #      i_24 = i32 temp_2_28 
    mv      a3, a7
                    #      jump label: while.head_27 
    sd      a5,8(sp)
    sb      a4,19(sp)
    sw      a7,4(sp)
    j       .while.head_27
                    #      label while.exit_27: 
.while.exit_27:
                    #      Define add_node_0 [u_31, v_31, c_31] -> add_node_ret_0 
    .globl add_node
    .type add_node,@function
add_node:
                    #mem layout:|ra_add_node:8|s0_add_node:8|u:4|v:4|c:4|temp_3:40|none:4|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:40|temp_8:8|temp_9:4|none:4|temp_10:8|temp_11:40|temp_12:8|temp_13:4|none:4|temp_14:8|temp_15:40|temp_16:8|temp_17:4|temp_18:40|none:4|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:40|temp_23:8|temp_24:4|none:4|temp_25:8|temp_26:40|temp_27:8|temp_28:4|none:4|temp_29:8|temp_30:40|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:40|temp_35:8|temp_36:4|temp_37:4|temp_38:8|temp_39:40|temp_40:8|temp_41:4|temp_42:4
    addi    sp,sp,-656
    sd      ra,648(sp)
    sd      s0,640(sp)
    addi    s0,sp,656
                    #      alloc Array:i32:[Some(10_0)] temp_3_33 
                    #      alloc ptr->i32 temp_4_33 
                    #      alloc i32 temp_5_33 
                    #      alloc ptr->i32 temp_6_33 
                    #      alloc Array:i32:[Some(10_0)] temp_7_33 
                    #      alloc ptr->i32 temp_8_33 
                    #      alloc i32 temp_9_33 
                    #      alloc ptr->i32 temp_10_33 
                    #      alloc Array:i32:[Some(10_0)] temp_11_33 
                    #      alloc ptr->i32 temp_12_33 
                    #      alloc i32 temp_13_33 
                    #      alloc ptr->i32 temp_14_33 
                    #      alloc Array:i32:[Some(10_0)] temp_15_33 
                    #      alloc ptr->i32 temp_16_33 
                    #      alloc i32 temp_17_33 
                    #      alloc Array:i32:[Some(10_0)] temp_18_33 
                    #      alloc ptr->i32 temp_19_33 
                    #      alloc i32 temp_20_33 
                    #      alloc ptr->i32 temp_21_33 
                    #      alloc Array:i32:[Some(10_0)] temp_22_33 
                    #      alloc ptr->i32 temp_23_33 
                    #      alloc i32 temp_24_33 
                    #      alloc ptr->i32 temp_25_33 
                    #      alloc Array:i32:[Some(10_0)] temp_26_33 
                    #      alloc ptr->i32 temp_27_33 
                    #      alloc i32 temp_28_33 
                    #      alloc ptr->i32 temp_29_33 
                    #      alloc Array:i32:[Some(10_0)] temp_30_33 
                    #      alloc ptr->i32 temp_31_33 
                    #      alloc i32 temp_32_33 
                    #      alloc ptr->i32 temp_33_33 
                    #      alloc Array:i32:[Some(10_0)] temp_34_33 
                    #      alloc ptr->i32 temp_35_33 
                    #      alloc i32 temp_36_33 
                    #      alloc i32 temp_37_33 
                    #      alloc ptr->i32 temp_38_33 
                    #      alloc Array:i32:[Some(10_0)] temp_39_33 
                    #      alloc ptr->i32 temp_40_33 
                    #      alloc i32 temp_41_33 
                    #      alloc i32 temp_42_33 
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_3_33:Array:i32:[Some(10_0)] 
                    #      temp_3_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a3, size
                    #occupy reg a3 with *size_0
    lw      a4,0(a3)
                    #      new_var temp_4_33:ptr->i32 
                    #      new_var temp_5_33:i32 
                    #      temp_4_33 = getelementptr temp_3_33:Array:i32:[Some(10_0)] [Some(u_31)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_5_33 = load temp_4_33:ptr->i32 
    lw      a7,0(a5)
                    #      new_var temp_6_33:ptr->i32 
                    #      temp_6_33 = getelementptr to_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_5_33)] 
    li      s1, 0
    li      s2, 10
    mul     s3,s2,a0
                    #occupy reg s3 with to_0
    add     s1,s1,s3
                    #found literal reg Some(a6) already exist with 1_0
    mul     s4,a6,a7
                    #occupy reg s4 with to_0
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,s1
                    #      store v_31:i32 temp_6_33:ptr->i32 
    sd      a1,0(s1)
                    #      mu to_0:65 
                    #      to_0 = chi to_0:65 
                    #      new_var temp_7_33:Array:i32:[Some(10_0)] 
                    #      temp_7_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      s5, size
                    #occupy reg s5 with *size_0
    lw      s6,0(s5)
                    #      new_var temp_8_33:ptr->i32 
                    #      new_var temp_9_33:i32 
                    #      temp_8_33 = getelementptr temp_7_33:Array:i32:[Some(10_0)] [Some(u_31)] 
    li      s7, 0
                    #found literal reg Some(a6) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_9_33 = load temp_8_33:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_10_33:ptr->i32 
                    #      temp_10_33 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_9_33)] 
    li      s9, 0
                    #found literal reg Some(s2) already exist with 10_0
    mul     s10,s2,a0
                    #occupy reg s10 with cap_0
    add     s9,s9,s10
                    #found literal reg Some(a6) already exist with 1_0
    mul     s11,a6,s8
                    #occupy reg s11 with cap_0
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,s9
                    #      store c_31:i32 temp_10_33:ptr->i32 
    sd      a2,0(s9)
                    #      mu cap_0:80 
                    #      cap_0 = chi cap_0:80 
                    #      new_var temp_11_33:Array:i32:[Some(10_0)] 
                    #      temp_11_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a3, size
                    #occupy reg a3 with *size_0
    lw      a6,0(a3)
                    #      new_var temp_12_33:ptr->i32 
                    #      new_var temp_13_33:i32 
                    #      temp_12_33 = getelementptr temp_11_33:Array:i32:[Some(10_0)] [Some(u_31)] 
    li      a3, 0
    li      s2, 1
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_13_33 = load temp_12_33:ptr->i32 
    lw      s2,0(a3)
                    #      new_var temp_14_33:ptr->i32 
                    #      temp_14_33 = getelementptr rev_0:Array:i32:[Some(10_0), Some(10_0)] [Some(u_31), Some(temp_13_33)] 
    li      s3, 0
    li      s4, 10
    mul     s5,s4,a0
                    #occupy reg s5 with rev_0
    add     s3,s3,s5
    li      s4, 1
    mul     s5,s4,s2
                    #occupy reg s5 with rev_0
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,s3
                    #      new_var temp_15_33:Array:i32:[Some(10_0)] 
                    #      temp_15_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      s4, size
                    #occupy reg s4 with *size_0
    lw      s5,0(s4)
                    #      new_var temp_16_33:ptr->i32 
                    #      new_var temp_17_33:i32 
                    #      temp_16_33 = getelementptr temp_15_33:Array:i32:[Some(10_0)] [Some(v_31)] 
    li      s4, 0
    li      s10, 1
    add     s4,s4,s5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_17_33 = load temp_16_33:ptr->i32 
    lw      s10,0(s4)
                    #      store temp_17_33:i32 temp_14_33:ptr->i32 
    sd      s10,0(s3)
                    #      mu rev_0:104 
                    #      rev_0 = chi rev_0:104 
                    #      new_var temp_18_33:Array:i32:[Some(10_0)] 
                    #      temp_18_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      s11, size
                    #occupy reg s11 with *size_0
    sw      a0,636(sp)
    lw      a0,0(s11)
                    #      new_var temp_19_33:ptr->i32 
                    #      new_var temp_20_33:i32 
                    #      temp_19_33 = getelementptr temp_18_33:Array:i32:[Some(10_0)] [Some(v_31)] 
    li      s11, 0
    sw      a0,376(sp)
    li      a0, 1
    sw      a2,628(sp)
    mul     a2,a0,a1
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_20_33 = load temp_19_33:ptr->i32 
    lw      a0,0(s11)
                    #      new_var temp_21_33:ptr->i32 
                    #      temp_21_33 = getelementptr to_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_20_33)] 
    sw      a0,324(sp)
    li      a0, 0
    sw      a1,632(sp)
    li      a1, 10
    sw      a2,376(sp)
    sd      a3,448(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with to_0
    add     a0,a0,a3
    li      a1, 1
    sw      a2,632(sp)
    mul     a2,a1,a3
                    #occupy reg a2 with to_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store u_31:i32 temp_21_33:ptr->i32 
    sd      a1,0(a0)
                    #      mu to_0:119 
                    #      to_0 = chi to_0:119 
                    #      new_var temp_22_33:Array:i32:[Some(10_0)] 
                    #      temp_22_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a2, size
                    #occupy reg a2 with *size_0
    sd      a0,312(sp)
    lw      a0,0(a2)
                    #      new_var temp_23_33:ptr->i32 
                    #      new_var temp_24_33:i32 
                    #      temp_23_33 = getelementptr temp_22_33:Array:i32:[Some(10_0)] [Some(v_31)] 
    li      a2, 0
    sw      a0,308(sp)
    li      a0, 1
    sw      a1,636(sp)
    sw      a3,324(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_24_33 = load temp_23_33:ptr->i32 
    lw      a0,0(a2)
                    #      new_var temp_25_33:ptr->i32 
                    #      temp_25_33 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_24_33)] 
    sw      a0,260(sp)
    li      a0, 0
    sw      a1,632(sp)
    li      a1, 10
    sd      a2,264(sp)
    sw      a3,308(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with cap_0
    add     a0,a0,a3
    li      a1, 1
    sw      a2,632(sp)
    mul     a2,a1,a3
                    #occupy reg a2 with cap_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 0_0:i32 temp_25_33:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu cap_0:134 
                    #      cap_0 = chi cap_0:134 
                    #      new_var temp_26_33:Array:i32:[Some(10_0)] 
                    #      temp_26_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a1, size
                    #occupy reg a1 with *size_0
    lw      a2,0(a1)
                    #      new_var temp_27_33:ptr->i32 
                    #      new_var temp_28_33:i32 
                    #      temp_27_33 = getelementptr temp_26_33:Array:i32:[Some(10_0)] [Some(v_31)] 
    li      a1, 0
    sd      a0,248(sp)
    li      a0, 1
    sw      a2,244(sp)
    sw      a3,260(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_28_33 = load temp_27_33:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_29_33:ptr->i32 
                    #      temp_29_33 = getelementptr rev_0:Array:i32:[Some(10_0), Some(10_0)] [Some(v_31), Some(temp_28_33)] 
    sw      a0,196(sp)
    li      a0, 0
    sd      a1,200(sp)
    li      a1, 10
    sw      a3,244(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with rev_0
    add     a0,a0,a3
    li      a1, 1
    sw      a2,632(sp)
    mul     a2,a1,a3
                    #occupy reg a2 with rev_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_30_33:Array:i32:[Some(10_0)] 
                    #      temp_30_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a1, size
                    #occupy reg a1 with *size_0
    lw      a2,0(a1)
                    #      new_var temp_31_33:ptr->i32 
                    #      new_var temp_32_33:i32 
                    #      temp_31_33 = getelementptr temp_30_33:Array:i32:[Some(10_0)] [Some(u_31)] 
    li      a1, 0
    sd      a0,184(sp)
    li      a0, 1
    sw      a2,180(sp)
    sw      a3,196(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_32_33 = load temp_31_33:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_32_33:i32 temp_29_33:ptr->i32 
    sw      a0,132(sp)
    sd      a1,136(sp)
    sd      a1,0(a0)
                    #      mu rev_0:158 
                    #      rev_0 = chi rev_0:158 
                    #      new_var temp_33_33:ptr->i32 
                    #      temp_33_33 = getelementptr size_0:Array:i32:[Some(10_0)] [Some(u_31)] 
    sd      a0,184(sp)
    li      a0, 0
    sw      a1,132(sp)
    li      a1, 1
    sw      a3,180(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with size_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_34_33:Array:i32:[Some(10_0)] 
                    #      temp_34_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a1, size
                    #occupy reg a1 with *size_0
    lw      a3,0(a1)
                    #      new_var temp_35_33:ptr->i32 
                    #      new_var temp_36_33:i32 
                    #      temp_35_33 = getelementptr temp_34_33:Array:i32:[Some(10_0)] [Some(u_31)] 
    li      a1, 0
    sd      a0,120(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_36_33 = load temp_35_33:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_37_33:i32 
                    #      temp_37_33 = Add i32 temp_36_33, 1_0 
    sd      a1,72(sp)
    li      a1, 1
    sw      a2,636(sp)
    add     a2,a0,a1
                    #      store temp_37_33:i32 temp_33_33:ptr->i32 
    sd      a2,0(a1)
                    #      mu size_0:176 
                    #      size_0 = chi size_0:176 
                    #      new_var temp_38_33:ptr->i32 
                    #      temp_38_33 = getelementptr size_0:Array:i32:[Some(10_0)] [Some(v_31)] 
    sw      a0,68(sp)
    li      a0, 0
    sd      a1,120(sp)
    li      a1, 1
    sw      a2,64(sp)
    sw      a3,116(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with size_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_39_33:Array:i32:[Some(10_0)] 
                    #      temp_39_33 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a1, size
                    #occupy reg a1 with *size_0
    lw      a3,0(a1)
                    #      new_var temp_40_33:ptr->i32 
                    #      new_var temp_41_33:i32 
                    #      temp_40_33 = getelementptr temp_39_33:Array:i32:[Some(10_0)] [Some(v_31)] 
    li      a1, 0
    sd      a0,56(sp)
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_41_33 = load temp_40_33:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_42_33:i32 
                    #      temp_42_33 = Add i32 temp_41_33, 1_0 
    sd      a1,8(sp)
    li      a1, 1
    sw      a2,632(sp)
    add     a2,a0,a1
                    #      store temp_42_33:i32 temp_38_33:ptr->i32 
    sd      a2,0(a1)
                    #      mu size_0:194 
                    #      size_0 = chi size_0:194 
                    #      Define dfs_0 [s_42, t_42, f_42] -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
                    #mem layout:|ra_dfs:8|s0_dfs:8|s:4|t:4|f:4|temp_43:1|none:3|temp_44:8|i:4|temp_45:40|none:4|temp_46:8|temp_47:4|temp_48:1|none:3|temp_49:400|temp_50:8|temp_51:4|temp_52:40|none:4|temp_53:8|temp_54:4|temp_55:1|none:3|temp_56:4|temp_57:400|none:4|temp_58:8|temp_59:4|temp_60:1|none:3|temp_61:4|min_f:4|temp_62:400|temp_63:8|temp_64:4|temp_65:1|none:3|temp_66:400|temp_67:8|temp_68:4|temp_69:4|d:4|temp_70:1|none:3|temp_71:8|temp_72:400|temp_73:8|temp_74:4|temp_75:4|temp_76:400|temp_77:8|temp_78:4|temp_79:400|none:4|temp_80:8|temp_81:4|none:4|temp_82:8|temp_83:400|temp_84:8|temp_85:4|temp_86:400|none:4|temp_87:8|temp_88:4|temp_89:400|none:4|temp_90:8|temp_91:4|temp_92:4|temp_93:4|temp_94:400|none:4|temp_95:8|temp_96:4|none:4
    li      a3, -4784
    li      a3, -4784
    add     sp,a3,sp
    li      a4, 4776
    add     a4,sp,a4
    sd      ra,0(a4)
    li      a5, 4768
    add     a5,sp,a5
    sd      s0,0(a5)
    li      a6, 4784
    li      a6, 4784
    add     s0,a6,sp
                    #      alloc i1 temp_43_45 
                    #      alloc ptr->i32 temp_44_44 
                    #      alloc i32 i_44 
                    #      alloc Array:i32:[Some(10_0)] temp_45_50 
                    #      alloc ptr->i32 temp_46_50 
                    #      alloc i32 temp_47_50 
                    #      alloc i1 temp_48_50 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_49_53 
                    #      alloc ptr->i32 temp_50_53 
                    #      alloc i32 temp_51_53 
                    #      alloc Array:i32:[Some(10_0)] temp_52_53 
                    #      alloc ptr->i32 temp_53_53 
                    #      alloc i32 temp_54_53 
                    #      alloc i1 temp_55_1500 
                    #      alloc i32 temp_56_55 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_57_58 
                    #      alloc ptr->i32 temp_58_58 
                    #      alloc i32 temp_59_58 
                    #      alloc i1 temp_60_58 
                    #      alloc i32 temp_61_60 
                    #      alloc i32 min_f_52 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_62_64 
                    #      alloc ptr->i32 temp_63_64 
                    #      alloc i32 temp_64_64 
                    #      alloc i1 temp_65_64 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_66_52 
                    #      alloc ptr->i32 temp_67_52 
                    #      alloc i32 temp_68_52 
                    #      alloc i32 temp_69_52 
                    #      alloc i32 d_52 
                    #      alloc i1 temp_70_69 
                    #      alloc ptr->i32 temp_71_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_72_71 
                    #      alloc ptr->i32 temp_73_71 
                    #      alloc i32 temp_74_71 
                    #      alloc i32 temp_75_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_76_71 
                    #      alloc ptr->i32 temp_77_71 
                    #      alloc i32 temp_78_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_79_71 
                    #      alloc ptr->i32 temp_80_71 
                    #      alloc i32 temp_81_71 
                    #      alloc ptr->i32 temp_82_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_83_71 
                    #      alloc ptr->i32 temp_84_71 
                    #      alloc i32 temp_85_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_86_71 
                    #      alloc ptr->i32 temp_87_71 
                    #      alloc i32 temp_88_71 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_89_71 
                    #      alloc ptr->i32 temp_90_71 
                    #      alloc i32 temp_91_71 
                    #      alloc i32 temp_92_71 
                    #      alloc i32 temp_93_52 
                    #      alloc Array:i32:[Some(10_0), Some(10_0)] temp_94_64 
                    #      alloc ptr->i32 temp_95_64 
                    #      alloc i32 temp_96_64 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_43_45:i1 
                    #      temp_43_45 = icmp i32 Eq s_42, t_42 
    xor     a7,a0,a1
    seqz    a7, a7
                    #      br i1 temp_43_45, label branch_true_46, label branch_false_46 
    bnez    a7, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      ret f_42 
    li      a3, 4776
    add     a3,sp,a3
    ld      ra,0(a3)
    li      a4, 4768
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a2, 4756
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 4784
    li      a5, 4784
    add     sp,a5,sp
    ret
                    #      label branch_false_46: 
.branch_false_46:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_44_44:ptr->i32 
                    #      temp_44_44 = getelementptr used_0:Array:i32:[Some(10_0)] [Some(s_42)] 
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a0
                    #occupy reg a5 with used_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,a3
                    #      store 1_0:i32 temp_44_44:ptr->i32 
                    #found literal reg Some(a4) already exist with 1_0
    sd      a4,0(a3)
                    #      mu used_0:208 
                    #      used_0 = chi used_0:208 
                    #      i_44 = i32 0_0 
    li      a6, 0
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.head_51: 
.while.head_51:
                    #      new_var temp_45_50:Array:i32:[Some(10_0)] 
                    #      temp_45_50 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a4, size
                    #occupy reg a4 with *size_0
    lw      a5,0(a4)
                    #      new_var temp_46_50:ptr->i32 
                    #      new_var temp_47_50:i32 
                    #      temp_46_50 = getelementptr temp_45_50:Array:i32:[Some(10_0)] [Some(s_42)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_47_50 = load temp_46_50:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_48_50:i1 
                    #      temp_48_50 = icmp i32 Slt i_44, temp_47_50 
    slt     s4,a6,s3
                    #      br i1 temp_48_50, label while.body_51, label while.exit_51 
    bnez    s4, .while.body_51
    j       .while.exit_51
                    #      label while.body_51: 
.while.body_51:
                    #      new_var temp_49_53:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_49_53 = load *to_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label to as ptr to reg
    la      a4, to
                    #occupy reg a4 with *to_0
    lw      s2,0(a4)
                    #      new_var temp_50_53:ptr->i32 
                    #      new_var temp_51_53:i32 
                    #      temp_50_53 = getelementptr temp_49_53:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      s5, 0
    li      s6, 10
    add     s5,s5,s2
    li      s7, 1
    add     s5,s5,s2
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_51_53 = load temp_50_53:ptr->i32 
    lw      s8,0(s5)
                    #      new_var temp_52_53:Array:i32:[Some(10_0)] 
                    #      temp_52_53 = load *used_0:ptr->i32 
                    #   load label used as ptr to reg
    la      s9, used
                    #occupy reg s9 with *used_0
    lw      s10,0(s9)
                    #      new_var temp_53_53:ptr->i32 
                    #      new_var temp_54_53:i32 
                    #      temp_53_53 = getelementptr temp_52_53:Array:i32:[Some(10_0)] [Some(temp_51_53)] 
    li      s11, 0
                    #found literal reg Some(s7) already exist with 1_0
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_54_53 = load temp_53_53:ptr->i32 
    lw      a4,0(s11)
                    #      new_var temp_55_1500:i1 
                    #      temp_55_1500 = icmp i32 Ne temp_54_53, 0_0 
    li      s6, 0
    xor     s7,a4,s6
    snez    s7, s7
                    #      br i1 temp_55_1500, label branch_true_54, label branch_false_54 
    bnez    s7, .branch_true_54
    j       .branch_false_54
                    #      label branch_true_54: 
.branch_true_54:
                    #      new_var temp_56_55:i32 
                    #      temp_56_55 = Add i32 i_44, 1_0 
    li      s6, 1
    add     s9,a6,s6
                    #      i_44 = i32 temp_56_55 
    mv      a6, s9
                    #      jump label: while.exit_51 
    li      s10, 4264
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 4216
    add     s11,sp,s11
    sd      s11,0(s11)
    li      s7, 4211
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a4, 4212
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s2, 4676
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s9, 4204
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s8, 4268
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s5, 4272
    add     s5,sp,s5
    sd      s5,0(s5)
    j       .while.exit_51
                    #      label branch_false_54: 
.branch_false_54:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_57_58:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_57_58 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label cap as ptr to reg
    la      s6, cap
                    #occupy reg s6 with *cap_0
    lw      s9,0(s6)
                    #      new_var temp_58_58:ptr->i32 
                    #      new_var temp_59_58:i32 
                    #      temp_58_58 = getelementptr temp_57_58:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      s6, 0
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10
    li      a1, 4760
    add     a1,sp,a1
    sw      a1,0(a1)
    add     s6,s6,s9
    li      a0, 1
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_59_58 = load temp_58_58:ptr->i32 
    lw      a0,0(s6)
                    #      new_var temp_60_58:i1 
                    #      temp_60_58 = icmp i32 Sle temp_59_58, 0_0 
    li      a1, 4764
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 4756
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a1,a0
    xori    a2,a2,1
                    #      br i1 temp_60_58, label branch_true_59, label branch_false_59 
    bnez    a2, .branch_true_59
    j       .branch_false_59
                    #      label branch_true_59: 
.branch_true_59:
                    #      new_var temp_61_60:i32 
                    #      temp_61_60 = Add i32 i_44, 1_0 
    li      a1, 1
    li      a0, 3788
    add     a0,sp,a0
    sw      a0,0(a0)
    add     a0,a6,a1
                    #      i_44 = i32 temp_61_60 
    mv      a6, a0
                    #      jump label: while.exit_51 
    li      s10, 4264
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 4216
    add     s11,sp,s11
    sd      s11,0(s11)
    li      s7, 4211
    add     s7,sp,s7
    sb      s7,0(s7)
    li      a0, 3780
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 4764
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a4, 4212
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a2, 3787
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a1, 4764
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 4756
    add     a1,sp,a1
    lw      a2,0(a1)
    li      s2, 4676
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a1, 4756
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a3, 4744
    add     a3,sp,a3
    sd      a3,0(a3)
    li      a3, 4760
    add     a3,sp,a3
    lw      a1,0(a3)
    li      s9, 4200
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s8, 4268
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s6, 3792
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s5, 4272
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a3, 4760
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a5, 4736
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a5, 4744
    add     a5,sp,a5
    ld      a3,0(a5)
    j       .while.exit_51
                    #      label branch_false_59: 
.branch_false_59:
                    #      label L7_0: 
.L7_0:
                    #      new_var min_f_52:i32 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_62_64:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_62_64 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label cap as ptr to reg
    la      a1, cap
                    #occupy reg a1 with *cap_0
    li      a0, 3788
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,0(a1)
                    #      new_var temp_63_64:ptr->i32 
                    #      new_var temp_64_64:i32 
                    #      temp_63_64 = getelementptr temp_62_64:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a1, 0
    li      a0, 3772
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10
    li      a2, 3787
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 4744
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_64_64 = load temp_63_64:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_65_64:i1 
                    #      temp_65_64 = icmp i32 Slt f_42, temp_64_64 
    li      a0, 3364
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 3368
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 4764
    add     a2,sp,a2
    sw      a2,0(a2)
    slt     a2,a0,a1
                    #      br i1 temp_65_64, label branch_true_65, label branch_false_65 
    bnez    a2, .branch_true_65
    j       .branch_false_65
                    #      label branch_true_65: 
.branch_true_65:
                    #      min_f_52 = i32 f_42 
    li      a1, 3364
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_65: 
.branch_false_65:
                    #      new_var temp_94_64:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_94_64 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
    li      a0, 4756
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label cap as ptr to reg
    la      a0, cap
                    #occupy reg a0 with *cap_0
    li      a1, 3364
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_95_64:ptr->i32 
                    #      new_var temp_96_64:i32 
                    #      temp_95_64 = getelementptr temp_94_64:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a0, 0
    sw      a1,416(sp)
    li      a1, 10
    li      a2, 3363
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 3772
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_96_64 = load temp_95_64:ptr->i32 
    lw      a1,0(a0)
                    #      min_f_52 = i32 temp_96_64 
    sd      a0,8(sp)
    mv      a0, a1
                    #      jump label: L9_0 
    li      a0, 3776
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,4(sp)
    li      a1, 4756
    add     a1,sp,a1
    lw      a0,0(a1)
    li      a2, 4764
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a1, 4756
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3363
    add     a1,sp,a1
    lb      a2,0(a1)
    li      a1, 3363
    add     a1,sp,a1
    sb      a1,0(a1)
    sw      a3,416(sp)
    li      a3, 3776
    add     a3,sp,a3
    lw      a1,0(a3)
    li      a3, 3776
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 4212
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 3772
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_66_52:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_66_52 = load *to_0:ptr->Array:i32:[Some(10_0)] 
    li      a0, 4756
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label to as ptr to reg
    la      a0, to
                    #occupy reg a0 with *to_0
    li      a1, 3776
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_67_52:ptr->i32 
                    #      new_var temp_68_52:i32 
                    #      temp_67_52 = getelementptr temp_66_52:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a0, 0
    li      a1, 3356
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 10
    li      a2, 3363
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 3772
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_68_52 = load temp_67_52:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_69_52:i32 
                    #      temp_69_52 =  Call i32 dfs_0(temp_68_52, t_42, min_f_52) 
                    #saved register dumping to mem
    li      s1, 4688
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 4676
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 4684
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 4683
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 4272
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 3792
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 4211
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s8, 4268
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 4200
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 4264
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 4216
    add     s11,sp,s11
    sd      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2952
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
    li      a1, 2948
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s1, 4760
    add     s1,sp,s1
    lw      a1,0(s1)
    li      a2, 4764
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s2, 3776
    add     s2,sp,s2
    lw      a2,0(s2)
                    #arg load ended
    call    dfs
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      d_52 = i32 temp_69_52 
    mv      a1, a0
                    #      jump label: L11_0 
    j       .L11_0
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_70_69:i1 
                    #      temp_70_69 = icmp i32 Sgt d_52, 0_0 
    li      a2, 0
    slt     s3,a2,a1
                    #      br i1 temp_70_69, label branch_true_70, label branch_false_70 
    bnez    s3, .branch_true_70
    j       .branch_false_70
                    #      label branch_true_70: 
.branch_true_70:
                    #      new_var temp_71_71:ptr->i32 
                    #      temp_71_71 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a2, 0
    li      s4, 10
    mul     s6,s4,s5
                    #occupy reg s6 with cap_0
    add     a2,a2,s6
    li      s7, 1
    mul     s8,s7,a6
                    #occupy reg s8 with cap_0
    add     a2,a2,s8
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_72_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_72_71 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label cap as ptr to reg
    la      s9, cap
                    #occupy reg s9 with *cap_0
    lw      s10,0(s9)
                    #      new_var temp_73_71:ptr->i32 
                    #      new_var temp_74_71:i32 
                    #      temp_73_71 = getelementptr temp_72_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      s11, 0
                    #found literal reg Some(s4) already exist with 10_0
    add     s11,s11,s10
                    #found literal reg Some(s7) already exist with 1_0
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_74_71 = load temp_73_71:ptr->i32 
    lw      s4,0(s11)
                    #      new_var temp_75_71:i32 
                    #      temp_75_71 = Sub i32 temp_74_71, d_52 
    sub     s6,s4,a1
                    #      store temp_75_71:i32 temp_71_71:ptr->i32 
    sd      s6,0(a2)
                    #      mu cap_0:332 
                    #      cap_0 = chi cap_0:332 
                    #      new_var temp_76_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_76_71 = load *rev_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label rev as ptr to reg
    la      s7, rev
                    #occupy reg s7 with *rev_0
    lw      s8,0(s7)
                    #      new_var temp_77_71:ptr->i32 
                    #      new_var temp_78_71:i32 
                    #      temp_77_71 = getelementptr temp_76_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      s7, 0
    li      s9, 10
    add     s7,s7,s8
    li      s9, 1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_78_71 = load temp_77_71:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_79_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_79_71 = load *to_0:ptr->Array:i32:[Some(10_0)] 
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label to as ptr to reg
    la      a0, to
                    #occupy reg a0 with *to_0
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_80_71:ptr->i32 
                    #      new_var temp_81_71:i32 
                    #      temp_80_71 = getelementptr temp_79_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a0, 0
    li      a1, 2096
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 10
    li      a2, 2928
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,s5
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_81_71 = load temp_80_71:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_82_71:ptr->i32 
                    #      temp_82_71 = getelementptr cap_0:Array:i32:[Some(10_0), Some(10_0)] [Some(temp_81_71), Some(temp_78_71)] 
    sd      a0,1688(sp)
    li      a0, 0
    sw      a1,1684(sp)
    li      a1, 10
    li      a2, 2096
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 3356
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with cap_0
    add     a0,a0,a3
    li      a1, 1
    mul     a3,a1,s9
                    #occupy reg a3 with cap_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_83_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_83_71 = load *rev_0:ptr->Array:i32:[Some(10_0)] 
                    #   load label rev as ptr to reg
    la      a1, rev
                    #occupy reg a1 with *rev_0
    lw      a3,0(a1)
                    #      new_var temp_84_71:ptr->i32 
                    #      new_var temp_85_71:i32 
                    #      temp_84_71 = getelementptr temp_83_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a1, 0
    sd      a0,1672(sp)
    li      a0, 10
    add     a1,a1,a3
    li      a0, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_85_71 = load temp_84_71:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_86_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_86_71 = load *to_0:ptr->Array:i32:[Some(10_0)] 
    sw      a0,1260(sp)
                    #   load label to as ptr to reg
    la      a0, to
                    #occupy reg a0 with *to_0
    sd      a1,1264(sp)
    lw      a1,0(a0)
                    #      new_var temp_87_71:ptr->i32 
                    #      new_var temp_88_71:i32 
                    #      temp_87_71 = getelementptr temp_86_71:Array:i32:[Some(10_0), Some(10_0)] [Some(s_42), Some(i_44)] 
    li      a0, 0
    sw      a1,1256(sp)
    li      a1, 10
    sw      a2,1684(sp)
    mul     a2,a1,s5
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_88_71 = load temp_87_71:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_89_71:Array:i32:[Some(10_0), Some(10_0)] 
                    #      temp_89_71 = load *cap_0:ptr->Array:i32:[Some(10_0)] 
    sd      a0,848(sp)
                    #   load label cap as ptr to reg
    la      a0, cap
                    #occupy reg a0 with *cap_0
    sw      a1,844(sp)
    lw      a1,0(a0)
                    #      new_var temp_90_71:ptr->i32 
                    #      new_var temp_91_71:i32 
                    #      temp_90_71 = getelementptr temp_89_71:Array:i32:[Some(10_0), Some(10_0)] [Some(temp_88_71), Some(temp_85_71)] 
    li      a0, 0
    sw      a1,840(sp)
    li      a1, 10
    sw      a2,1256(sp)
    sw      a3,1668(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    sw      a2,844(sp)
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_91_71 = load temp_90_71:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_92_71:i32 
                    #      temp_92_71 = Add i32 temp_91_71, d_52 
    sd      a0,432(sp)
    sw      a2,1260(sp)
    add     a2,a1,a0
                    #      store temp_92_71:i32 temp_82_71:ptr->i32 
    li      a0, 2940
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a2,0(a0)
                    #      mu cap_0:386 
                    #      cap_0 = chi cap_0:386 
                    #      ret d_52 
    sd      a0,1672(sp)
    li      a0, 4776
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 4776
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 4768
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 4768
    add     a0,sp,a0
    sd      a0,0(a0)
    sw      a1,428(sp)
    li      a1, 4784
    li      a1, 4784
    add     sp,a1,sp
    ret
                    #      label branch_false_70: 
.branch_false_70:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_93_52:i32 
                    #      temp_93_52 = Add i32 i_44, 1_0 
    li      a2, 1
    add     s4,a6,a2
                    #      i_44 = i32 temp_93_52 
    mv      a6, s4
                    #      jump label: while.head_51 
    li      a5, 4736
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s3, 2939
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s5, 4764
    add     s5,sp,s5
    lw      a0,0(s5)
    li      a4, 4212
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s6, 4756
    add     s6,sp,s6
    lw      a2,0(s6)
    li      s2, 3776
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, s1
    li      s1, 4760
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s6, 4756
    add     s6,sp,s6
    sw      s6,0(s6)
    sw      s4,420(sp)
    li      s5, 4764
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a3, 3356
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a6, 4740
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a6, 4744
    add     a6,sp,a6
    ld      a3,0(a6)
    j       .while.head_51
                    #      label while.exit_51: 
.while.exit_51:
                    #      ret 0_0 
    li      a4, 4776
    add     a4,sp,a4
    ld      ra,0(a4)
    li      s2, 4768
    add     s2,sp,s2
    ld      s0,0(s2)
    li      a0, 4764
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      s5, 4784
    li      s5, 4784
    add     sp,s5,sp
    ret
                    #      Define max_flow_0 [s_77, t_77] -> max_flow_ret_0 
    .globl max_flow
    .type max_flow,@function
max_flow:
                    #mem layout:|ra_max_flow:8|s0_max_flow:8|s:4|t:4|flow:4|temp_97:1|none:3|temp_98:40|temp_99:4|f:4|temp_100:1|none:3|temp_101:4
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
                    #      alloc i32 flow_79 
                    #      alloc i1 temp_97_2673 
                    #      alloc Array:i32:[Some(10_0)] temp_98_83 
                    #      alloc i32 temp_99_83 
                    #      alloc i32 f_83 
                    #      alloc i1 temp_100_86 
                    #      alloc i32 temp_101_83 
                    #      label L1_0: 
.L1_0:
                    #      flow_79 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_82 
    j       .while.head_82
                    #      label while.head_82: 
.while.head_82:
                    #      new_var temp_97_2673:i1 
                    #      temp_97_2673 = icmp i32 Ne 1_0, 0_0 
    li      a3, 1
    li      a4, 0
    xor     a5,a3,a4
    snez    a5, a5
                    #      br i1 temp_97_2673, label while.body_82, label while.exit_82 
    bnez    a5, .while.body_82
    j       .while.exit_82
                    #      label while.body_82: 
.while.body_82:
                    #      new_var temp_98_83:Array:i32:[Some(10_0)] 
                    #      temp_98_83 = load *used_0:ptr->i32 
                    #   load label used as ptr to reg
    la      a3, used
                    #occupy reg a3 with *used_0
    lw      a4,0(a3)
                    #       Call void my_memset_0(temp_98_83, 0_0, 10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,68(sp)
    mv      a0, a4
    sw      a1,64(sp)
    li      a1, 0
    sw      a2,60(sp)
    li      a2, 10
                    #arg load ended
    call    my_memset
                    #      new_var temp_99_83:i32 
                    #      temp_99_83 =  Call i32 dfs_0(s_77, t_77, 0x70000000_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    lw      a0,68(sp)
    lw      a1,64(sp)
    li      a2, 0x70000000
                    #arg load ended
    call    dfs
    sw      a0,12(sp)
                    #      f_83 = i32 temp_99_83 
    mv      a1, a0
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_100_86:i1 
                    #      temp_100_86 = icmp i32 Eq f_83, 0_0 
    li      a2, 0
    xor     a3,a1,a2
    seqz    a3, a3
                    #      br i1 temp_100_86, label branch_true_87, label branch_false_87 
    bnez    a3, .branch_true_87
    j       .branch_false_87
                    #      label branch_true_87: 
.branch_true_87:
                    #      ret flow_79 
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a0,12(sp)
    addi    sp,sp,88
    ret
                    #      label branch_false_87: 
.branch_false_87:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_101_83:i32 
                    #      temp_101_83 = Add i32 flow_79, f_83 
    add     a6,a2,a1
                    #      flow_79 = i32 temp_101_83 
    mv      a2, a6
                    #      jump label: while.head_82 
    sw      a0,12(sp)
    lw      a0,68(sp)
    sb      a5,59(sp)
    sb      a3,7(sp)
    sw      a6,0(sp)
    sw      a4,52(sp)
    sw      a1,8(sp)
    lw      a1,64(sp)
    j       .while.head_82
                    #      label while.exit_82: 
.while.exit_82:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|V:4|E:4|temp_102:4|temp_103:4|temp_104:40|temp_105:1|none:3|u:4|v:4|temp_106:4|temp_107:4|temp_108:4|c:4|temp_109:4|temp_110:4|none:4
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
                    #      alloc i32 V_91 
                    #      alloc i32 E_91 
                    #      alloc i32 temp_102_91 
                    #      alloc i32 temp_103_91 
                    #      alloc Array:i32:[Some(10_0)] temp_104_91 
                    #      alloc i1 temp_105_96 
                    #      alloc i32 u_98 
                    #      alloc i32 v_98 
                    #      alloc i32 temp_106_98 
                    #      alloc i32 temp_107_98 
                    #      alloc i32 temp_108_98 
                    #      alloc i32 c_98 
                    #      alloc i32 temp_109_98 
                    #      alloc i32 temp_110_91 
                    #      label L0_0: 
.L0_0:
                    #      new_var V_91:i32 
                    #      new_var E_91:i32 
                    #      new_var temp_102_91:i32 
                    #      temp_102_91 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,84(sp)
                    #      V_91 = i32 temp_102_91 
    mv      a1, a0
                    #      new_var temp_103_91:i32 
                    #      temp_103_91 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,84(sp)
    sw      a0,80(sp)
                    #      E_91 = i32 temp_103_91 
    mv      a2, a0
                    #      new_var temp_104_91:Array:i32:[Some(10_0)] 
                    #      temp_104_91 = load *size_0:ptr->i32 
                    #   load label size as ptr to reg
    la      a3, size
                    #occupy reg a3 with *size_0
    lw      a4,0(a3)
                    #       Call void my_memset_0(temp_104_91, 0_0, 10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,80(sp)
    mv      a0, a4
    sw      a1,92(sp)
    li      a1, 0
    sw      a2,88(sp)
    li      a2, 10
                    #arg load ended
    call    my_memset
                    #      jump label: while.head_97 
    j       .while.head_97
                    #      label while.head_97: 
.while.head_97:
                    #      new_var temp_105_96:i1 
                    #      temp_105_96 = icmp i32 Sgt E_91, 0_0 
    li      a1, 0
    slt     a2,a1,a0
                    #      br i1 temp_105_96, label while.body_97, label while.exit_97 
    bnez    a2, .while.body_97
    j       .while.exit_97
                    #      label while.body_97: 
.while.body_97:
                    #      new_var u_98:i32 
                    #      new_var v_98:i32 
                    #      new_var temp_106_98:i32 
                    #      temp_106_98 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,88(sp)
    sw      a0,24(sp)
                    #      u_98 = i32 temp_106_98 
    mv      a1, a0
                    #      new_var temp_107_98:i32 
                    #      temp_107_98 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,24(sp)
    sw      a0,20(sp)
                    #      v_98 = i32 temp_107_98 
    mv      a3, a0
                    #      new_var temp_108_98:i32 
                    #      temp_108_98 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
    sw      a0,16(sp)
                    #      c_98 = i32 temp_108_98 
    mv      a5, a0
                    #       Call void add_node_0(u_98, v_98, c_98) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    mv      a0, a1
    sw      a1,32(sp)
    mv      a1, a3
    sb      a2,39(sp)
    mv      a2, a5
                    #arg load ended
    call    add_node
                    #      new_var temp_109_98:i32 
                    #      temp_109_98 = Sub i32 E_91, 1_0 
    li      a1, 1
    sub     a2,a0,a1
                    #      E_91 = i32 temp_109_98 
    mv      a0, a2
                    #      jump label: while.head_97 
    sw      a0,88(sp)
    sw      a2,8(sp)
    sw      a3,28(sp)
    sw      a5,12(sp)
    j       .while.head_97
                    #      label while.exit_97: 
.while.exit_97:
                    #      new_var temp_110_91:i32 
                    #      temp_110_91 =  Call i32 max_flow_0(1_0, V_91) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,88(sp)
    li      a0, 1
    lw      a1,92(sp)
                    #arg load ended
    call    max_flow
    sw      a0,4(sp)
                    #       Call void putint_0(temp_110_91) 
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
    ld      ra,104(sp)
    ld      s0,96(sp)
    li      a0, 0
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl used
                    #      global Array:i32:[Some(10_0)] used_0 
    .type used,@object
used:
    .zero 40
    .align 4
    .globl rev
                    #      global Array:i32:[Some(10_0), Some(10_0)] rev_0 
    .type rev,@object
rev:
    .zero 400
    .align 4
    .globl cap
                    #      global Array:i32:[Some(10_0), Some(10_0)] cap_0 
    .type cap,@object
cap:
    .zero 400
    .align 4
    .globl to
                    #      global Array:i32:[Some(10_0), Some(10_0)] to_0 
    .type to,@object
to:
    .zero 400
    .align 4
    .globl size
                    #      global Array:i32:[Some(10_0)] size_0 
    .type size,@object
size:
    .zero 40
    .align 4
    .globl INF
                    #      global i32 INF_0 
    .type INF,@object
INF:
    .word 0
