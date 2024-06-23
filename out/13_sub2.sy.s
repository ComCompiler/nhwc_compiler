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
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|b:4 at 4|temp_0_arithop:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 b_18 
              #                          alloc i32 temp_0_arithop_18 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var b_18:i32 
              #                          b_18 = i32 2_0 
              #                    occupy a0 with b_18
    li      a0, 2
              #                    free a0
              #                          new_var temp_0_arithop_18:i32 
              #                          temp_0_arithop_18 = Sub i32 b_18, 10_0 
              #                    occupy a0 with b_18
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_0_arithop_18
              #                    regtab:    a0:Occupied { symidx: b_18, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 10_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_0_arithop_18, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_0_arithop_18 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_0_arithop_18 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_0_arithop_18
              #                    store to b_18 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with b_18
              #                    occupy a0 with temp_0_arithop_18
              #                    load from temp_0_arithop_18 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 10
