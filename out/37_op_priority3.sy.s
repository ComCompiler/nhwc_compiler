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
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|a:4 at 20|b:4 at 16|temp_0_arithop:4 at 12|temp_1_arithop:4 at 8|temp_2_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 temp_1_arithop_17 
              #                          alloc i32 temp_2_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          new_var b_17:i32 
              #                          a_17 = i32 10_0 
              #                    occupy a0 with a_17
    li      a0, 10
              #                    free a0
              #                          b_17 = i32 30_0 
              #                    occupy a1 with b_17
    li      a1, 30
              #                    free a1
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Sub i32 a_17, -5_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with -5_0
    li      a2, -5
              #                    occupy a3 with temp_0_arithop_17
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Occupied { symidx: -5_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_0_arithop_17, tracked: true, occupy_count: 1 } | 


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
              #                          new_var temp_2_arithop_17:i32 
              #                          temp_2_arithop_17 = Add i32 temp_1_arithop_17, -5_0 
              #                    occupy a4 with temp_1_arithop_17
              #                    found literal reg Some(a2) already exist with -5_0
              #                    occupy a2 with -5_0
              #                    occupy a5 with temp_2_arithop_17
    add     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          ret temp_2_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    store to temp_2_arithop_17 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_2_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_2_arithop_17
              #                    load from temp_2_arithop_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_17, tracked: true } |     a4:Freed { symidx: temp_1_arithop_17, tracked: true } | 
