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


.section ___func
    .text
    .align 4
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     351  Define putstr_0 "str_20," -> putstr_ret_0 
    .globl putstr
    .type putstr,@function
putstr:
              #                    mem layout:|ra_putstr:8 at 64|s0_putstr:8 at 56|str:8 at 48|str:8 at 40|iNd__1X _s22 _i0:4 at 36|iNd__1X _s22 _i2:4 at 32|temp_110_ptr_of_str_20:8 at 24|temp_112_arithop _s27 _i0:4 at 20|none:4 at 16|temp_113_ptr_of_str_20:8 at 8|temp_114_ele_of_str_20 _s25 _i0:4 at 4|temp_115_ _s2666 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-72
              #                    store to ra_putstr_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_putstr_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     353  alloc i32 [iNd__1X_22] 
              #                     358  alloc ptr->i32 [temp_110_ptr_of_str_20_27] 
              #                     360  alloc i32 [temp_111_ele_of_str_20_27] 
              #                     364  alloc i32 [temp_112_arithop_27] 
              #                     367  alloc ptr->i32 [temp_113_ptr_of_str_20_25] 
              #                     369  alloc i32 [temp_114_ele_of_str_20_25] 
              #                     372  alloc i1 [temp_115__2666] 
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     350   
              #                     354   
              #                     355  (nop) 
              #                     453  iNd__1X_22_2 = i32 0_0 
              #                    occupy a1 with iNd__1X_22_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     374  label while.head_26: 
.while.head_26:
              #                     368  temp_113_ptr_of_str_20_25 = GEP str_20:Array:i32:[None] [Some(iNd__1X_22_2)] 
              #                    occupy a2 with temp_113_ptr_of_str_20_25
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with iNd__1X_22_2
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with str_20
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     370  temp_114_ele_of_str_20_25_0 = load temp_113_ptr_of_str_20_25:ptr->i32 
              #                    occupy a2 with temp_113_ptr_of_str_20_25
              #                    occupy a4 with temp_114_ele_of_str_20_25_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     371  mu str_20:370 
              #                     373  temp_115__2666_0 = icmp i32 Ne temp_114_ele_of_str_20_25_0, 0_0 
              #                    occupy a4 with temp_114_ele_of_str_20_25_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_115__2666_0
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                     377  br i1 temp_115__2666_0, label while.body_26, label while.exit_26 
              #                    occupy a6 with temp_115__2666_0
              #                    free a6
              #                    occupy a6 with temp_115__2666_0
    bnez    a6, .while.body_26
              #                    free a6
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22_2, tracked: true } |     a2:Freed { symidx: temp_113_ptr_of_str_20_25, tracked: true } |     a4:Freed { symidx: temp_114_ele_of_str_20_25_0, tracked: true } |     a6:Freed { symidx: temp_115__2666_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     375  label while.body_26: 
.while.body_26:
              #                     359  (nop) 
              #                     361  (nop) 
              #                     362  mu str_20:361 
              #                     363   Call void putch_0(temp_114_ele_of_str_20_25_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with str_20
              #                    store to str_20 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with str_20
              #                    occupy a1 with iNd__1X_22_2
              #                    store to iNd__1X_22_2 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with iNd__1X_22_2
              #                    occupy a2 with temp_113_ptr_of_str_20_25
              #                    store to temp_113_ptr_of_str_20_25 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_113_ptr_of_str_20_25
              #                    occupy a4 with temp_114_ele_of_str_20_25_0
              #                    store to temp_114_ele_of_str_20_25_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_114_ele_of_str_20_25_0
              #                    occupy a6 with temp_115__2666_0
              #                    store to temp_115__2666_0 in mem offset legal
    sb      a6,3(sp)
              #                    release a6 with temp_115__2666_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_114_ele_of_str_20_25_0_0
              #                    load from temp_114_ele_of_str_20_25_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putch
              #                     365  temp_112_arithop_27_0 = Add i32 iNd__1X_22_2, 1_0 
              #                    occupy a0 with iNd__1X_22_2
              #                    load from iNd__1X_22_2 in mem


    lw      a0,32(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_112_arithop_27_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     366  (nop) 
              #                     454  iNd__1X_22_2 = i32 temp_112_arithop_27_0 
              #                    occupy a2 with temp_112_arithop_27_0
              #                    occupy a0 with iNd__1X_22_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_26 
              #                    occupy a2 with temp_112_arithop_27_0
              #                    store to temp_112_arithop_27_0 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_112_arithop_27_0
              #                    occupy a0 with iNd__1X_22_2
              #                    store to iNd__1X_22_2 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with iNd__1X_22_2
              #                    occupy a0 with str_20
              #                    load from str_20 in mem
    ld      a0,40(sp)
              #                    occupy a1 with iNd__1X_22_2
              #                    load from iNd__1X_22_2 in mem


    lw      a1,32(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22_2, tracked: true } |     a2:Freed { symidx: temp_113_ptr_of_str_20_25, tracked: true } |     a4:Freed { symidx: temp_114_ele_of_str_20_25_0, tracked: true } |     a6:Freed { symidx: temp_115__2666_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     376  label while.exit_26: 
.while.exit_26:
              #                     457  untrack str_20 
              #                    occupy a0 with str_20
              #                    release a0 with str_20
              #                     357  ret iNd__1X_22_2 
              #                    load from ra_putstr_0 in mem
    ld      ra,64(sp)
              #                    load from s0_putstr_0 in mem
    ld      s0,56(sp)
              #                    occupy a1 with iNd__1X_22_2
              #                    store to iNd__1X_22_2 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with iNd__1X_22_2
              #                    occupy a0 with iNd__1X_22_2
              #                    load from iNd__1X_22_2 in mem


    lw      a0,32(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     352  Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 80|s0_main:8 at 72|temp_116_ret_of_putstr _s32 _i0:4 at 68|i _s32 _i1:4 at 64|i _s32 _i3:4 at 60|temp_117_arithop _s37 _i0:4 at 56|temp_118_arithop _s37 _i0:4 at 52|temp_119_arithop _s37 _i0:4 at 48|temp_120_arithop _s37 _i0:4 at 44|temp_121_arithop _s37 _i0:4 at 40|temp_122_ptr_of_*N4__mE____0:8 at 32|temp_123_ret_of_putstr _s42 _i0:4 at 28|temp_124_ret_of_putstr _s42 _i0:4 at 24|temp_125_ptr_of_*N4__mE____0:8 at 16|temp_126_ret_of_putstr _s42 _i0:4 at 12|temp_127_ret_of_putstr _s42 _i0:4 at 8|temp_129_cmp _s40 _i0:1 at 7|temp_130_cmp _s48 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-88
              #                    store to ra_main_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     380  alloc i32 [temp_116_ret_of_putstr_32] 
              #                     383  alloc i32 [i_32] 
              #                     386  alloc i32 [temp_117_arithop_37] 
              #                     389  alloc i32 [__37] 
              #                     390  alloc i32 [temp_118_arithop_37] 
              #                     393  alloc i32 [___37] 
              #                     394  alloc i32 [temp_119_arithop_37] 
              #                     396  alloc i32 [temp_120_arithop_37] 
              #                     398  alloc i32 [temp_121_arithop_37] 
              #                     401  alloc ptr->i32 [temp_122_ptr_of_*N4__mE____0_42] 
              #                     403  alloc i32 [temp_123_ret_of_putstr_42] 
              #                     405  alloc i32 [temp_124_ret_of_putstr_42] 
              #                     407  alloc ptr->i32 [temp_125_ptr_of_*N4__mE____0_42] 
              #                     409  alloc i32 [temp_126_ret_of_putstr_42] 
              #                     411  alloc i32 [temp_127_ret_of_putstr_42] 
              #                     413  alloc i1 [temp_128__2931] 
              #                     421  alloc i1 [temp_129_cmp_40] 
              #                     426  alloc i1 [temp_130_cmp_48] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     381  temp_116_ret_of_putstr_32_0 =  Call i32 putstr_0(*__HELLO_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*__HELLO_0_0
              #                       load label __HELLO as ptr to reg
    la      a0, __HELLO
              #                    arg load ended


    call    putstr
              #                     431  mu __HELLO_0_0:381 
              #                     432  __HELLO_0_1 = chi __HELLO_0_0:381 
              #                     382  (nop) 
              #                     455  i_32_1 = i32 0_0 
              #                    occupy a1 with i_32_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     415  label while.head_36: 
.while.head_36:
              #                     414  (nop) 
              #                          jump label: while.body_36 
    j       .while.body_36
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     416  label while.body_36: 
.while.body_36:
              #                     387  temp_117_arithop_37_0 = Div i32 i_32_1, 6_0 
              #                    occupy a1 with i_32_1
              #                    occupy a2 with 6_0
    li      a2, 6
              #                    occupy a3 with temp_117_arithop_37_0
    divw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     388  (nop) 
              #                     391  temp_118_arithop_37_0 = Mod i32 i_32_1, 6_0 
              #                    occupy a1 with i_32_1
              #                    found literal reg Some(a2) already exist with 6_0
              #                    occupy a2 with 6_0
              #                    occupy a4 with temp_118_arithop_37_0
    rem     a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     392  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     422  temp_129_cmp_40_0 = icmp i32 Ne temp_117_arithop_37_0, temp_118_arithop_37_0 
              #                    occupy a3 with temp_117_arithop_37_0
              #                    occupy a4 with temp_118_arithop_37_0
              #                    occupy a2 with temp_129_cmp_40_0
    xor     a2,a3,a4
    snez    a2, a2
              #                    free a3
              #                    free a4
              #                    free a2
              #                     425  br i1 temp_129_cmp_40_0, label branch_true_41, label branch_false_41 
              #                    occupy a2 with temp_129_cmp_40_0
              #                    free a2
              #                    occupy a2 with temp_129_cmp_40_0
    bnez    a2, .branch_true_41
              #                    free a2
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     423  label branch_true_41: 
.branch_true_41:
              #                     459  untrack temp_129_cmp_40_0 
              #                    occupy a2 with temp_129_cmp_40_0
              #                    release a2 with temp_129_cmp_40_0
              #                     402  temp_122_ptr_of_*N4__mE____0_42 = GEP *N4__mE____0:Array:i32:[None, Some(50_0)] [Some(temp_117_arithop_37_0)] 
              #                    occupy a2 with temp_122_ptr_of_*N4__mE____0_42
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with 50_0
    li      a6, 50
              #                    occupy a3 with temp_117_arithop_37_0
    mul     a5,a6,a3
              #                    free a6
              #                    free a3
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a7 with *N4__mE____0
              #                       load label N4__mE___ as ptr to reg
    la      a7, N4__mE___
              #                    occupy reg a7 with *N4__mE____0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                     460  untrack temp_117_arithop_37_0 
              #                    occupy a3 with temp_117_arithop_37_0
              #                    release a3 with temp_117_arithop_37_0
              #                     404  temp_123_ret_of_putstr_42_0 =  Call i32 putstr_0(temp_122_ptr_of_*N4__mE____0_42) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_116_ret_of_putstr_32_0
              #                    store to temp_116_ret_of_putstr_32_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_116_ret_of_putstr_32_0
              #                    occupy a1 with i_32_1
              #                    store to i_32_1 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with i_32_1
              #                    occupy a2 with temp_122_ptr_of_*N4__mE____0_42
              #                    store to temp_122_ptr_of_*N4__mE____0_42 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_122_ptr_of_*N4__mE____0_42
              #                    occupy a4 with temp_118_arithop_37_0
              #                    store to temp_118_arithop_37_0 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with temp_118_arithop_37_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_122_ptr_of_*N4__mE____0_42_0
              #                    load from temp_122_ptr_of_*N4__mE____0_42 in mem
    ld      a0,32(sp)
              #                    arg load ended


    call    putstr
              #                     462  untrack temp_122_ptr_of_*N4__mE____0_42 
              #                     433  mu N4__mE____0_1:404 
              #                     434  N4__mE____0_2 = chi N4__mE____0_1:404 
              #                     406  temp_124_ret_of_putstr_42_0 =  Call i32 putstr_0(*saY_HeI10_To_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_123_ret_of_putstr_42_0
              #                    store to temp_123_ret_of_putstr_42_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_123_ret_of_putstr_42_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*saY_HeI10_To_0_0
              #                       load label saY_HeI10_To as ptr to reg
    la      a0, saY_HeI10_To
              #                    arg load ended


    call    putstr
              #                     435  mu saY_HeI10_To_0_1:406 
              #                     436  saY_HeI10_To_0_2 = chi saY_HeI10_To_0_1:406 
              #                     408  temp_125_ptr_of_*N4__mE____0_42 = GEP *N4__mE____0:Array:i32:[None, Some(50_0)] [Some(temp_118_arithop_37_0)] 
              #                    occupy a1 with temp_125_ptr_of_*N4__mE____0_42
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with 50_0
    li      a3, 50
              #                    occupy a4 with temp_118_arithop_37_0
              #                    load from temp_118_arithop_37_0 in mem


    lw      a4,52(sp)
    mul     a2,a3,a4
              #                    free a3
              #                    free a4
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a5 with *N4__mE____0
              #                       load label N4__mE___ as ptr to reg
    la      a5, N4__mE___
              #                    occupy reg a5 with *N4__mE____0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     461  untrack temp_118_arithop_37_0 
              #                    occupy a4 with temp_118_arithop_37_0
              #                    release a4 with temp_118_arithop_37_0
              #                     410  temp_126_ret_of_putstr_42_0 =  Call i32 putstr_0(temp_125_ptr_of_*N4__mE____0_42) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_124_ret_of_putstr_42_0
              #                    store to temp_124_ret_of_putstr_42_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_124_ret_of_putstr_42_0
              #                    occupy a1 with temp_125_ptr_of_*N4__mE____0_42
              #                    store to temp_125_ptr_of_*N4__mE____0_42 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_125_ptr_of_*N4__mE____0_42
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_125_ptr_of_*N4__mE____0_42_0
              #                    load from temp_125_ptr_of_*N4__mE____0_42 in mem
    ld      a0,16(sp)
              #                    arg load ended


    call    putstr
              #                     463  untrack temp_125_ptr_of_*N4__mE____0_42 
              #                     437  mu N4__mE____0_2:410 
              #                     438  N4__mE____0_3 = chi N4__mE____0_2:410 
              #                     412  temp_127_ret_of_putstr_42_0 =  Call i32 putstr_0(*RET_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_126_ret_of_putstr_42_0
              #                    store to temp_126_ret_of_putstr_42_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_126_ret_of_putstr_42_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*RET_0_0
              #                       load label RET as ptr to reg
    la      a0, RET
              #                    arg load ended


    call    putstr
              #                     439  mu RET_0_1:412 
              #                     440  RET_0_2 = chi RET_0_1:412 
              #                          jump label: branch_false_41 
              #                    occupy a1 with i_32_1
              #                    load from i_32_1 in mem


    lw      a1,64(sp)
              #                    occupy a0 with temp_127_ret_of_putstr_42_0
              #                    store to temp_127_ret_of_putstr_42_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_127_ret_of_putstr_42_0
              #                    occupy a0 with temp_116_ret_of_putstr_32_0
              #                    load from temp_116_ret_of_putstr_32_0 in mem


    lw      a0,68(sp)
              #                    occupy a4 with temp_118_arithop_37_0
              #                    load from temp_118_arithop_37_0 in mem


    lw      a4,52(sp)
              #                    occupy a3 with temp_117_arithop_37_0
              #                    load from temp_117_arithop_37_0 in mem


    lw      a3,56(sp)
              #                    occupy a2 with temp_129_cmp_40_0
              #                    load from temp_129_cmp_40_0 in mem


    lb      a2,7(sp)
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     424  label branch_false_41: 
.branch_false_41:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     395  temp_119_arithop_37_0 = Mul i32 i_32_1, 17_0 
              #                    occupy a5 with temp_119_arithop_37_0
              #                    occupy a1 with i_32_1
              #                    occupy a6 with 17_0
    li      a6, 17
    mulw    a5,a1,a6
              #                    free a1
              #                    free a6
              #                    free a5
              #                     397  temp_120_arithop_37_0 = Add i32 temp_119_arithop_37_0, 23_0 
              #                    occupy a5 with temp_119_arithop_37_0
              #                    occupy a7 with 23_0
    li      a7, 23
              #                    occupy s1 with temp_120_arithop_37_0
    ADDW    s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                     399  temp_121_arithop_37_0 = Mod i32 temp_120_arithop_37_0, 32_0 
              #                    occupy s1 with temp_120_arithop_37_0
              #                    occupy s2 with 32_0
    li      s2, 32
              #                    occupy s3 with temp_121_arithop_37_0
    rem     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     400  (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |     a5:Freed { symidx: temp_119_arithop_37_0, tracked: true } |     s1:Freed { symidx: temp_120_arithop_37_0, tracked: true } |     s3:Freed { symidx: temp_121_arithop_37_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     427  temp_130_cmp_48_0 = icmp i32 Eq temp_121_arithop_37_0, 0_0 
              #                    occupy s3 with temp_121_arithop_37_0
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_130_cmp_48_0
    xor     a7,s3,a6
    seqz    a7, a7
              #                    free s3
              #                    free a6
              #                    free a7
              #                     430  br i1 temp_130_cmp_48_0, label branch_true_49, label branch_false_49 
              #                    occupy a7 with temp_130_cmp_48_0
              #                    free a7
              #                    occupy a7 with temp_130_cmp_48_0
    bnez    a7, .branch_true_49
              #                    free a7
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |     a5:Freed { symidx: temp_119_arithop_37_0, tracked: true } |     a7:Freed { symidx: temp_130_cmp_48_0, tracked: true } |     s1:Freed { symidx: temp_120_arithop_37_0, tracked: true } |     s3:Freed { symidx: temp_121_arithop_37_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     428  label branch_true_49: 
.branch_true_49:
              #                     472  untrack temp_120_arithop_37_0 
              #                    occupy s1 with temp_120_arithop_37_0
              #                    release s1 with temp_120_arithop_37_0
              #                     471  untrack temp_130_cmp_48_0 
              #                    occupy a7 with temp_130_cmp_48_0
              #                    release a7 with temp_130_cmp_48_0
              #                     470  untrack temp_129_cmp_40_0 
              #                    occupy a2 with temp_129_cmp_40_0
              #                    release a2 with temp_129_cmp_40_0
              #                     469  untrack temp_119_arithop_37_0 
              #                    occupy a5 with temp_119_arithop_37_0
              #                    release a5 with temp_119_arithop_37_0
              #                     468  untrack temp_122_ptr_of_*N4__mE____0_42 
              #                     467  untrack temp_121_arithop_37_0 
              #                    occupy s3 with temp_121_arithop_37_0
              #                    release s3 with temp_121_arithop_37_0
              #                     466  untrack temp_118_arithop_37_0 
              #                    occupy a4 with temp_118_arithop_37_0
              #                    release a4 with temp_118_arithop_37_0
              #                     465  untrack temp_125_ptr_of_*N4__mE____0_42 
              #                     464  untrack temp_117_arithop_37_0 
              #                    occupy a3 with temp_117_arithop_37_0
              #                    release a3 with temp_117_arithop_37_0
              #                          jump label: while.exit_36 
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     417  label while.exit_36: 
.while.exit_36:
              #                     458  untrack i_32_1 
              #                    occupy a1 with i_32_1
              #                    release a1 with i_32_1
              #                     385  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,80(sp)
              #                    load from s0_main_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with temp_116_ret_of_putstr_32_0
              #                    store to temp_116_ret_of_putstr_32_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_116_ret_of_putstr_32_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_116_ret_of_putstr_32_0, tracked: true } |     a1:Freed { symidx: i_32_1, tracked: true } |     a2:Freed { symidx: temp_129_cmp_40_0, tracked: true } |     a3:Freed { symidx: temp_117_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_118_arithop_37_0, tracked: true } |     a5:Freed { symidx: temp_119_arithop_37_0, tracked: true } |     a7:Freed { symidx: temp_130_cmp_48_0, tracked: true } |     s1:Freed { symidx: temp_120_arithop_37_0, tracked: true } |     s3:Freed { symidx: temp_121_arithop_37_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     429  label branch_false_49: 
.branch_false_49:
              #                     456  i_32_1 = i32 temp_121_arithop_37_0 
              #                    occupy s3 with temp_121_arithop_37_0
              #                    occupy a1 with i_32_1
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_36 
              #                    occupy a5 with temp_119_arithop_37_0
              #                    store to temp_119_arithop_37_0 in mem offset legal
    sw      a5,48(sp)
              #                    release a5 with temp_119_arithop_37_0
              #                    occupy s3 with temp_121_arithop_37_0
              #                    store to temp_121_arithop_37_0 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_121_arithop_37_0
              #                    occupy a4 with temp_118_arithop_37_0
              #                    store to temp_118_arithop_37_0 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with temp_118_arithop_37_0
              #                    occupy a7 with temp_130_cmp_48_0
              #                    store to temp_130_cmp_48_0 in mem offset legal
    sb      a7,6(sp)
              #                    release a7 with temp_130_cmp_48_0
              #                    occupy a3 with temp_117_arithop_37_0
              #                    store to temp_117_arithop_37_0 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with temp_117_arithop_37_0
              #                    occupy s1 with temp_120_arithop_37_0
              #                    store to temp_120_arithop_37_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_120_arithop_37_0
              #                    occupy a2 with temp_129_cmp_40_0
              #                    store to temp_129_cmp_40_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_129_cmp_40_0
    j       .while.head_36
.section ___var
    .data
    .align 4
    .globl RET
              #                     348  global Array:i32:[Some(5_0)] RET_0 
    .type RET,@object
RET:
    .word 10
    .zero 20
    .align 4
    .globl saY_HeI10_To
              #                     341  global Array:i32:[Some(40_0)] saY_HeI10_To_0 
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
    .zero 104
    .align 4
    .globl N4__mE___
              #                     292  global Array:i32:[Some(6_0), Some(50_0)] N4__mE____0 
    .type N4__mE___,@object
N4__mE___:
    .word 83
    .word 97
    .word 97
    .word 98
    .word 97
    .word 114
    .word 117
    .zero 172
    .word 75
    .word 97
    .word 98
    .word 97
    .word 110
    .zero 180
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
    .zero 152
    .word 65
    .word 114
    .word 97
    .word 105
    .word 103
    .word 117
    .word 109
    .word 97
    .zero 168
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
    .zero 136
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
    .zero 148
    .align 4
    .globl __HELLO
              #                     102  global Array:i32:[Some(100_0)] __HELLO_0 
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
    .zero 292
