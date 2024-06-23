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
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|a:4 at 12|temp_0_booltrans:1 at 11|temp_1_logicnot:1 at 10|temp_2_booltrans:1 at 9|temp_3_logicnot:1 at 8|temp_4_booltrans:1 at 7|temp_5_logicnot:1 at 6|temp_6_:1 at 5|none:5 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 a_17 
              #                          alloc i1 temp_0_booltrans_20 
              #                          alloc i1 temp_1_logicnot_20 
              #                          alloc i1 temp_2_booltrans_20 
              #                          alloc i1 temp_3_logicnot_20 
              #                          alloc i1 temp_4_booltrans_20 
              #                          alloc i1 temp_5_logicnot_20 
              #                          alloc i1 temp_6__20 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 10_0 
              #                    occupy a0 with a_17
    li      a0, 10
              #                    free a0
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_booltrans_20:i1 
              #                          temp_0_booltrans_20 = icmp i1 Ne a_17, 0_0 
              #                    occupy a0 with a_17
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_0_booltrans_20
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_1_logicnot_20:i1 
              #                          temp_1_logicnot_20 = xor i1 temp_0_booltrans_20, true 
              #                    occupy a2 with temp_0_booltrans_20
              #                    occupy a3 with temp_1_logicnot_20
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_2_booltrans_20:i1 
              #                          temp_2_booltrans_20 = icmp i1 Ne temp_1_logicnot_20, 0_0 
              #                    occupy a3 with temp_1_logicnot_20
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a4 with temp_2_booltrans_20
    xor     a4,a3,a1
    snez    a4, a4
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_3_logicnot_20:i1 
              #                          temp_3_logicnot_20 = xor i1 temp_2_booltrans_20, true 
              #                    occupy a4 with temp_2_booltrans_20
              #                    occupy a5 with temp_3_logicnot_20
    seqz    a5, a4
              #                    free a4
              #                    free a5
              #                          new_var temp_4_booltrans_20:i1 
              #                          temp_4_booltrans_20 = icmp i1 Ne temp_3_logicnot_20, 0_0 
              #                    occupy a5 with temp_3_logicnot_20
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a6 with temp_4_booltrans_20
    xor     a6,a5,a1
    snez    a6, a6
              #                    free a5
              #                    free a1
              #                    free a6
              #                          new_var temp_5_logicnot_20:i1 
              #                          temp_5_logicnot_20 = xor i1 temp_4_booltrans_20, true 
              #                    occupy a6 with temp_4_booltrans_20
              #                    occupy a7 with temp_5_logicnot_20
    seqz    a7, a6
              #                    free a6
              #                    free a7
              #                          new_var temp_6__20:i1 
              #                          temp_6__20 = Sub i1 0_0, temp_5_logicnot_20 
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a7 with temp_5_logicnot_20
              #                    occupy s1 with temp_6__20
    sub     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                          br i1 temp_6__20, label branch_true_21, label branch_false_21 
              #                    occupy s1 with temp_6__20
              #                    free s1
              #                    occupy s1 with temp_6__20
    bnez    s1, .branch_true_21
              #                    free s1
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_0_booltrans_20, tracked: true } |     a3:Freed { symidx: temp_1_logicnot_20, tracked: true } |     a4:Freed { symidx: temp_2_booltrans_20, tracked: true } |     a5:Freed { symidx: temp_3_logicnot_20, tracked: true } |     a6:Freed { symidx: temp_4_booltrans_20, tracked: true } |     a7:Freed { symidx: temp_5_logicnot_20, tracked: true } |     s1:Freed { symidx: temp_6__20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          a_17 = i32 -1_0 
              #                    occupy a0 with a_17
    li      a0, -1
              #                    free a0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_0_booltrans_20, tracked: true } |     a3:Freed { symidx: temp_1_logicnot_20, tracked: true } |     a4:Freed { symidx: temp_2_booltrans_20, tracked: true } |     a5:Freed { symidx: temp_3_logicnot_20, tracked: true } |     a6:Freed { symidx: temp_4_booltrans_20, tracked: true } |     a7:Freed { symidx: temp_5_logicnot_20, tracked: true } |     s1:Freed { symidx: temp_6__20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                          a_17 = i32 9_0 
              #                    occupy a0 with a_17
    li      a0, 9
              #                    free a0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_0_booltrans_20, tracked: true } |     a3:Freed { symidx: temp_1_logicnot_20, tracked: true } |     a4:Freed { symidx: temp_2_booltrans_20, tracked: true } |     a5:Freed { symidx: temp_3_logicnot_20, tracked: true } |     a6:Freed { symidx: temp_4_booltrans_20, tracked: true } |     a7:Freed { symidx: temp_5_logicnot_20, tracked: true } |     s1:Freed { symidx: temp_6__20, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_0_booltrans_20, tracked: true } |     a3:Freed { symidx: temp_1_logicnot_20, tracked: true } |     a4:Freed { symidx: temp_2_booltrans_20, tracked: true } |     a5:Freed { symidx: temp_3_logicnot_20, tracked: true } |     a6:Freed { symidx: temp_4_booltrans_20, tracked: true } |     a7:Freed { symidx: temp_5_logicnot_20, tracked: true } |     s1:Freed { symidx: temp_6__20, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                           Call void putint_0(a_17) 
              #                    saved register dumping to mem
              #                    store to temp_6__20 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_6__20
              #                    store to a_17 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_17
              #                    store to temp_0_booltrans_20 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_0_booltrans_20
              #                    store to temp_1_logicnot_20 in mem offset legal
    sb      a3,10(sp)
              #                    release a3 with temp_1_logicnot_20
              #                    store to temp_2_booltrans_20 in mem offset legal
    sb      a4,9(sp)
              #                    release a4 with temp_2_booltrans_20
              #                    store to temp_3_logicnot_20 in mem offset legal
    sb      a5,8(sp)
              #                    release a5 with temp_3_logicnot_20
              #                    store to temp_4_booltrans_20 in mem offset legal
    sb      a6,7(sp)
              #                    release a6 with temp_4_booltrans_20
              #                    store to temp_5_logicnot_20 in mem offset legal
    sb      a7,6(sp)
              #                    release a7 with temp_5_logicnot_20
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_17_0
              #                    load from a_17 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab 
