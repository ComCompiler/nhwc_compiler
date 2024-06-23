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
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|a:4 at 28|b:4 at 24|c:4 at 20|d:4 at 16|temp_0_arithop:4 at 12|temp_1_arithop:4 at 8|temp_2_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 d_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 temp_1_arithop_17 
              #                          alloc i32 temp_2_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          new_var b_17:i32 
              #                          new_var c_17:i32 
              #                          new_var d_17:i32 
              #                          a_17 = i32 10_0 
              #                    occupy a0 with a_17
    li      a0, 10
              #                    free a0
              #                          b_17 = i32 4_0 
              #                    occupy a1 with b_17
    li      a1, 4
              #                    free a1
              #                          c_17 = i32 2_0 
              #                    occupy a2 with c_17
    li      a2, 2
              #                    free a2
              #                          d_17 = i32 2_0 
              #                    occupy a3 with d_17
    li      a3, 2
              #                    free a3
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Sub i32 b_17, d_17 
              #                    occupy a1 with b_17
              #                    occupy a3 with d_17
              #                    occupy a4 with temp_0_arithop_17
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Occupied { symidx: d_17, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_0_arithop_17, tracked: true, occupy_count: 1 } | 


    sub     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          new_var temp_1_arithop_17:i32 
              #                          temp_1_arithop_17 = Add i32 c_17, a_17 
              #                    occupy a2 with c_17
              #                    occupy a0 with a_17
              #                    occupy a5 with temp_1_arithop_17
    add     a5,a2,a0
              #                    free a2
              #                    free a0
              #                    free a5
              #                          new_var temp_2_arithop_17:i32 
              #                          temp_2_arithop_17 = Mul i32 temp_1_arithop_17, temp_0_arithop_17 
              #                    occupy a5 with temp_1_arithop_17
              #                    occupy a4 with temp_0_arithop_17
              #                    occupy a6 with temp_2_arithop_17
    mul     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          ret temp_2_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    store to temp_2_arithop_17 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_2_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_2_arithop_17
              #                    load from temp_2_arithop_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: temp_0_arithop_17, tracked: true } |     a5:Freed { symidx: temp_1_arithop_17, tracked: true } | 
