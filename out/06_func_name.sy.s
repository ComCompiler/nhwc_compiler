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
              #                          Define f_0 [] -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 8|s0_f:8 at 0
    addi    sp,sp,-16
              #                    store to ra_f_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          ret 10_0 
              #                    load from ra_f_0 in mem
    ld      ra,8(sp)
              #                    load from s0_f_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|f:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 f_20 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          f_20 = i32 20_0 
              #                    occupy a0 with f_20
    li      a0, 20
              #                    free a0
              #                          ret f_20 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to f_20 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with f_20
              #                    occupy a0 with f_20
              #                    load from f_20 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
