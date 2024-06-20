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
                    #      Define putstr_0 [str_20] -> putstr_ret_0 
    .globl putstr
    .type putstr,@function
putstr:
                    #mem layout:|ra_putstr:8|s0_putstr:8|str:8|iNd__1X:4|none:4|temp_162:8|temp_163:4|temp_164:1|none:3|temp_165:8|temp_166:4|temp_167:4
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
                    #      new_var str_20:ptr->i32 
                    #      alloc i32 iNd__1X_22 
                    #      alloc ptr->i32 temp_162_25 
                    #      alloc i32 temp_163_25 
                    #      alloc i1 temp_164_2279 
                    #      alloc ptr->i32 temp_165_27 
                    #      alloc i32 temp_166_27 
                    #      alloc i32 temp_167_27 
                    #      label L4_0: 
.L4_0:
                    #      new_var iNd__1X_22:i32 
                    #      iNd__1X_22 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_162_25:ptr->i32 
                    #      new_var temp_163_25:i32 
                    #      temp_162_25 = getelementptr str_20:ptr->i32 [Some(iNd__1X_22)] 
    li      a2, 0
    li      a3, 1
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_163_25 = load temp_162_25:ptr->i32 
    lw      a4,0(a2)
                    #      new_var temp_164_2279:i1 
                    #      temp_164_2279 = icmp i32 Ne temp_163_25, 0_0 
    li      a5, 0
    xor     a6,a4,a5
    snez    a6, a6
                    #      br i1 temp_164_2279, label while.body_26, label while.exit_26 
    bnez    a6, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_165_27:ptr->i32 
                    #      new_var temp_166_27:i32 
                    #      temp_165_27 = getelementptr str_20:ptr->i32 [Some(iNd__1X_22)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_166_27 = load temp_165_27:ptr->i32 
    lw      s1,0(a7)
                    #       Call void putch_0(temp_166_27) 
                    #saved register dumping to mem
    sw      s1,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,40(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_167_27:i32 
                    #      temp_167_27 = Add i32 iNd__1X_22, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a0,a1,a3
                    #      iNd__1X_22 = i32 temp_167_27 
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.exit_26: 
.while.exit_26:
                    #      ret iNd__1X_22 
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a1,36(sp)
    sw      a0,0(sp)
    addi    sp,sp,64
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_168:400|temp_169:4|i:4|temp_170:1|none:3|temp_171:4|_:4|temp_172:4|__:4|temp_173:1|none:3|temp_174:1200|temp_175:8|temp_176:200|temp_177:4|temp_178:160|temp_179:4|temp_180:1200|temp_181:8|temp_182:200|temp_183:4|temp_184:20|temp_185:4|temp_186:4|temp_187:4|temp_188:4|temp_189:1|none:7
    li      a0, -3480
    li      a0, -3480
    add     sp,a0,sp
    li      a1, 3472
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 3464
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 3480
    li      a3, 3480
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(100_0)] temp_168_32 
                    #      alloc i32 temp_169_32 
                    #      alloc i32 i_32 
                    #      alloc i1 temp_170_2544 
                    #      alloc i32 temp_171_37 
                    #      alloc i32 __37 
                    #      alloc i32 temp_172_37 
                    #      alloc i32 ___37 
                    #      alloc i1 temp_173_40 
                    #      alloc Array:i32:[Some(6_0), Some(50_0)] temp_174_42 
                    #      alloc ptr->i32 temp_175_42 
                    #      alloc Array:i32:[Some(50_0)] temp_176_42 
                    #      alloc i32 temp_177_42 
                    #      alloc Array:i32:[Some(40_0)] temp_178_42 
                    #      alloc i32 temp_179_42 
                    #      alloc Array:i32:[Some(6_0), Some(50_0)] temp_180_42 
                    #      alloc ptr->i32 temp_181_42 
                    #      alloc Array:i32:[Some(50_0)] temp_182_42 
                    #      alloc i32 temp_183_42 
                    #      alloc Array:i32:[Some(5_0)] temp_184_42 
                    #      alloc i32 temp_185_42 
                    #      alloc i32 temp_186_37 
                    #      alloc i32 temp_187_37 
                    #      alloc i32 temp_188_37 
                    #      alloc i1 temp_189_48 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_168_32:Array:i32:[Some(100_0)] 
                    #      temp_168_32 = load *__HELLO_0:ptr->i32 
                    #   load label __HELLO as ptr to reg
    la      a4, __HELLO
                    #occupy reg a4 with *__HELLO_0
    lw      a5,0(a4)
                    #      new_var temp_169_32:i32 
                    #      temp_169_32 =  Call i32 putstr_0(temp_168_32) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a5, 3460
    add     a5,sp,a5
    sw      a5,0(a5)
                    #arg load ended
    call    putstr
    li      a0, 3060
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      i_32 = i32 0_0 
    li      a6, 0
                    #      jump label: while.head_36 
    j       .while.head_36
                    #      label while.head_36: 
.while.head_36:
                    #      new_var temp_170_2544:i1 
                    #      temp_170_2544 = icmp i32 Ne 1_0, 0_0 
    li      a7, 1
    li      s1, 0
    xor     s2,a7,s1
    snez    s2, s2
                    #      br i1 temp_170_2544, label while.body_36, label while.exit_36 
    bnez    s2, .while.body_36
    j       .while.exit_36
                    #      label while.body_36: 
.while.body_36:
                    #      new_var temp_171_37:i32 
                    #      temp_171_37 = Div i32 i_32, 6_0 
    li      s3, 6
    div     s4,a6,s3
                    #      __37 = i32 temp_171_37 
    mv      s5, s4
                    #      new_var temp_172_37:i32 
                    #      temp_172_37 = Mod i32 i_32, 6_0 
                    #found literal reg Some(s3) already exist with 6_0
    rem     s6,a6,s3
                    #      ___37 = i32 temp_172_37 
    mv      s7, s6
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_173_40:i1 
                    #      temp_173_40 = icmp i32 Ne __37, ___37 
    xor     s8,s5,s7
    snez    s8, s8
                    #      br i1 temp_173_40, label branch_true_41, label branch_false_41 
    bnez    s8, .branch_true_41
    j       .branch_false_41
                    #      label branch_true_41: 
.branch_true_41:
                    #      new_var temp_174_42:Array:i32:[Some(6_0), Some(50_0)] 
                    #      temp_174_42 = load *N4__mE____0:ptr->Array:i32:[Some(50_0)] 
                    #   load label N4__mE___ as ptr to reg
    la      s9, N4__mE___
                    #occupy reg s9 with *N4__mE____0
    lw      s10,0(s9)
                    #      new_var temp_175_42:ptr->i32 
                    #      new_var temp_176_42:Array:i32:[Some(50_0)] 
                    #      temp_175_42 = getelementptr temp_174_42:Array:i32:[Some(6_0), Some(50_0)] [Some(__37)] 
    li      s11, 0
    li      a1, 50
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_176_42 = load temp_175_42:ptr->i32 
    lw      a1,0(s11)
                    #      new_var temp_177_42:i32 
                    #      temp_177_42 =  Call i32 putstr_0(temp_176_42) 
                    #saved register dumping to mem
    li      s1, 3055
    add     s1,sp,s1
    sb      s2,0(s1)
    li      s2, 3048
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 3044
    add     s3,sp,s3
    sw      s5,0(s3)
    li      s4, 3040
    add     s4,sp,s4
    sw      s6,0(s4)
    li      s5, 3036
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 3035
    add     s6,sp,s6
    sb      s8,0(s6)
    li      s7, 3028
    add     s7,sp,s7
    sw      s10,0(s7)
    sd      s11,1824(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,1820(sp)
    li      a0, 3060
    add     a0,sp,a0
    sw      a0,0(a0)
                    #arg load ended
    call    putstr
    sw      a0,1620(sp)
                    #      new_var temp_178_42:Array:i32:[Some(40_0)] 
                    #      temp_178_42 = load *saY_HeI10_To_0:ptr->i32 
                    #   load label saY_HeI10_To as ptr to reg
    la      a1, saY_HeI10_To
                    #occupy reg a1 with *saY_HeI10_To_0
    lw      s8,0(a1)
                    #      new_var temp_179_42:i32 
                    #      temp_179_42 =  Call i32 putstr_0(temp_178_42) 
                    #saved register dumping to mem
    sw      s8,1616(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1620(sp)
                    #arg load ended
    call    putstr
    sw      a0,1456(sp)
                    #      new_var temp_180_42:Array:i32:[Some(6_0), Some(50_0)] 
                    #      temp_180_42 = load *N4__mE____0:ptr->Array:i32:[Some(50_0)] 
                    #   load label N4__mE___ as ptr to reg
    la      s1, N4__mE___
                    #occupy reg s1 with *N4__mE____0
    lw      s2,0(s1)
                    #      new_var temp_181_42:ptr->i32 
                    #      new_var temp_182_42:Array:i32:[Some(50_0)] 
                    #      temp_181_42 = getelementptr temp_180_42:Array:i32:[Some(6_0), Some(50_0)] [Some(___37)] 
    li      s3, 0
    li      s4, 50
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_182_42 = load temp_181_42:ptr->i32 
    lw      s6,0(s3)
                    #      new_var temp_183_42:i32 
                    #      temp_183_42 =  Call i32 putstr_0(temp_182_42) 
                    #saved register dumping to mem
    sw      s2,1452(sp)
    sd      s3,248(sp)
    li      s1, 3036
    add     s1,sp,s1
    sw      s5,0(s1)
    sw      s6,244(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1456(sp)
                    #arg load ended
    call    putstr
    sw      a0,44(sp)
                    #      new_var temp_184_42:Array:i32:[Some(5_0)] 
                    #      temp_184_42 = load *RET_0:ptr->i32 
                    #   load label RET as ptr to reg
    la      s2, RET
                    #occupy reg s2 with *RET_0
    lw      s3,0(s2)
                    #      new_var temp_185_42:i32 
                    #      temp_185_42 =  Call i32 putstr_0(temp_184_42) 
                    #saved register dumping to mem
    sw      s3,40(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,44(sp)
                    #arg load ended
    call    putstr
    sw      a0,20(sp)
                    #      jump label: branch_false_41 
    j       .branch_false_41
                    #      label branch_false_41: 
.branch_false_41:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_186_37:i32 
                    #      temp_186_37 = Mul i32 i_32, 17_0 
    li      s1, 17
    mul     s2,a6,s1
                    #      new_var temp_187_37:i32 
                    #      temp_187_37 = Add i32 temp_186_37, 23_0 
    li      s3, 23
    add     s4,s2,s3
                    #      new_var temp_188_37:i32 
                    #      temp_188_37 = Mod i32 temp_187_37, 32_0 
    li      s5, 32
    rem     s6,s4,s5
                    #      i_32 = i32 temp_188_37 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_189_48:i1 
                    #      temp_189_48 = icmp i32 Eq i_32, 0_0 
    li      s7, 0
    xor     s8,a6,s7
    seqz    s8, s8
                    #      br i1 temp_189_48, label branch_true_49, label branch_false_49 
    bnez    s8, .branch_true_49
    j       .branch_false_49
                    #      label branch_true_49: 
.branch_true_49:
                    #      jump label: while.exit_36 
    j       .while.exit_36
                    #      label while.exit_36: 
.while.exit_36:
                    #      ret 0_0 
    li      s9, 3472
    add     s9,sp,s9
    ld      ra,0(s9)
    li      s10, 3464
    add     s10,sp,s10
    ld      s0,0(s10)
    sw      a0,20(sp)
    li      a0, 0
                    #found literal reg Some(a3) already exist with 3480_0
    li      a3, 3480
    add     sp,a3,sp
    ret
                    #      label branch_false_49: 
.branch_false_49:
                    #      jump label: while.head_36 
    j       .while.head_36
.section        .data
    .align 4
    .globl RET
                    #      global Array:i32:[Some(5_0)] RET_0 
    .type RET,@object
RET:
    .word 10
    .zero 20
    .align 4
    .globl saY_HeI10_To
                    #      global Array:i32:[Some(40_0)] saY_HeI10_To_0 
    .type saY_HeI10_To,@object
saY_HeI10_To:
    .word 32
    .word 115
    .word 97
    .word 121
    .word 115
    .word 32
    .word 104
    .word 101
    .word 108
    .word 108
    .word 111
    .word 32
    .word 116
    .word 111
    .word 32
    .word 115
    .word 32
    .word 108
    .word 32
    .word 111
    .word 32
    .zero 140
    .align 4
    .globl N4__mE___
                    #      global Array:i32:[Some(6_0), Some(50_0)] N4__mE____0 
    .type N4__mE___,@object
N4__mE___:
    .word 83
    .word 97
    .word 97
    .word 98
    .word 97
    .word 114
    .word 117
    .word 97
    .word 97
    .word 75
    .word 97
    .word 98
    .word 97
    .word 110
    .word 97
    .word 98
    .word 97
    .word 72
    .word 97
    .word 115
    .word 104
    .word 105
    .word 98
    .word 105
    .word 114
    .word 111
    .word 107
    .word 111
    .word 117
    .word 97
    .word 98
    .word 105
    .word 114
    .word 111
    .word 117
    .word 65
    .word 114
    .word 97
    .word 105
    .word 103
    .word 117
    .word 109
    .word 97
    .word 114
    .word 97
    .word 105
    .word 117
    .word 97
    .word 72
    .word 117
    .word 110
    .word 98
    .word 111
    .word 114
    .word 117
    .word 116
    .word 111
    .word 32
    .word 80
    .word 101
    .word 110
    .word 103
    .word 105
    .word 110
    .word 72
    .word 117
    .word 110
    .word 98
    .word 111
    .word 114
    .word 117
    .word 111
    .word 110
    .word 103
    .word 105
    .word 110
    .word 84
    .word 97
    .word 105
    .word 114
    .word 105
    .word 107
    .word 117
    .word 32
    .word 79
    .word 111
    .word 107
    .word 97
    .word 109
    .word 105
    .word 97
    .word 105
    .word 114
    .word 105
    .word 107
    .word 117
    .word 32
    .word 111
    .word 107
    .word 97
    .word 109
    .word 105
    .zero 1099
    .align 4
    .globl __HELLO
                    #      global Array:i32:[Some(100_0)] __HELLO_0 
    .type __HELLO,@object
__HELLO:
    .word 87
    .word 101
    .word 108
    .word 99
    .word 111
    .word 109
    .word 101
    .word 32
    .word 116
    .word 111
    .word 32
    .word 116
    .word 104
    .word 101
    .word 32
    .word 74
    .word 97
    .word 112
    .word 97
    .word 114
    .word 105
    .word 32
    .word 80
    .word 97
    .word 114
    .word 107
    .word 33
    .word 10
    .word 101
    .word 111
    .word 32
    .word 116
    .word 101
    .word 32
    .word 97
    .word 32
    .word 97
    .word 114
    .zero 363
