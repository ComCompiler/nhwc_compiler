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
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|a _s17 _i0:4 at 12|b0 _s17 _i0:4 at 8|_c _s17 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     17   alloc i32 [a_17] 
              #                     19   alloc i32 [b0_17] 
              #                     21   alloc i32 [_c_17] 
              #                     27   alloc i32 [temp_0_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     20    
              #                     22    
              #                     23   (nop) 
              #                     24   (nop) 
              #                     25   (nop) 
              #                     28   (nop) 
              #                     29   ret 5_0 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,32
              #                    free a0
    ret
