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
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     18   alloc f32 [f_17] 
              #                     19   alloc i32 [temp_0__17] 
              #                     22   alloc i32 [c_17] 
              #                     27   alloc f32 [temp_1__20] 
              #                     29   alloc i1 [temp_2_cmp_20] 
              #                     31   alloc i32 [temp_3__20] 
              #                     33   alloc f32 [temp_4__20] 
              #                     35   alloc i1 [temp_5_cmp_20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
              #                     20   (nop) 
              #                     21   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     28   (nop) 
              #                     30   (nop) 
              #                     32   (nop) 
              #                     34   (nop) 
              #                     36   (nop) 
              #                          jump label: branch_false_21 
    j       .branch_false_21
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   label branch_true_21: 
.branch_true_21:
              #                     26   ret 1_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   label branch_false_21: 
.branch_false_21:
              #                     24   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,16
              #                    free a0
    ret
