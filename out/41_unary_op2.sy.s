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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|a:4 at 28|b:4 at 24|temp_0_arithop:4 at 20|temp_1_arithop:4 at 16|temp_2_booltrans:1 at 15|temp_3_logicnot:1 at 14|temp_4_booltrans:1 at 13|temp_5_logicnot:1 at 12|temp_6_booltrans:1 at 11|temp_7_logicnot:1 at 10|temp_8_:1 at 9|none:1 at 8|temp_9_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 temp_1_arithop_17 
              #                          alloc i1 temp_2_booltrans_22 
              #                          alloc i1 temp_3_logicnot_22 
              #                          alloc i1 temp_4_booltrans_22 
              #                          alloc i1 temp_5_logicnot_22 
              #                          alloc i1 temp_6_booltrans_22 
              #                          alloc i1 temp_7_logicnot_22 
              #                          alloc i1 temp_8__22 
              #                          alloc i32 temp_9_arithop_26 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          new_var b_17:i32 
              #                          a_17 = i32 070_0 
              #                    occupy a0 with a_17
    li      a0, 070
              #                    free a0
              #                          b_17 = i32 0x4_0 
              #                    occupy a1 with b_17
    li      a1, 0x4
              #                    free a1
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Sub i32 a_17, -4_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with -4_0
    li      a2, -4
              #                    occupy a3 with temp_0_arithop_17
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Occupied { symidx: -4_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_0_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          new_var temp_1_arithop_17:i32 
              #                          temp_1_arithop_17 = Add i32 temp_0_arithop_17, b_17 
              #                    occupy a3 with temp_0_arithop_17
              #                    occupy a1 with b_17
              #                    occupy a4 with temp_1_arithop_17
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          a_17 = i32 temp_1_arithop_17 
              #                    occupy a4 with temp_1_arithop_17
              #                    occupy a0 with a_17
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_2_booltrans_22:i1 
              #                          temp_2_booltrans_22 = icmp i1 Ne a_17, 0_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a5 with temp_2_booltrans_22
    xor     a5,a0,a2
    snez    a5, a5
              #                    free a0
              #                    free a2
              #                    free a5
              #                          new_var temp_3_logicnot_22:i1 
              #                          temp_3_logicnot_22 = xor i1 temp_2_booltrans_22, true 
              #                    occupy a5 with temp_2_booltrans_22
              #                    occupy a6 with temp_3_logicnot_22
    seqz    a6, a5
              #                    free a5
              #                    free a6
              #                          new_var temp_4_booltrans_22:i1 
              #                          temp_4_booltrans_22 = icmp i1 Ne temp_3_logicnot_22, 0_0 
              #                    occupy a6 with temp_3_logicnot_22
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a7 with temp_4_booltrans_22
    xor     a7,a6,a2
    snez    a7, a7
              #                    free a6
              #                    free a2
              #                    free a7
              #                          new_var temp_5_logicnot_22:i1 
              #                          temp_5_logicnot_22 = xor i1 temp_4_booltrans_22, true 
              #                    occupy a7 with temp_4_booltrans_22
              #                    occupy s1 with temp_5_logicnot_22
    seqz    s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_6_booltrans_22:i1 
              #                          temp_6_booltrans_22 = icmp i1 Ne temp_5_logicnot_22, 0_0 
              #                    occupy s1 with temp_5_logicnot_22
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with temp_6_booltrans_22
    xor     s2,s1,a2
    snez    s2, s2
              #                    free s1
              #                    free a2
              #                    free s2
              #                          new_var temp_7_logicnot_22:i1 
              #                          temp_7_logicnot_22 = xor i1 temp_6_booltrans_22, true 
              #                    occupy s2 with temp_6_booltrans_22
              #                    occupy s3 with temp_7_logicnot_22
    seqz    s3, s2
              #                    free s2
              #                    free s3
              #                          new_var temp_8__22:i1 
              #                          temp_8__22 = Sub i1 0_0, temp_7_logicnot_22 
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s3 with temp_7_logicnot_22
              #                    occupy s4 with temp_8__22
    sub     s4,a2,s3
              #                    free a2
              #                    free s3
              #                    free s4
              #                          br i1 temp_8__22, label branch_true_23, label branch_false_23 
              #                    occupy s4 with temp_8__22
              #                    free s4
              #                    occupy s4 with temp_8__22
    bnez    s4, .branch_true_23
              #                    free s4
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: temp_2_booltrans_22, tracked: true } |     a6:Freed { symidx: temp_3_logicnot_22, tracked: true } |     a7:Freed { symidx: temp_4_booltrans_22, tracked: true } |     s1:Freed { symidx: temp_5_logicnot_22, tracked: true } |     s2:Freed { symidx: temp_6_booltrans_22, tracked: true } |     s3:Freed { symidx: temp_7_logicnot_22, tracked: true } |     s4:Freed { symidx: temp_8__22, tracked: true } | 
              #                          label branch_true_23: 
.branch_true_23:
              #                          a_17 = i32 -1_0 
              #                    occupy a0 with a_17
    li      a0, -1
              #                    free a0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: temp_2_booltrans_22, tracked: true } |     a6:Freed { symidx: temp_3_logicnot_22, tracked: true } |     a7:Freed { symidx: temp_4_booltrans_22, tracked: true } |     s1:Freed { symidx: temp_5_logicnot_22, tracked: true } |     s2:Freed { symidx: temp_6_booltrans_22, tracked: true } |     s3:Freed { symidx: temp_7_logicnot_22, tracked: true } |     s4:Freed { symidx: temp_8__22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                          new_var temp_9_arithop_26:i32 
              #                          temp_9_arithop_26 = Add i32 0_0, b_17 
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a1 with b_17
              #                    occupy s5 with temp_9_arithop_26
    add     s5,a2,a1
              #                    free a2
              #                    free a1
              #                    free s5
              #                          a_17 = i32 temp_9_arithop_26 
              #                    occupy s5 with temp_9_arithop_26
              #                    occupy a0 with a_17
    mv      a0, s5
              #                    free s5
              #                    free a0
              #                          jump label: L2_0 
              #                    store to temp_9_arithop_26 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_9_arithop_26
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: temp_2_booltrans_22, tracked: true } |     a6:Freed { symidx: temp_3_logicnot_22, tracked: true } |     a7:Freed { symidx: temp_4_booltrans_22, tracked: true } |     s1:Freed { symidx: temp_5_logicnot_22, tracked: true } |     s2:Freed { symidx: temp_6_booltrans_22, tracked: true } |     s3:Freed { symidx: temp_7_logicnot_22, tracked: true } |     s4:Freed { symidx: temp_8__22, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: temp_2_booltrans_22, tracked: true } |     a6:Freed { symidx: temp_3_logicnot_22, tracked: true } |     a7:Freed { symidx: temp_4_booltrans_22, tracked: true } |     s1:Freed { symidx: temp_5_logicnot_22, tracked: true } |     s2:Freed { symidx: temp_6_booltrans_22, tracked: true } |     s3:Freed { symidx: temp_7_logicnot_22, tracked: true } |     s4:Freed { symidx: temp_8__22, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                           Call void putint_0(a_17) 
              #                    saved register dumping to mem
              #                    store to temp_5_logicnot_22 in mem offset legal
    sb      s1,12(sp)
              #                    release s1 with temp_5_logicnot_22
              #                    store to temp_6_booltrans_22 in mem offset legal
    sb      s2,11(sp)
              #                    release s2 with temp_6_booltrans_22
              #                    store to temp_7_logicnot_22 in mem offset legal
    sb      s3,10(sp)
              #                    release s3 with temp_7_logicnot_22
              #                    store to temp_8__22 in mem offset legal
    sb      s4,9(sp)
              #                    release s4 with temp_8__22
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    store to b_17 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with b_17
              #                    store to temp_0_arithop_17 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_0_arithop_17
              #                    store to temp_1_arithop_17 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_1_arithop_17
              #                    store to temp_2_booltrans_22 in mem offset legal
    sb      a5,15(sp)
              #                    release a5 with temp_2_booltrans_22
              #                    store to temp_3_logicnot_22 in mem offset legal
    sb      a6,14(sp)
              #                    release a6 with temp_3_logicnot_22
              #                    store to temp_4_booltrans_22 in mem offset legal
    sb      a7,13(sp)
              #                    release a7 with temp_4_booltrans_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_17_0
              #                    load from a_17 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab 
