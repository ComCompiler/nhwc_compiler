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
              #                          Define func_0 [n_17] -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 32|s0_func:8 at 24|n:4 at 20|temp_0_ptr2globl:4 at 16|temp_1_arithop:4 at 12|temp_2_ptr2globl:4 at 8|temp_3_ptr2globl:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_func_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_0_ptr2globl_19 
              #                          alloc i32 temp_1_arithop_19 
              #                          alloc i32 temp_2_ptr2globl_19 
              #                          alloc i32 temp_3_ptr2globl_19 
              #                    regtab     a0:Freed { symidx: n_17, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_0_ptr2globl_19:i32 
              #                          temp_0_ptr2globl_19 = load *g_0:ptr->i32 
              #                    occupy a1 with *g_0
              #                       load label g as ptr to reg
    la      a1, g
              #                    occupy reg a1 with *g_0
              #                    occupy a2 with temp_0_ptr2globl_19
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_arithop_19:i32 
              #                          temp_1_arithop_19 = Add i32 temp_0_ptr2globl_19, n_17 
              #                    occupy a2 with temp_0_ptr2globl_19
              #                    occupy a0 with n_17
              #                    occupy a3 with temp_1_arithop_19
    add     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                          store temp_1_arithop_19:i32 *g_0:ptr->i32 
              #                    occupy a4 with *g_0
              #                       load label g as ptr to reg
    la      a4, g
              #                    occupy reg a4 with *g_0
              #                    occupy a3 with temp_1_arithop_19
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_2_ptr2globl_19:i32 
              #                          temp_2_ptr2globl_19 = load *g_0:ptr->i32 
              #                    occupy a5 with *g_0
              #                       load label g as ptr to reg
    la      a5, g
              #                    occupy reg a5 with *g_0
              #                    occupy a6 with temp_2_ptr2globl_19
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                           Call void putint_0(temp_2_ptr2globl_19) 
              #                    saved register dumping to mem
              #                    store to n_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with n_17
              #                    store to temp_0_ptr2globl_19 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_0_ptr2globl_19
              #                    store to temp_1_arithop_19 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_1_arithop_19
              #                    store to temp_2_ptr2globl_19 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_2_ptr2globl_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_ptr2globl_19_0
              #                    load from temp_2_ptr2globl_19 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_3_ptr2globl_19:i32 
              #                          temp_3_ptr2globl_19 = load *g_0:ptr->i32 
              #                    occupy a0 with *g_0
              #                       load label g as ptr to reg
    la      a0, g
              #                    occupy reg a0 with *g_0
              #                    occupy a1 with temp_3_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          ret temp_3_ptr2globl_19 
              #                    load from ra_func_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func_0 in mem
    ld      s0,24(sp)
              #                    store to temp_3_ptr2globl_19 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_3_ptr2globl_19
              #                    occupy a0 with temp_3_ptr2globl_19
              #                    load from temp_3_ptr2globl_19 in mem


    lw      a0,4(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 72|s0_main:8 at 64|i:4 at 60|temp_4_ret_of_getint:4 at 56|temp_5_ret_of_func:4 at 52|temp_6_cmp:1 at 51|temp_7_:1 at 50|temp_8_logic:1 at 49|none:1 at 48|temp_9_ret_of_getint:4 at 44|temp_10_ret_of_func:4 at 40|temp_11_cmp:1 at 39|temp_12_:1 at 38|temp_13_logic:1 at 37|none:1 at 36|temp_14_ret_of_getint:4 at 32|temp_15_ret_of_func:4 at 28|temp_16_cmp:1 at 27|temp_17_:1 at 26|temp_18_logic:1 at 25|none:1 at 24|temp_19_ret_of_getint:4 at 20|temp_20_ret_of_func:4 at 16|temp_21_cmp:1 at 15|temp_22_:1 at 14|temp_23_logic:1 at 13|none:1 at 12|temp_24_ret_of_func:4 at 8|temp_25_ret_of_func:4 at 4|temp_26_booltrans:1 at 3|temp_27_logicnot:1 at 2|temp_28_:1 at 1|temp_29_logic:1 at 0
    addi    sp,sp,-80
              #                    store to ra_main_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 i_24 
              #                          alloc i32 temp_4_ret_of_getint_24 
              #                          alloc i32 temp_5_ret_of_func_27 
              #                          alloc i1 temp_6_cmp_27 
              #                          alloc i1 temp_7__27 
              #                          alloc i1 temp_8_logic_27 
              #                          alloc i32 temp_9_ret_of_getint_24 
              #                          alloc i32 temp_10_ret_of_func_32 
              #                          alloc i1 temp_11_cmp_32 
              #                          alloc i1 temp_12__32 
              #                          alloc i1 temp_13_logic_32 
              #                          alloc i32 temp_14_ret_of_getint_24 
              #                          alloc i32 temp_15_ret_of_func_37 
              #                          alloc i1 temp_16_cmp_37 
              #                          alloc i1 temp_17__37 
              #                          alloc i1 temp_18_logic_37 
              #                          alloc i32 temp_19_ret_of_getint_24 
              #                          alloc i32 temp_20_ret_of_func_42 
              #                          alloc i1 temp_21_cmp_42 
              #                          alloc i1 temp_22__42 
              #                          alloc i1 temp_23_logic_42 
              #                          alloc i32 temp_24_ret_of_func_46 
              #                          alloc i32 temp_25_ret_of_func_46 
              #                          alloc i1 temp_26_booltrans_46 
              #                          alloc i1 temp_27_logicnot_46 
              #                          alloc i1 temp_28__46 
              #                          alloc i1 temp_29_logic_46 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var i_24:i32 
              #                          new_var temp_4_ret_of_getint_24:i32 
              #                          temp_4_ret_of_getint_24 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_4_ret_of_getint_24 in mem offset legal
    sw      a0,56(sp)
              #                          i_24 = i32 temp_4_ret_of_getint_24 
              #                    occupy a0 with temp_4_ret_of_getint_24
              #                    occupy a1 with i_24
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getint_24, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_5_ret_of_func_27:i32 
              #                          temp_5_ret_of_func_27 =  Call i32 func_0(i_24) 
              #                    saved register dumping to mem
              #                    store to temp_4_ret_of_getint_24 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_4_ret_of_getint_24
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_24_0
              #                    load from i_24 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    func
              #                    store to temp_5_ret_of_func_27 in mem offset legal
    sw      a0,52(sp)
              #                          new_var temp_6_cmp_27:i1 
              #                          temp_6_cmp_27 = icmp i32 Sgt i_24, 10_0 
              #                    occupy a1 with i_24
              #                    load from i_24 in mem


    lw      a1,60(sp)
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with temp_6_cmp_27
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_7__27:i1 
              #                          temp_7__27 = icmp i32 Ne temp_5_ret_of_func_27, 0_0 
              #                    occupy a0 with temp_5_ret_of_func_27
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_7__27
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_8_logic_27:i1 
              #                          temp_8_logic_27 = And i1 temp_6_cmp_27, temp_7__27 
              #                    occupy a3 with temp_6_cmp_27
              #                    occupy a5 with temp_7__27
              #                    occupy a6 with temp_8_logic_27
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_8_logic_27, label branch_true_28, label branch_false_28 
              #                    occupy a6 with temp_8_logic_27
              #                    free a6
              #                    occupy a6 with temp_8_logic_27
    bnez    a6, .branch_true_28
              #                    free a6
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_func_27, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_6_cmp_27, tracked: true } |     a5:Freed { symidx: temp_7__27, tracked: true } |     a6:Freed { symidx: temp_8_logic_27, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                          i_24 = i32 1_0 
              #                    occupy a1 with i_24
    li      a1, 1
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_func_27, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_6_cmp_27, tracked: true } |     a5:Freed { symidx: temp_7__27, tracked: true } |     a6:Freed { symidx: temp_8_logic_27, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                          i_24 = i32 0_0 
              #                    occupy a1 with i_24
    li      a1, 0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_func_27, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_6_cmp_27, tracked: true } |     a5:Freed { symidx: temp_7__27, tracked: true } |     a6:Freed { symidx: temp_8_logic_27, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_func_27, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_6_cmp_27, tracked: true } |     a5:Freed { symidx: temp_7__27, tracked: true } |     a6:Freed { symidx: temp_8_logic_27, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_9_ret_of_getint_24:i32 
              #                          temp_9_ret_of_getint_24 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_5_ret_of_func_27 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_5_ret_of_func_27
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    store to temp_6_cmp_27 in mem offset legal
    sb      a3,51(sp)
              #                    release a3 with temp_6_cmp_27
              #                    store to temp_7__27 in mem offset legal
    sb      a5,50(sp)
              #                    release a5 with temp_7__27
              #                    store to temp_8_logic_27 in mem offset legal
    sb      a6,49(sp)
              #                    release a6 with temp_8_logic_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_9_ret_of_getint_24 in mem offset legal
    sw      a0,44(sp)
              #                          i_24 = i32 temp_9_ret_of_getint_24 
              #                    occupy a0 with temp_9_ret_of_getint_24
              #                    occupy a1 with i_24
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_getint_24, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_10_ret_of_func_32:i32 
              #                          temp_10_ret_of_func_32 =  Call i32 func_0(i_24) 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_getint_24 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_9_ret_of_getint_24
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_24_0
              #                    load from i_24 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    func
              #                    store to temp_10_ret_of_func_32 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_11_cmp_32:i1 
              #                          temp_11_cmp_32 = icmp i32 Sgt i_24, 11_0 
              #                    occupy a1 with i_24
              #                    load from i_24 in mem


    lw      a1,60(sp)
              #                    occupy a2 with 11_0
    li      a2, 11
              #                    occupy a3 with temp_11_cmp_32
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_12__32:i1 
              #                          temp_12__32 = icmp i32 Ne temp_10_ret_of_func_32, 0_0 
              #                    occupy a0 with temp_10_ret_of_func_32
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_12__32
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_13_logic_32:i1 
              #                          temp_13_logic_32 = And i1 temp_11_cmp_32, temp_12__32 
              #                    occupy a3 with temp_11_cmp_32
              #                    occupy a5 with temp_12__32
              #                    occupy a6 with temp_13_logic_32
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_13_logic_32, label branch_true_33, label branch_false_33 
              #                    occupy a6 with temp_13_logic_32
              #                    free a6
              #                    occupy a6 with temp_13_logic_32
    bnez    a6, .branch_true_33
              #                    free a6
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_func_32, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_11_cmp_32, tracked: true } |     a5:Freed { symidx: temp_12__32, tracked: true } |     a6:Freed { symidx: temp_13_logic_32, tracked: true } | 
              #                          label branch_true_33: 
.branch_true_33:
              #                          i_24 = i32 1_0 
              #                    occupy a1 with i_24
    li      a1, 1
              #                    free a1
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_func_32, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_11_cmp_32, tracked: true } |     a5:Freed { symidx: temp_12__32, tracked: true } |     a6:Freed { symidx: temp_13_logic_32, tracked: true } | 
              #                          label branch_false_33: 
.branch_false_33:
              #                          i_24 = i32 0_0 
              #                    occupy a1 with i_24
    li      a1, 0
              #                    free a1
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_func_32, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_11_cmp_32, tracked: true } |     a5:Freed { symidx: temp_12__32, tracked: true } |     a6:Freed { symidx: temp_13_logic_32, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_func_32, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_11_cmp_32, tracked: true } |     a5:Freed { symidx: temp_12__32, tracked: true } |     a6:Freed { symidx: temp_13_logic_32, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_14_ret_of_getint_24:i32 
              #                          temp_14_ret_of_getint_24 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_10_ret_of_func_32 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_10_ret_of_func_32
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    store to temp_11_cmp_32 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_11_cmp_32
              #                    store to temp_12__32 in mem offset legal
    sb      a5,38(sp)
              #                    release a5 with temp_12__32
              #                    store to temp_13_logic_32 in mem offset legal
    sb      a6,37(sp)
              #                    release a6 with temp_13_logic_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_14_ret_of_getint_24 in mem offset legal
    sw      a0,32(sp)
              #                          i_24 = i32 temp_14_ret_of_getint_24 
              #                    occupy a0 with temp_14_ret_of_getint_24
              #                    occupy a1 with i_24
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_24, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_15_ret_of_func_37:i32 
              #                          temp_15_ret_of_func_37 =  Call i32 func_0(i_24) 
              #                    saved register dumping to mem
              #                    store to temp_14_ret_of_getint_24 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_14_ret_of_getint_24
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_24_0
              #                    load from i_24 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    func
              #                    store to temp_15_ret_of_func_37 in mem offset legal
    sw      a0,28(sp)
              #                          new_var temp_16_cmp_37:i1 
              #                          temp_16_cmp_37 = icmp i32 Sle i_24, 99_0 
              #                    occupy a1 with i_24
              #                    load from i_24 in mem


    lw      a1,60(sp)
              #                    occupy a2 with 99_0
    li      a2, 99
              #                    occupy a3 with temp_16_cmp_37
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_17__37:i1 
              #                          temp_17__37 = icmp i32 Ne temp_15_ret_of_func_37, 0_0 
              #                    occupy a0 with temp_15_ret_of_func_37
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_17__37
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_18_logic_37:i1 
              #                          temp_18_logic_37 = Or i1 temp_16_cmp_37, temp_17__37 
              #                    occupy a3 with temp_16_cmp_37
              #                    occupy a5 with temp_17__37
              #                    occupy a5 with temp_17__37
              #                    free a3
              #                    free a5
              #                    free a5
              #                          br i1 temp_18_logic_37, label branch_true_38, label branch_false_38 
              #                    occupy a6 with temp_18_logic_37
              #                    load from temp_18_logic_37 in mem
    lb      a6,25(sp)
              #                    free a6
              #                    occupy a6 with temp_18_logic_37
    bnez    a6, .branch_true_38
              #                    free a6
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_func_37, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_16_cmp_37, tracked: true } |     a5:Freed { symidx: temp_17__37, tracked: true } |     a6:Freed { symidx: temp_18_logic_37, tracked: true } | 
              #                          label branch_true_38: 
.branch_true_38:
              #                          i_24 = i32 1_0 
              #                    occupy a1 with i_24
    li      a1, 1
              #                    free a1
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_func_37, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_16_cmp_37, tracked: true } |     a5:Freed { symidx: temp_17__37, tracked: true } |     a6:Freed { symidx: temp_18_logic_37, tracked: true } | 
              #                          label branch_false_38: 
.branch_false_38:
              #                          i_24 = i32 0_0 
              #                    occupy a1 with i_24
    li      a1, 0
              #                    free a1
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_func_37, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_16_cmp_37, tracked: true } |     a5:Freed { symidx: temp_17__37, tracked: true } |     a6:Freed { symidx: temp_18_logic_37, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_func_37, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_16_cmp_37, tracked: true } |     a5:Freed { symidx: temp_17__37, tracked: true } |     a6:Freed { symidx: temp_18_logic_37, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_19_ret_of_getint_24:i32 
              #                          temp_19_ret_of_getint_24 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_15_ret_of_func_37 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_15_ret_of_func_37
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    store to temp_16_cmp_37 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_16_cmp_37
              #                    store to temp_17__37 in mem offset legal
    sb      a5,26(sp)
              #                    release a5 with temp_17__37
              #                    store to temp_18_logic_37 in mem offset legal
    sb      a6,25(sp)
              #                    release a6 with temp_18_logic_37
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_19_ret_of_getint_24 in mem offset legal
    sw      a0,20(sp)
              #                          i_24 = i32 temp_19_ret_of_getint_24 
              #                    occupy a0 with temp_19_ret_of_getint_24
              #                    occupy a1 with i_24
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_getint_24, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_20_ret_of_func_42:i32 
              #                          temp_20_ret_of_func_42 =  Call i32 func_0(i_24) 
              #                    saved register dumping to mem
              #                    store to temp_19_ret_of_getint_24 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_19_ret_of_getint_24
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_24_0
              #                    load from i_24 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    func
              #                    store to temp_20_ret_of_func_42 in mem offset legal
    sw      a0,16(sp)
              #                          new_var temp_21_cmp_42:i1 
              #                          temp_21_cmp_42 = icmp i32 Sle i_24, 100_0 
              #                    occupy a1 with i_24
              #                    load from i_24 in mem


    lw      a1,60(sp)
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_21_cmp_42
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_22__42:i1 
              #                          temp_22__42 = icmp i32 Ne temp_20_ret_of_func_42, 0_0 
              #                    occupy a0 with temp_20_ret_of_func_42
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_22__42
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_23_logic_42:i1 
              #                          temp_23_logic_42 = Or i1 temp_21_cmp_42, temp_22__42 
              #                    occupy a3 with temp_21_cmp_42
              #                    occupy a5 with temp_22__42
              #                    occupy a5 with temp_22__42
              #                    free a3
              #                    free a5
              #                    free a5
              #                          br i1 temp_23_logic_42, label branch_true_43, label branch_false_43 
              #                    occupy a6 with temp_23_logic_42
              #                    load from temp_23_logic_42 in mem
    lb      a6,13(sp)
              #                    free a6
              #                    occupy a6 with temp_23_logic_42
    bnez    a6, .branch_true_43
              #                    free a6
    j       .branch_false_43
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_func_42, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_21_cmp_42, tracked: true } |     a5:Freed { symidx: temp_22__42, tracked: true } |     a6:Freed { symidx: temp_23_logic_42, tracked: true } | 
              #                          label branch_true_43: 
.branch_true_43:
              #                          i_24 = i32 1_0 
              #                    occupy a1 with i_24
    li      a1, 1
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_func_42, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_21_cmp_42, tracked: true } |     a5:Freed { symidx: temp_22__42, tracked: true } |     a6:Freed { symidx: temp_23_logic_42, tracked: true } | 
              #                          label branch_false_43: 
.branch_false_43:
              #                          i_24 = i32 0_0 
              #                    occupy a1 with i_24
    li      a1, 0
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_func_42, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_21_cmp_42, tracked: true } |     a5:Freed { symidx: temp_22__42, tracked: true } |     a6:Freed { symidx: temp_23_logic_42, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_func_42, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a3:Freed { symidx: temp_21_cmp_42, tracked: true } |     a5:Freed { symidx: temp_22__42, tracked: true } |     a6:Freed { symidx: temp_23_logic_42, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_24_ret_of_func_46:i32 
              #                          temp_24_ret_of_func_46 =  Call i32 func_0(100_0) 
              #                    saved register dumping to mem
              #                    store to temp_20_ret_of_func_42 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_20_ret_of_func_42
              #                    store to i_24 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_24
              #                    store to temp_21_cmp_42 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_21_cmp_42
              #                    store to temp_22__42 in mem offset legal
    sb      a5,14(sp)
              #                    release a5 with temp_22__42
              #                    store to temp_23_logic_42 in mem offset legal
    sb      a6,13(sp)
              #                    release a6 with temp_23_logic_42
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_100_0_0
    li      a0, 100
              #                    arg load ended


    call    func
              #                    store to temp_24_ret_of_func_46 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_25_ret_of_func_46:i32 
              #                          temp_25_ret_of_func_46 =  Call i32 func_0(99_0) 
              #                    saved register dumping to mem
              #                    store to temp_24_ret_of_func_46 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_24_ret_of_func_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_99_0_0
    li      a0, 99
              #                    arg load ended


    call    func
              #                    store to temp_25_ret_of_func_46 in mem offset legal
    sw      a0,4(sp)
              #                          new_var temp_26_booltrans_46:i1 
              #                          temp_26_booltrans_46 = icmp i1 Ne temp_25_ret_of_func_46, 0_0 
              #                    occupy a0 with temp_25_ret_of_func_46
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_26_booltrans_46
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_27_logicnot_46:i1 
              #                          temp_27_logicnot_46 = xor i1 temp_26_booltrans_46, true 
              #                    occupy a2 with temp_26_booltrans_46
              #                    occupy a3 with temp_27_logicnot_46
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_28__46:i1 
              #                          temp_28__46 = icmp i32 Ne temp_24_ret_of_func_46, 0_0 
              #                    occupy a4 with temp_24_ret_of_func_46
              #                    load from temp_24_ret_of_func_46 in mem


    lw      a4,8(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a5 with temp_28__46
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                          new_var temp_29_logic_46:i1 
              #                          temp_29_logic_46 = And i1 temp_27_logicnot_46, temp_28__46 
              #                    occupy a3 with temp_27_logicnot_46
              #                    occupy a5 with temp_28__46
              #                    occupy a6 with temp_29_logic_46
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_29_logic_46, label branch_true_47, label branch_false_47 
              #                    occupy a6 with temp_29_logic_46
              #                    free a6
              #                    occupy a6 with temp_29_logic_46
    bnez    a6, .branch_true_47
              #                    free a6
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_func_46, tracked: true } |     a2:Freed { symidx: temp_26_booltrans_46, tracked: true } |     a3:Freed { symidx: temp_27_logicnot_46, tracked: true } |     a4:Freed { symidx: temp_24_ret_of_func_46, tracked: true } |     a5:Freed { symidx: temp_28__46, tracked: true } |     a6:Freed { symidx: temp_29_logic_46, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          i_24 = i32 1_0 
              #                    occupy a1 with i_24
    li      a1, 1
              #                    free a1
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_func_46, tracked: true } |     a2:Freed { symidx: temp_26_booltrans_46, tracked: true } |     a3:Freed { symidx: temp_27_logicnot_46, tracked: true } |     a4:Freed { symidx: temp_24_ret_of_func_46, tracked: true } |     a5:Freed { symidx: temp_28__46, tracked: true } |     a6:Freed { symidx: temp_29_logic_46, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                          i_24 = i32 0_0 
              #                    occupy a1 with i_24
    li      a1, 0
              #                    free a1
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_func_46, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a2:Freed { symidx: temp_26_booltrans_46, tracked: true } |     a3:Freed { symidx: temp_27_logicnot_46, tracked: true } |     a4:Freed { symidx: temp_24_ret_of_func_46, tracked: true } |     a5:Freed { symidx: temp_28__46, tracked: true } |     a6:Freed { symidx: temp_29_logic_46, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_func_46, tracked: true } |     a1:Freed { symidx: i_24, tracked: true } |     a2:Freed { symidx: temp_26_booltrans_46, tracked: true } |     a3:Freed { symidx: temp_27_logicnot_46, tracked: true } |     a4:Freed { symidx: temp_24_ret_of_func_46, tracked: true } |     a5:Freed { symidx: temp_28__46, tracked: true } |     a6:Freed { symidx: temp_29_logic_46, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    store to temp_25_ret_of_func_46 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_25_ret_of_func_46
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_24, tracked: true } |     a2:Freed { symidx: temp_26_booltrans_46, tracked: true } |     a3:Freed { symidx: temp_27_logicnot_46, tracked: true } |     a4:Freed { symidx: temp_24_ret_of_func_46, tracked: true } |     a5:Freed { symidx: temp_28__46, tracked: true } |     a6:Freed { symidx: temp_29_logic_46, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl g
              #                          global i32 g_0 
    .type g,@object
g:
    .word 0
