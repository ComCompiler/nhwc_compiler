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
              #                          Define doubleWhile_0 [] -> doubleWhile_ret_0 
    .globl doubleWhile
    .type doubleWhile,@function
doubleWhile:
              #                    mem layout:|ra_doubleWhile:8 at 40|s0_doubleWhile:8 at 32|i:4 at 28|j:4 at 24|temp_0_cmp:1 at 23|none:3 at 20|temp_1_arithop:4 at 16|temp_2_cmp:1 at 15|none:3 at 12|temp_3_arithop:4 at 8|temp_4_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_doubleWhile_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_doubleWhile_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 i_17 
              #                          alloc i32 j_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i32 temp_1_arithop_24 
              #                          alloc i1 temp_2_cmp_26 
              #                          alloc i32 temp_3_arithop_28 
              #                          alloc i32 temp_4_arithop_24 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var i_17:i32 
              #                          i_17 = i32 5_0 
              #                    occupy a0 with i_17
    li      a0, 5
              #                    free a0
              #                          new_var j_17:i32 
              #                          j_17 = i32 7_0 
              #                    occupy a1 with j_17
    li      a1, 7
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Slt i_17, 100_0 
              #                    occupy a0 with i_17
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_0_cmp_22
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a3 with temp_0_cmp_22
              #                    free a3
              #                    occupy a3 with temp_0_cmp_22
    bnez    a3, .while.body_23
              #                    free a3
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_1_arithop_24:i32 
              #                          temp_1_arithop_24 = Add i32 i_17, 30_0 
              #                    occupy a0 with i_17
              #                    occupy a2 with 30_0
    li      a2, 30
              #                    occupy a4 with temp_1_arithop_24
    add     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                          i_17 = i32 temp_1_arithop_24 
              #                    occupy a4 with temp_1_arithop_24
              #                    occupy a0 with i_17
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_24, tracked: true } | 
              #                          label while.head_27: 
.while.head_27:
              #                          new_var temp_2_cmp_26:i1 
              #                          temp_2_cmp_26 = icmp i32 Slt j_17, 100_0 
              #                    occupy a1 with j_17
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a5 with temp_2_cmp_26
    slt     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          br i1 temp_2_cmp_26, label while.body_27, label while.exit_27 
              #                    occupy a5 with temp_2_cmp_26
              #                    free a5
              #                    occupy a5 with temp_2_cmp_26
    bnez    a5, .while.body_27
              #                    free a5
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_24, tracked: true } |     a5:Freed { symidx: temp_2_cmp_26, tracked: true } | 
              #                          label while.body_27: 
.while.body_27:
              #                          new_var temp_3_arithop_28:i32 
              #                          temp_3_arithop_28 = Add i32 j_17, 6_0 
              #                    occupy a1 with j_17
              #                    occupy a2 with 6_0
    li      a2, 6
              #                    occupy a6 with temp_3_arithop_28
    add     a6,a1,a2
              #                    free a1
              #                    free a2
              #                    free a6
              #                          j_17 = i32 temp_3_arithop_28 
              #                    occupy a6 with temp_3_arithop_28
              #                    occupy a1 with j_17
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_27 
              #                    store to temp_3_arithop_28 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_3_arithop_28
              #                    store to temp_2_cmp_26 in mem offset legal
    sb      a5,15(sp)
              #                    release a5 with temp_2_cmp_26
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_24, tracked: true } |     a5:Freed { symidx: temp_2_cmp_26, tracked: true } | 
              #                          label while.exit_27: 
.while.exit_27:
              #                          new_var temp_4_arithop_24:i32 
              #                          temp_4_arithop_24 = Sub i32 j_17, 100_0 
              #                    occupy a1 with j_17
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a6 with temp_4_arithop_24
              #                    regtab:    a0:Freed { symidx: i_17, tracked: true } |     a1:Occupied { symidx: j_17, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 100_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_24, tracked: true } |     a5:Freed { symidx: temp_2_cmp_26, tracked: true } |     a6:Occupied { symidx: temp_4_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     a6,a1,a2
              #                    free a1
              #                    free a2
              #                    free a6
              #                          j_17 = i32 temp_4_arithop_24 
              #                    occupy a6 with temp_4_arithop_24
              #                    occupy a1 with j_17
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_23 
              #                    store to temp_1_arithop_24 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_1_arithop_24
              #                    store to temp_4_arithop_24 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_4_arithop_24
              #                    store to temp_0_cmp_22 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_0_cmp_22
              #                    store to temp_2_cmp_26 in mem offset legal
    sb      a5,15(sp)
              #                    release a5 with temp_2_cmp_26
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                          ret j_17 
              #                    load from ra_doubleWhile_0 in mem
    ld      ra,40(sp)
              #                    load from s0_doubleWhile_0 in mem
    ld      s0,32(sp)
              #                    store to j_17 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with j_17
              #                    store to i_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_17
              #                    occupy a0 with j_17
              #                    load from j_17 in mem


    lw      a0,24(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_5_ret_of_doubleWhile:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_5_ret_of_doubleWhile_33 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_5_ret_of_doubleWhile_33:i32 
              #                          temp_5_ret_of_doubleWhile_33 =  Call i32 doubleWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    doubleWhile
              #                    store to temp_5_ret_of_doubleWhile_33 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_5_ret_of_doubleWhile_33 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_5_ret_of_doubleWhile_33 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_5_ret_of_doubleWhile_33
              #                    occupy a0 with temp_5_ret_of_doubleWhile_33
              #                    load from temp_5_ret_of_doubleWhile_33 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
