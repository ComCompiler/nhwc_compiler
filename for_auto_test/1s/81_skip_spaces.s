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
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 472|s0_main:8 at 464|arr:400 at 64|i _s17 _i1:4 at 60|i _s17 _i3:4 at 56|sum _s17 _i1:4 at 52|temp_0_arithop _s17 _i0:4 at 48|temp_1_arithop _s26 _i0:4 at 44|none:4 at 40|temp_2_ptr_of_arr_17:8 at 32|temp_3_ele_of_arr_17 _s26 _i0:4 at 28|temp_4_arithop _s26 _i0:4 at 24|temp_5_ptr_of_arr_17:8 at 16|temp_6_ret_of_getint _s21 _i0:4 at 12|temp_7_arithop _s21 _i0:4 at 8|temp_8_ret_of_getint _s19 _i0:4 at 4|temp_9_ _s490 _i0:1 at 3|temp_10_ _s614 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-480
              #                    store to ra_main_0 in mem offset legal
    sd      ra,472(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,464(sp)
    addi    s0,sp,480
              #                     18   alloc Array:i32:[Some(100_0)] [arr_17] 
              #                     20   alloc i32 [i_17] 
              #                     22   alloc i32 [sum_17] 
              #                     24   alloc i32 [temp_0_arithop_17] 
              #                     27   alloc i32 [temp_1_arithop_26] 
              #                     30   alloc ptr->i32 [temp_2_ptr_of_arr_17_26] 
              #                     32   alloc i32 [temp_3_ele_of_arr_17_26] 
              #                     35   alloc i32 [temp_4_arithop_26] 
              #                     38   alloc ptr->i32 [temp_5_ptr_of_arr_17_21] 
              #                     40   alloc i32 [temp_6_ret_of_getint_21] 
              #                     44   alloc i32 [temp_7_arithop_21] 
              #                     47   alloc i32 [temp_8_ret_of_getint_19] 
              #                     49   alloc i1 [temp_9__490] 
              #                     55   alloc i1 [temp_10__614] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17    
              #                     19   (nop) 
              #                     21   (nop) 
              #                     67   i_17_1 = i32 0_0 
              #                    occupy a0 with i_17_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_20 
    j       .while.head_20
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     51   label while.head_20: 
.while.head_20:
              #                     48   temp_8_ret_of_getint_19_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_17_1
              #                    store to i_17_1 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_17_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     50   temp_9__490_0 = icmp i32 Ne temp_8_ret_of_getint_19_0, 0_0 
              #                    occupy a0 with temp_8_ret_of_getint_19_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_9__490_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     54   br i1 temp_9__490_0, label while.body_20, label UP_2_0 
              #                    occupy a2 with temp_9__490_0
              #                    free a2
              #                    occupy a2 with temp_9__490_0
    bnez    a2, .while.body_20
              #                    free a2
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: temp_8_ret_of_getint_19_0, tracked: true } |     a2:Freed { symidx: temp_9__490_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     52   label while.body_20: 
.while.body_20:
              #                     39   temp_5_ptr_of_arr_17_21 = GEP arr_17_1:Array:i32:[Some(100_0)] [Some(i_17_1)] 
              #                    occupy a1 with temp_5_ptr_of_arr_17_21
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_17_1
              #                    load from i_17_1 in mem


    lw      a4,60(sp)
    mv      a3, a4
              #                    free a4
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,64
              #                    free a1
              #                     41   temp_6_ret_of_getint_21_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_8_ret_of_getint_19_0
              #                    store to temp_8_ret_of_getint_19_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_8_ret_of_getint_19_0
              #                    occupy a1 with temp_5_ptr_of_arr_17_21
              #                    store to temp_5_ptr_of_arr_17_21 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_5_ptr_of_arr_17_21
              #                    occupy a2 with temp_9__490_0
              #                    store to temp_9__490_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_9__490_0
              #                    occupy a4 with i_17_1
              #                    store to i_17_1 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_17_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     42   store temp_6_ret_of_getint_21_0:i32 temp_5_ptr_of_arr_17_21:ptr->i32 
              #                    occupy a1 with temp_5_ptr_of_arr_17_21
              #                    load from temp_5_ptr_of_arr_17_21 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_6_ret_of_getint_21_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     43   arr_17_2 = chi arr_17_1:42 
              #                     45   temp_7_arithop_21_0 = Add i32 i_17_1, 1_0 
              #                    occupy a2 with i_17_1
              #                    load from i_17_1 in mem


    lw      a2,60(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_7_arithop_21_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     46   (nop) 
              #                     68   i_17_1 = i32 temp_7_arithop_21_0 
              #                    occupy a4 with temp_7_arithop_21_0
              #                    occupy a2 with i_17_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_20 
              #                    occupy a2 with i_17_1
              #                    store to i_17_1 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with i_17_1
              #                    occupy a4 with temp_7_arithop_21_0
              #                    store to temp_7_arithop_21_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_7_arithop_21_0
              #                    occupy a0 with temp_6_ret_of_getint_21_0
              #                    store to temp_6_ret_of_getint_21_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_6_ret_of_getint_21_0
              #                    occupy a0 with i_17_1
              #                    load from i_17_1 in mem


    lw      a0,60(sp)
              #                    occupy a1 with temp_5_ptr_of_arr_17_21
              #                    store to temp_5_ptr_of_arr_17_21 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_5_ptr_of_arr_17_21
    j       .while.head_20
              #                    regtab     a0:Freed { symidx: temp_8_ret_of_getint_19_0, tracked: true } |     a2:Freed { symidx: temp_9__490_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     66   label UP_2_0: 
.UP_2_0:
              #                     77   untrack temp_8_ret_of_getint_19_0 
              #                    occupy a0 with temp_8_ret_of_getint_19_0
              #                    release a0 with temp_8_ret_of_getint_19_0
              #                     76   untrack temp_7_arithop_21_0 
              #                     75   untrack temp_9__490_0 
              #                    occupy a2 with temp_9__490_0
              #                    release a2 with temp_9__490_0
              #                     74   untrack temp_6_ret_of_getint_21_0 
              #                     73   untrack temp_5_ptr_of_arr_17_21 
              #                     69   i_17_3 = i32 i_17_1 
              #                    occupy a0 with i_17_1
              #                    load from i_17_1 in mem


    lw      a0,60(sp)
              #                    occupy a1 with i_17_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     70   sum_17_1 = i32 0_0 
              #                    occupy a2 with sum_17_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.exit_20 
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: i_17_3, tracked: true } |     a2:Freed { symidx: sum_17_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     53   label while.exit_20: 
.while.exit_20:
              #                     56   temp_10__614_0 = icmp i32 Ne i_17_3, 0_0 
              #                    occupy a1 with i_17_3
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_10__614_0
    xor     a4,a1,a3
    snez    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                     59   br i1 temp_10__614_0, label while.body_25, label while.exit_25 
              #                    occupy a4 with temp_10__614_0
              #                    free a4
              #                    occupy a4 with temp_10__614_0
    bnez    a4, .while.body_25
              #                    free a4
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: i_17_3, tracked: true } |     a2:Freed { symidx: sum_17_1, tracked: true } |     a4:Freed { symidx: temp_10__614_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     57   label while.body_25: 
.while.body_25:
              #                     28   temp_1_arithop_26_0 = Sub i32 i_17_3, 1_0 
              #                    occupy a1 with i_17_3
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_1_arithop_26_0
              #                    regtab:    a0:Freed { symidx: i_17_1, tracked: true } |     a1:Occupied { symidx: i_17_3, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: sum_17_1, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_10__614_0, tracked: true } |     a5:Occupied { symidx: temp_1_arithop_26_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a5,a1,a3
              #                    free a1
              #                    free a3
              #                    free a5
              #                     29   (nop) 
              #                     31   temp_2_ptr_of_arr_17_26 = GEP arr_17_1:Array:i32:[Some(100_0)] [Some(temp_1_arithop_26_0)] 
              #                    occupy a6 with temp_2_ptr_of_arr_17_26
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_1_arithop_26_0
    mv      a7, a5
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,64
              #                    free a6
              #                     33   temp_3_ele_of_arr_17_26_0 = load temp_2_ptr_of_arr_17_26:ptr->i32 
              #                    occupy a6 with temp_2_ptr_of_arr_17_26
              #                    occupy s1 with temp_3_ele_of_arr_17_26_0
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     34   mu arr_17_1:33 
              #                     36   temp_4_arithop_26_0 = Add i32 sum_17_1, temp_3_ele_of_arr_17_26_0 
              #                    occupy a2 with sum_17_1
              #                    occupy s1 with temp_3_ele_of_arr_17_26_0
              #                    occupy s2 with temp_4_arithop_26_0
    ADDW    s2,a2,s1
              #                    free a2
              #                    free s1
              #                    free s2
              #                     37   (nop) 
              #                     71   i_17_3 = i32 temp_1_arithop_26_0 
              #                    occupy a5 with temp_1_arithop_26_0
              #                    occupy a1 with i_17_3
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                     72   sum_17_1 = i32 temp_4_arithop_26_0 
              #                    occupy s2 with temp_4_arithop_26_0
              #                    occupy a2 with sum_17_1
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          jump label: while.exit_20 
              #                    occupy a6 with temp_2_ptr_of_arr_17_26
              #                    store to temp_2_ptr_of_arr_17_26 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_2_ptr_of_arr_17_26
              #                    occupy s1 with temp_3_ele_of_arr_17_26_0
              #                    store to temp_3_ele_of_arr_17_26_0 in mem offset legal
    sw      s1,28(sp)
              #                    release s1 with temp_3_ele_of_arr_17_26_0
              #                    occupy a5 with temp_1_arithop_26_0
              #                    store to temp_1_arithop_26_0 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_1_arithop_26_0
              #                    occupy a4 with temp_10__614_0
              #                    store to temp_10__614_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_10__614_0
              #                    occupy s2 with temp_4_arithop_26_0
              #                    store to temp_4_arithop_26_0 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_4_arithop_26_0
    j       .while.exit_20
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: i_17_3, tracked: true } |     a2:Freed { symidx: sum_17_1, tracked: true } |     a4:Freed { symidx: temp_10__614_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     58   label while.exit_25: 
.while.exit_25:
              #                     25   temp_0_arithop_17_0 = Mod i32 sum_17_1, 79_0 
              #                    occupy a2 with sum_17_1
              #                    occupy a3 with 79_0
    li      a3, 79
              #                    occupy a5 with temp_0_arithop_17_0
    rem     a5,a2,a3
              #                    free a2
              #                    free a3
              #                    free a5
              #                     26   ret temp_0_arithop_17_0 
              #                    load from ra_main_0 in mem
    ld      ra,472(sp)
              #                    load from s0_main_0 in mem
    ld      s0,464(sp)
              #                    occupy a5 with temp_0_arithop_17_0
              #                    store to temp_0_arithop_17_0 in mem offset legal
    sw      a5,48(sp)
              #                    release a5 with temp_0_arithop_17_0
              #                    occupy a0 with i_17_1
              #                    store to i_17_1 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_17_1
              #                    occupy a0 with temp_0_arithop_17_0
              #                    load from temp_0_arithop_17_0 in mem


    lw      a0,48(sp)
    addi    sp,sp,480
              #                    free a0
    ret
