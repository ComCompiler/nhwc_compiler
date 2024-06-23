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
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_0_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_0_arithop_18 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_0_arithop_18:i32 
              #                          temp_0_arithop_18 = Mul i32 5_0, 5_0 
              #                    occupy a0 with 5_0
    li      a0, 5
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_0_arithop_18
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_0_arithop_18 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_0_arithop_18 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_0_arithop_18
              #                    occupy a0 with temp_0_arithop_18
              #                    load from temp_0_arithop_18 in mem


    lw      a0,4(sp)
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
    .word 5
