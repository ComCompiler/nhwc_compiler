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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     16   Define f_0 "" -> f_ret_0 
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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19   ret 10_0 
              #                    load from ra_f_0 in mem
    ld      ra,8(sp)
              #                    load from s0_f_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     23   alloc i32 [f_20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     22   (nop) 
              #                     25   ret 20_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 20_0
    li      a0, 20
    addi    sp,sp,16
              #                    free a0
    ret
