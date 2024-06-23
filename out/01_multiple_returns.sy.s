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
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|a:4 at 36|b:4 at 32|c:4 at 28|temp_0_arithop:4 at 24|d:4 at 20|temp_1_arithop:4 at 16|A:4 at 12|temp_2_arithop:4 at 8|temp_3_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 d_17 
              #                          alloc i32 temp_1_arithop_17 
              #                          alloc i32 A_17 
              #                          alloc i32 temp_2_arithop_17 
              #                          alloc i32 temp_3_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          b_17 = i32 8_0 
              #                    occupy a0 with b_17
    li      a0, 8
              #                    free a0
              #                          c_17 = i32 12_0 
              #                    occupy a1 with c_17
    li      a1, 12
              #                    free a1
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Add i32 b_17, c_17 
              #                    occupy a0 with b_17
              #                    occupy a1 with c_17
              #                    occupy a2 with temp_0_arithop_17
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          a_17 = i32 temp_0_arithop_17 
              #                    occupy a2 with temp_0_arithop_17
              #                    occupy a3 with a_17
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with a_17
              #                    store to b_17 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with b_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: c_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          d_17 = i32 9_0 
              #                    occupy a0 with d_17
    li      a0, 9
              #                    free a0
              #                          new_var temp_1_arithop_17:i32 
              #                          temp_1_arithop_17 = Mul i32 a_17, d_17 
              #                    occupy a3 with a_17
              #                    load from a_17 in mem


    lw      a3,36(sp)
              #                    occupy a0 with d_17
              #                    occupy a4 with temp_1_arithop_17
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
              #                    free a4
              #                          a_17 = i32 temp_1_arithop_17 
              #                    occupy a4 with temp_1_arithop_17
              #                    occupy a3 with a_17
    mv      a3, a4
              #                    free a4
              #                    free a3
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with a_17
              #                    store to d_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with d_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: c_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          A_17 = i32 4_0 
              #                    occupy a0 with A_17
    li      a0, 4
              #                    free a0
              #                          new_var temp_2_arithop_17:i32 
              #                          temp_2_arithop_17 = Sub i32 4_0, b_17 
              #                    occupy a3 with 4_0
    li      a3, 4
              #                    occupy a5 with b_17
              #                    load from b_17 in mem


    lw      a5,32(sp)
              #                    occupy a6 with temp_2_arithop_17
              #                    regtab:    a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: c_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } |     a3:Occupied { symidx: 4_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: temp_2_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_3_arithop_17:i32 
              #                          temp_3_arithop_17 = Mul i32 temp_2_arithop_17, c_17 
              #                    occupy a6 with temp_2_arithop_17
              #                    occupy a1 with c_17
              #                    occupy a7 with temp_3_arithop_17
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
              #                    free a7
              #                          a_17 = i32 temp_3_arithop_17 
              #                    occupy a7 with temp_3_arithop_17
              #                    occupy s1 with a_17
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with a_17
              #                    store to A_17 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with A_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: c_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: b_17, tracked: true } |     a6:Freed { symidx: temp_2_arithop_17, tracked: true } |     a7:Freed { symidx: temp_3_arithop_17, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: c_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } |     a5:Freed { symidx: b_17, tracked: true } |     a6:Freed { symidx: temp_2_arithop_17, tracked: true } |     a7:Freed { symidx: temp_3_arithop_17, tracked: true } | 
