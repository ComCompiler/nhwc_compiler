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
              #                    regtab 
              #                          Define putstr_0 [str_20] -> putstr_ret_0 
    .globl putstr
    .type putstr,@function
putstr:
              #                    mem layout:|ra_putstr:8 at 56|s0_putstr:8 at 48|str:8 at 40|iNd__1X:4 at 36|none:4 at 32|temp_106_array_ptr:8 at 24|temp_107_array_ele:4 at 20|temp_108_:1 at 19|none:3 at 16|temp_109_array_ptr:8 at 8|temp_110_array_ele:4 at 4|temp_111_arithop:4 at 0
    addi    sp,sp,-64
              #                    store to ra_putstr_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_putstr_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          new_var str_20:ptr->i32 
              #                          alloc i32 iNd__1X_22 
              #                          alloc ptr->i32 temp_106_array_ptr_25 
              #                          alloc i32 temp_107_array_ele_25 
              #                          alloc i1 temp_108__2279 
              #                          alloc ptr->i32 temp_109_array_ptr_27 
              #                          alloc i32 temp_110_array_ele_27 
              #                          alloc i32 temp_111_arithop_27 
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var iNd__1X_22:i32 
              #                          iNd__1X_22 = i32 0_0 
              #                    occupy a1 with iNd__1X_22
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22, tracked: true } | 
              #                          label while.head_26: 
.while.head_26:
              #                          new_var temp_106_array_ptr_25:ptr->i32 
              #                          temp_106_array_ptr_25 = getelementptr str_20:ptr->i32 [Some(iNd__1X_22)] 
              #                    occupy a2 with temp_106_array_ptr_25
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with iNd__1X_22
              #                    occupy a4 with _anonymous_of_str_20_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with str_20
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_107_array_ele_25:i32 
              #                          temp_107_array_ele_25 = load temp_106_array_ptr_25:ptr->i32 
              #                    occupy a2 with temp_106_array_ptr_25
              #                    occupy a5 with temp_107_array_ele_25
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_108__2279:i1 
              #                          temp_108__2279 = icmp i32 Ne temp_107_array_ele_25, 0_0 
              #                    occupy a5 with temp_107_array_ele_25
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_108__2279
    xor     a7,a5,a6
    snez    a7, a7
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_108__2279, label while.body_26, label while.exit_26 
              #                    occupy a7 with temp_108__2279
              #                    free a7
              #                    occupy a7 with temp_108__2279
    bnez    a7, .while.body_26
              #                    free a7
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22, tracked: true } |     a2:Freed { symidx: temp_106_array_ptr_25, tracked: true } |     a5:Freed { symidx: temp_107_array_ele_25, tracked: true } |     a7:Freed { symidx: temp_108__2279, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var temp_109_array_ptr_27:ptr->i32 
              #                          temp_109_array_ptr_27 = getelementptr str_20:ptr->i32 [Some(iNd__1X_22)] 
              #                    occupy a3 with temp_109_array_ptr_27
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with iNd__1X_22
              #                    occupy a6 with _anonymous_of_str_20_0
    mul     a6,a4,a1
              #                    free a4
              #                    free a1
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a0 with str_20
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_110_array_ele_27:i32 
              #                          temp_110_array_ele_27 = load temp_109_array_ptr_27:ptr->i32 
              #                    occupy a3 with temp_109_array_ptr_27
              #                    occupy s1 with temp_110_array_ele_27
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                           Call void putch_0(temp_110_array_ele_27) 
              #                    saved register dumping to mem
              #                    store to temp_110_array_ele_27 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_110_array_ele_27
              #                    store to str_20 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with str_20
              #                    store to iNd__1X_22 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with iNd__1X_22
              #                    store to temp_106_array_ptr_25 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_106_array_ptr_25
              #                    store to temp_109_array_ptr_27 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_109_array_ptr_27
              #                    store to temp_107_array_ele_25 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_107_array_ele_25
              #                    store to temp_108__2279 in mem offset legal
    sb      a7,19(sp)
              #                    release a7 with temp_108__2279
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_110_array_ele_27_0
              #                    load from temp_110_array_ele_27 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_111_arithop_27:i32 
              #                          temp_111_arithop_27 = Add i32 iNd__1X_22, 1_0 
              #                    occupy a0 with iNd__1X_22
              #                    load from iNd__1X_22 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_111_arithop_27
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          iNd__1X_22 = i32 temp_111_arithop_27 
              #                    occupy a2 with temp_111_arithop_27
              #                    occupy a0 with iNd__1X_22
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_26 
              #                    store to temp_111_arithop_27 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_111_arithop_27
              #                    store to iNd__1X_22 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with iNd__1X_22
              #                    occupy a1 with _anonymous_of_iNd__1X_22_0
              #                    load from iNd__1X_22 in mem


    lw      a1,36(sp)
              #                    occupy a0 with _anonymous_of_str_20_0
              #                    load from str_20 in mem
    ld      a0,40(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: str_20, tracked: true } |     a1:Freed { symidx: iNd__1X_22, tracked: true } |     a2:Freed { symidx: temp_106_array_ptr_25, tracked: true } |     a5:Freed { symidx: temp_107_array_ele_25, tracked: true } |     a7:Freed { symidx: temp_108__2279, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                          ret iNd__1X_22 
              #                    load from ra_putstr_0 in mem
    ld      ra,56(sp)
              #                    load from s0_putstr_0 in mem
    ld      s0,48(sp)
              #                    store to iNd__1X_22 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with iNd__1X_22
              #                    store to str_20 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with str_20
              #                    occupy a0 with iNd__1X_22
              #                    load from iNd__1X_22 in mem


    lw      a0,36(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_106_array_ptr_25, tracked: true } |     a5:Freed { symidx: temp_107_array_ele_25, tracked: true } |     a7:Freed { symidx: temp_108__2279, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 3072|s0_main:8 at 3064|temp_112_ptr2globl:400 at 2664|temp_113_ret_of_putstr:4 at 2660|i:4 at 2656|temp_114_:1 at 2655|none:3 at 2652|temp_115_arithop:4 at 2648|_:4 at 2644|temp_116_arithop:4 at 2640|__:4 at 2636|temp_117_cmp:1 at 2635|none:3 at 2632|temp_118_ptr2globl:1200 at 1432|temp_119_array_ptr:8 at 1424|temp_120_ret_of_putstr:4 at 1420|temp_121_ptr2globl:160 at 1260|temp_122_ret_of_putstr:4 at 1256|temp_123_ptr2globl:1200 at 56|temp_124_array_ptr:8 at 48|temp_125_ret_of_putstr:4 at 44|temp_126_ptr2globl:20 at 24|temp_127_ret_of_putstr:4 at 20|temp_128_arithop:4 at 16|temp_129_arithop:4 at 12|temp_130_arithop:4 at 8|temp_131_cmp:1 at 7|none:7 at 0
              #                    occupy a0 with -3080_0
    li      a0, -3080
    li      a0, -3080
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 3072_0
    li      a1, 3072
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 3064_0
    li      a2, 3064
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 3080_0
    li      a3, 3080
    li      a3, 3080
    add     s0,a3,sp
              #                    free a3
              #                          alloc Array:i32:[Some(100_0)] temp_112_ptr2globl_32 
              #                          alloc i32 temp_113_ret_of_putstr_32 
              #                          alloc i32 i_32 
              #                          alloc i1 temp_114__2544 
              #                          alloc i32 temp_115_arithop_37 
              #                          alloc i32 __37 
              #                          alloc i32 temp_116_arithop_37 
              #                          alloc i32 ___37 
              #                          alloc i1 temp_117_cmp_40 
              #                          alloc Array:i32:[Some(6_0), Some(50_0)] temp_118_ptr2globl_42 
              #                          alloc ptr->i32 temp_119_array_ptr_42 
              #                          alloc i32 temp_120_ret_of_putstr_42 
              #                          alloc Array:i32:[Some(40_0)] temp_121_ptr2globl_42 
              #                          alloc i32 temp_122_ret_of_putstr_42 
              #                          alloc Array:i32:[Some(6_0), Some(50_0)] temp_123_ptr2globl_42 
              #                          alloc ptr->i32 temp_124_array_ptr_42 
              #                          alloc i32 temp_125_ret_of_putstr_42 
              #                          alloc Array:i32:[Some(5_0)] temp_126_ptr2globl_42 
              #                          alloc i32 temp_127_ret_of_putstr_42 
              #                          alloc i32 temp_128_arithop_37 
              #                          alloc i32 temp_129_arithop_37 
              #                          alloc i32 temp_130_arithop_37 
              #                          alloc i1 temp_131_cmp_48 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_112_ptr2globl_32:Array:i32:[Some(100_0)] 
              #                          temp_112_ptr2globl_32 = load *__HELLO_0:ptr->i32 
              #                    occupy a0 with *__HELLO_0
              #                       load label __HELLO as ptr to reg
    la      a0, __HELLO
              #                    occupy reg a0 with *__HELLO_0
              #                    occupy a1 with temp_112_ptr2globl_32
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_113_ret_of_putstr_32:i32 
              #                          temp_113_ret_of_putstr_32 =  Call i32 putstr_0(temp_112_ptr2globl_32) 
              #                    saved register dumping to mem
              #                    store to temp_112_ptr2globl_32 in mem offset_illegal
              #                    occupy a0 with 2664_0
    li      a0, 2664
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_112_ptr2globl_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_112_ptr2globl_32_0
              #                    load from temp_112_ptr2globl_32 in mem
              #                    occupy a1 with temp_112_ptr2globl_32
    li      a1, 2664
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    arg load ended


    call    putstr
              #                    store to temp_113_ret_of_putstr_32 in mem offset_illegal
              #                    occupy a0 with 2660_0
    li      a0, 2660
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          i_32 = i32 0_0 
              #                    occupy a2 with i_32
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } | 
              #                          label while.head_36: 
.while.head_36:
              #                          new_var temp_114__2544:i1 
              #                          temp_114__2544 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_114__2544
    xor     a5,a3,a4
    snez    a5, a5
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_114__2544, label while.body_36, label while.exit_36 
              #                    occupy a5 with temp_114__2544
              #                    free a5
              #                    occupy a5 with temp_114__2544
    bnez    a5, .while.body_36
              #                    free a5
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } | 
              #                          label while.body_36: 
.while.body_36:
              #                          new_var temp_115_arithop_37:i32 
              #                          temp_115_arithop_37 = Div i32 i_32, 6_0 
              #                    occupy a2 with i_32
              #                    occupy a3 with 6_0
    li      a3, 6
              #                    occupy a4 with temp_115_arithop_37
    div     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          __37 = i32 temp_115_arithop_37 
              #                    occupy a4 with temp_115_arithop_37
              #                    occupy a6 with __37
    mv      a6, a4
              #                    free a4
              #                    free a6
              #                          new_var temp_116_arithop_37:i32 
              #                          temp_116_arithop_37 = Mod i32 i_32, 6_0 
              #                    occupy a2 with i_32
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
              #                    occupy a7 with temp_116_arithop_37
              #                    load from temp_116_arithop_37 in mem

              #                    occupy a7 with temp_116_arithop_37
    add     a7,sp,a7
    lw      a7,0(a7)
              #                    free a7
    rem     a7,a2,a3
              #                    free a2
              #                    free a3
              #                    free a7
              #                          ___37 = i32 temp_116_arithop_37 
              #                    occupy a7 with temp_116_arithop_37
              #                    occupy s1 with ___37
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_117_cmp_40:i1 
              #                          temp_117_cmp_40 = icmp i32 Ne __37, ___37 
              #                    occupy a6 with __37
              #                    occupy s1 with ___37
              #                    occupy a3 with temp_117_cmp_40
    xor     a3,a6,s1
    snez    a3, a3
              #                    free a6
              #                    free s1
              #                    free a3
              #                          br i1 temp_117_cmp_40, label branch_true_41, label branch_false_41 
              #                    occupy a3 with temp_117_cmp_40
              #                    free a3
              #                    occupy a3 with temp_117_cmp_40
    bnez    a3, .branch_true_41
              #                    free a3
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } | 
              #                          label branch_true_41: 
.branch_true_41:
              #                          new_var temp_118_ptr2globl_42:Array:i32:[Some(6_0), Some(50_0)] 
              #                          temp_118_ptr2globl_42 = load *N4__mE____0:ptr->Array:i32:[Some(50_0)] 
              #                    occupy s2 with *N4__mE____0
              #                       load label N4__mE___ as ptr to reg
    la      s2, N4__mE___
              #                    occupy reg s2 with *N4__mE____0
              #                    occupy s3 with temp_118_ptr2globl_42
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_119_array_ptr_42:ptr->i32 
              #                          temp_119_array_ptr_42 = getelementptr temp_118_ptr2globl_42:Array:i32:[Some(6_0), Some(50_0)] [Some(__37)] 
              #                    occupy s4 with temp_119_array_ptr_42
    li      s4, 0
              #                    occupy s5 with 50_0
    li      s5, 50
              #                    occupy a6 with __37
              #                    occupy s6 with _anonymous_of_temp_118_ptr2globl_42_0
    mul     s6,s5,a6
              #                    free s5
              #                    free a6
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,1432
              #                    free s4
              #                          new_var temp_120_ret_of_putstr_42:i32 
              #                          temp_120_ret_of_putstr_42 =  Call i32 putstr_0(temp_119_array_ptr_42) 
              #                    saved register dumping to mem
              #                    store to ___37 in mem offset_illegal
              #                    occupy s1 with 2636_0
    li      s1, 2636
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with ___37
              #                    store to temp_118_ptr2globl_42 in mem offset legal
    sw      s3,1432(sp)
              #                    release s3 with temp_118_ptr2globl_42
              #                    store to temp_119_array_ptr_42 in mem offset legal
    sd      s4,1424(sp)
              #                    release s4 with temp_119_array_ptr_42
              #                    store to temp_113_ret_of_putstr_32 in mem offset_illegal
              #                    occupy a0 with 2660_0
    li      a0, 2660
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_113_ret_of_putstr_32
              #                    store to temp_112_ptr2globl_32 in mem offset_illegal
              #                    occupy a0 with 2664_0
    li      a0, 2664
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_112_ptr2globl_32
              #                    store to i_32 in mem offset_illegal
              #                    occupy a1 with 2656_0
    li      a1, 2656
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_32
              #                    store to temp_117_cmp_40 in mem offset_illegal
              #                    occupy a2 with 2635_0
    li      a2, 2635
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_117_cmp_40
              #                    store to temp_115_arithop_37 in mem offset_illegal
              #                    occupy a3 with 2648_0
    li      a3, 2648
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_115_arithop_37
              #                    store to temp_114__2544 in mem offset_illegal
              #                    occupy a4 with 2655_0
    li      a4, 2655
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_114__2544
              #                    store to __37 in mem offset_illegal
              #                    occupy a5 with 2644_0
    li      a5, 2644
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with __37
              #                    store to temp_116_arithop_37 in mem offset_illegal
              #                    occupy a6 with 2640_0
    li      a6, 2640
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_116_arithop_37
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_119_array_ptr_42_0
              #                    load from temp_119_array_ptr_42 in mem
    ld      a0,1424(sp)
              #                    arg load ended


    call    putstr
              #                    store to temp_120_ret_of_putstr_42 in mem offset legal
    sw      a0,1420(sp)
              #                          new_var temp_121_ptr2globl_42:Array:i32:[Some(40_0)] 
              #                          temp_121_ptr2globl_42 = load *saY_HeI10_To_0:ptr->i32 
              #                    occupy a7 with *saY_HeI10_To_0
              #                       load label saY_HeI10_To as ptr to reg
    la      a7, saY_HeI10_To
              #                    occupy reg a7 with *saY_HeI10_To_0
              #                    occupy s1 with temp_121_ptr2globl_42
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_122_ret_of_putstr_42:i32 
              #                          temp_122_ret_of_putstr_42 =  Call i32 putstr_0(temp_121_ptr2globl_42) 
              #                    saved register dumping to mem
              #                    store to temp_121_ptr2globl_42 in mem offset legal
    sw      s1,1260(sp)
              #                    release s1 with temp_121_ptr2globl_42
              #                    store to temp_120_ret_of_putstr_42 in mem offset legal
    sw      a0,1420(sp)
              #                    release a0 with temp_120_ret_of_putstr_42
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_121_ptr2globl_42_0
              #                    load from temp_121_ptr2globl_42 in mem
    lw      a0,1260(sp)
              #                    arg load ended


    call    putstr
              #                    store to temp_122_ret_of_putstr_42 in mem offset legal
    sw      a0,1256(sp)
              #                          new_var temp_123_ptr2globl_42:Array:i32:[Some(6_0), Some(50_0)] 
              #                          temp_123_ptr2globl_42 = load *N4__mE____0:ptr->Array:i32:[Some(50_0)] 
              #                    occupy a1 with *N4__mE____0
              #                       load label N4__mE___ as ptr to reg
    la      a1, N4__mE___
              #                    occupy reg a1 with *N4__mE____0
              #                    occupy a2 with temp_123_ptr2globl_42
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_124_array_ptr_42:ptr->i32 
              #                          temp_124_array_ptr_42 = getelementptr temp_123_ptr2globl_42:Array:i32:[Some(6_0), Some(50_0)] [Some(___37)] 
              #                    occupy a3 with temp_124_array_ptr_42
    li      a3, 0
              #                    occupy a4 with 50_0
    li      a4, 50
              #                    occupy a5 with ___37
              #                    load from ___37 in mem

              #                    occupy a5 with ___37
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_123_ptr2globl_42_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,56
              #                    free a3
              #                          new_var temp_125_ret_of_putstr_42:i32 
              #                          temp_125_ret_of_putstr_42 =  Call i32 putstr_0(temp_124_array_ptr_42) 
              #                    saved register dumping to mem
              #                    store to temp_122_ret_of_putstr_42 in mem offset legal
    sw      a0,1256(sp)
              #                    release a0 with temp_122_ret_of_putstr_42
              #                    store to temp_123_ptr2globl_42 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_123_ptr2globl_42
              #                    store to temp_124_array_ptr_42 in mem offset legal
    sd      a3,48(sp)
              #                    release a3 with temp_124_array_ptr_42
              #                    store to ___37 in mem offset_illegal
              #                    occupy a0 with 2636_0
    li      a0, 2636
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with ___37
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_124_array_ptr_42_0
              #                    load from temp_124_array_ptr_42 in mem
    ld      a0,48(sp)
              #                    arg load ended


    call    putstr
              #                    store to temp_125_ret_of_putstr_42 in mem offset legal
    sw      a0,44(sp)
              #                          new_var temp_126_ptr2globl_42:Array:i32:[Some(5_0)] 
              #                          temp_126_ptr2globl_42 = load *RET_0:ptr->i32 
              #                    occupy a1 with *RET_0
              #                       load label RET as ptr to reg
    la      a1, RET
              #                    occupy reg a1 with *RET_0
              #                    occupy a2 with temp_126_ptr2globl_42
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_127_ret_of_putstr_42:i32 
              #                          temp_127_ret_of_putstr_42 =  Call i32 putstr_0(temp_126_ptr2globl_42) 
              #                    saved register dumping to mem
              #                    store to temp_125_ret_of_putstr_42 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_125_ret_of_putstr_42
              #                    store to temp_126_ptr2globl_42 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_126_ptr2globl_42
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_126_ptr2globl_42_0
              #                    load from temp_126_ptr2globl_42 in mem
    lw      a0,24(sp)
              #                    arg load ended


    call    putstr
              #                    store to temp_127_ret_of_putstr_42 in mem offset legal
    sw      a0,20(sp)
              #                          jump label: branch_false_41 
              #                    store to temp_127_ret_of_putstr_42 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_127_ret_of_putstr_42
              #                    occupy a2 with _anonymous_of_i_32_0
              #                    load from i_32 in mem

              #                    occupy a0 with i_32
    li      a0, 2656
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    occupy a7 with _anonymous_of_temp_116_arithop_37_0
              #                    load from temp_116_arithop_37 in mem

              #                    occupy a1 with temp_116_arithop_37
    li      a1, 2640
    add     a1,sp,a1
    lw      a7,0(a1)
              #                    free a1
              #                    store to temp_116_arithop_37 in mem offset_illegal
              #                    occupy a1 with 2640_0
    li      a1, 2640
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_116_arithop_37
              #                    occupy a1 with _anonymous_of_temp_112_ptr2globl_32_0
              #                    load from temp_112_ptr2globl_32 in mem
              #                    occupy a3 with temp_112_ptr2globl_32
    li      a3, 2664
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    occupy s1 with _anonymous_of____37_0
              #                    load from ___37 in mem

              #                    occupy a4 with ___37
    li      a4, 2636
    add     a4,sp,a4
    lw      s1,0(a4)
              #                    free a4
              #                    store to i_32 in mem offset_illegal
              #                    occupy a0 with 2656_0
    li      a0, 2656
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_32
              #                    occupy a0 with _anonymous_of_temp_113_ret_of_putstr_32_0
              #                    load from temp_113_ret_of_putstr_32 in mem

              #                    occupy a5 with temp_113_ret_of_putstr_32
    li      a5, 2660
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    store to temp_112_ptr2globl_32 in mem offset_illegal
              #                    occupy a3 with 2664_0
    li      a3, 2664
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_112_ptr2globl_32
              #                    occupy a3 with _anonymous_of_temp_117_cmp_40_0
              #                    load from temp_117_cmp_40 in mem
              #                    occupy a6 with temp_117_cmp_40
    li      a6, 2635
    add     a6,sp,a6
    lb      a3,0(a6)
              #                    free a6
              #                    store to temp_113_ret_of_putstr_32 in mem offset_illegal
              #                    occupy a5 with 2660_0
    li      a5, 2660
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_113_ret_of_putstr_32
              #                    occupy a5 with _anonymous_of_temp_114__2544_0
              #                    load from temp_114__2544 in mem
              #                    occupy s2 with temp_114__2544
    li      s2, 2655
    add     s2,sp,s2
    lb      a5,0(s2)
              #                    free s2
              #                    store to ___37 in mem offset_illegal
              #                    occupy a4 with 2636_0
    li      a4, 2636
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with ___37
              #                    occupy a4 with _anonymous_of_temp_115_arithop_37_0
              #                    load from temp_115_arithop_37 in mem

              #                    occupy s3 with temp_115_arithop_37
    li      s3, 2648
    add     s3,sp,s3
    lw      a4,0(s3)
              #                    free s3
              #                    store to temp_114__2544 in mem offset_illegal
              #                    occupy s2 with 2655_0
    li      s2, 2655
    add     s2,sp,s2
    sb      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_114__2544
              #                    store to temp_117_cmp_40 in mem offset_illegal
              #                    occupy a6 with 2635_0
    li      a6, 2635
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_117_cmp_40
              #                    occupy a6 with _anonymous_of___37_0
              #                    load from __37 in mem

              #                    occupy s2 with __37
    li      s2, 2644
    add     s2,sp,s2
    lw      a6,0(s2)
              #                    free s2
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } | 
              #                          label branch_false_41: 
.branch_false_41:
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_128_arithop_37:i32 
              #                          temp_128_arithop_37 = Mul i32 i_32, 17_0 
              #                    occupy a2 with i_32
              #                    occupy s2 with 17_0
    li      s2, 17
              #                    occupy s3 with temp_128_arithop_37
    mul     s3,a2,s2
              #                    free a2
              #                    free s2
              #                    free s3
              #                          new_var temp_129_arithop_37:i32 
              #                          temp_129_arithop_37 = Add i32 temp_128_arithop_37, 23_0 
              #                    occupy s3 with temp_128_arithop_37
              #                    occupy s4 with 23_0
    li      s4, 23
              #                    occupy s5 with temp_129_arithop_37
    add     s5,s3,s4
              #                    free s3
              #                    free s4
              #                    free s5
              #                          new_var temp_130_arithop_37:i32 
              #                          temp_130_arithop_37 = Mod i32 temp_129_arithop_37, 32_0 
              #                    occupy s5 with temp_129_arithop_37
              #                    occupy s6 with 32_0
    li      s6, 32
              #                    occupy s7 with temp_130_arithop_37
              #                    load from temp_130_arithop_37 in mem


    lw      s7,8(sp)
    rem     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          i_32 = i32 temp_130_arithop_37 
              #                    occupy s7 with temp_130_arithop_37
              #                    occupy a2 with i_32
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } |     s3:Freed { symidx: temp_128_arithop_37, tracked: true } |     s5:Freed { symidx: temp_129_arithop_37, tracked: true } |     s7:Freed { symidx: temp_130_arithop_37, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_131_cmp_48:i1 
              #                          temp_131_cmp_48 = icmp i32 Eq i_32, 0_0 
              #                    occupy a2 with i_32
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s4 with temp_131_cmp_48
    xor     s4,a2,s2
    seqz    s4, s4
              #                    free a2
              #                    free s2
              #                    free s4
              #                          br i1 temp_131_cmp_48, label branch_true_49, label branch_false_49 
              #                    occupy s4 with temp_131_cmp_48
              #                    free s4
              #                    occupy s4 with temp_131_cmp_48
    bnez    s4, .branch_true_49
              #                    free s4
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } |     s3:Freed { symidx: temp_128_arithop_37, tracked: true } |     s4:Freed { symidx: temp_131_cmp_48, tracked: true } |     s5:Freed { symidx: temp_129_arithop_37, tracked: true } |     s7:Freed { symidx: temp_130_arithop_37, tracked: true } | 
              #                          label branch_true_49: 
.branch_true_49:
              #                          jump label: while.exit_36 
              #                    store to temp_116_arithop_37 in mem offset_illegal
              #                    occupy a7 with 2640_0
    li      a7, 2640
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_116_arithop_37
              #                    store to ___37 in mem offset_illegal
              #                    occupy a7 with 2636_0
    li      a7, 2636
    add     a7,sp,a7
    sw      s1,0(a7)
              #                    free a7
              #                    release s1 with ___37
              #                    store to temp_131_cmp_48 in mem offset legal
    sb      s4,7(sp)
              #                    release s4 with temp_131_cmp_48
              #                    store to temp_130_arithop_37 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_130_arithop_37
              #                    store to temp_117_cmp_40 in mem offset_illegal
              #                    occupy a3 with 2635_0
    li      a3, 2635
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_117_cmp_40
              #                    store to temp_128_arithop_37 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_128_arithop_37
              #                    store to temp_115_arithop_37 in mem offset_illegal
              #                    occupy a3 with 2648_0
    li      a3, 2648
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_115_arithop_37
              #                    store to temp_129_arithop_37 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_129_arithop_37
              #                    store to __37 in mem offset_illegal
              #                    occupy a4 with 2644_0
    li      a4, 2644
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with __37
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } | 
              #                          label while.exit_36: 
.while.exit_36:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a3 with ra_main_0
    li      a3, 3072
    add     a3,sp,a3
    ld      ra,0(a3)
              #                    free a3
              #                    load from s0_main_0 in mem
              #                    occupy a4 with s0_main_0
    li      a4, 3064
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to temp_113_ret_of_putstr_32 in mem offset_illegal
              #                    occupy a0 with 2660_0
    li      a0, 2660
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_113_ret_of_putstr_32
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a6 with 3080_0
    li      a6, 3080
    li      a6, 3080
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: ra_main_0, tracked: true } |     a4:Freed { symidx: s0_main_0, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } | 
              #                    regtab     a0:Freed { symidx: temp_113_ret_of_putstr_32, tracked: true } |     a1:Freed { symidx: temp_112_ptr2globl_32, tracked: true } |     a2:Freed { symidx: i_32, tracked: true } |     a3:Freed { symidx: temp_117_cmp_40, tracked: true } |     a4:Freed { symidx: temp_115_arithop_37, tracked: true } |     a5:Freed { symidx: temp_114__2544, tracked: true } |     a6:Freed { symidx: __37, tracked: true } |     a7:Freed { symidx: temp_116_arithop_37, tracked: true } |     s1:Freed { symidx: ___37, tracked: true } |     s3:Freed { symidx: temp_128_arithop_37, tracked: true } |     s4:Freed { symidx: temp_131_cmp_48, tracked: true } |     s5:Freed { symidx: temp_129_arithop_37, tracked: true } |     s7:Freed { symidx: temp_130_arithop_37, tracked: true } | 
              #                          label branch_false_49: 
.branch_false_49:
              #                          jump label: while.head_36 
              #                    store to temp_116_arithop_37 in mem offset_illegal
              #                    occupy a7 with 2640_0
    li      a7, 2640
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_116_arithop_37
              #                    store to ___37 in mem offset_illegal
              #                    occupy a7 with 2636_0
    li      a7, 2636
    add     a7,sp,a7
    sw      s1,0(a7)
              #                    free a7
              #                    release s1 with ___37
              #                    store to temp_131_cmp_48 in mem offset legal
    sb      s4,7(sp)
              #                    release s4 with temp_131_cmp_48
              #                    store to temp_130_arithop_37 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_130_arithop_37
              #                    store to temp_117_cmp_40 in mem offset_illegal
              #                    occupy a3 with 2635_0
    li      a3, 2635
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_117_cmp_40
              #                    store to temp_128_arithop_37 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_128_arithop_37
              #                    store to temp_114__2544 in mem offset_illegal
              #                    occupy a3 with 2655_0
    li      a3, 2655
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_114__2544
              #                    store to temp_115_arithop_37 in mem offset_illegal
              #                    occupy a4 with 2648_0
    li      a4, 2648
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_115_arithop_37
              #                    store to temp_129_arithop_37 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_129_arithop_37
              #                    store to __37 in mem offset_illegal
              #                    occupy a4 with 2644_0
    li      a4, 2644
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with __37
    j       .while.head_36
.section ___var
    .data
    .align 4
    .globl RET
              #                          global Array:i32:[Some(5_0)] RET_0 
    .type RET,@object
RET:
    .word 10
    .zero 20
    .align 4
    .globl saY_HeI10_To
              #                          global Array:i32:[Some(40_0)] saY_HeI10_To_0 
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
    .zero 146
    .align 4
    .globl N4__mE___
              #                          global Array:i32:[Some(6_0), Some(50_0)] N4__mE____0 
    .type N4__mE___,@object
N4__mE___:
    .word 83
    .word 97
    .word 97
    .word 98
    .word 97
    .word 114
    .word 117
    .word 75
    .word 97
    .word 98
    .word 97
    .word 110
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
    .word 65
    .word 114
    .word 97
    .word 105
    .word 103
    .word 117
    .word 109
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
    .zero 1139
    .align 4
    .globl __HELLO
              #                          global Array:i32:[Some(100_0)] __HELLO_0 
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
    .zero 373
