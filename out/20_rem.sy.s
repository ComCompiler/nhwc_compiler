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
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|a:4 at 4|temp_0_arithop:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 a_17 
              #                          alloc i32 temp_0_arithop_17 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 10_0 
              #                    occupy a0 with a_17
    li      a0, 10
              #                    free a0
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Mod i32 a_17, 3_0 
              #                    occupy a0 with a_17
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with temp_0_arithop_17
              #                    load from temp_0_arithop_17 in mem


    lw      a2,0(sp)
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_0_arithop_17 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_0_arithop_17 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_0_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_0_arithop_17
              #                    load from temp_0_arithop_17 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
