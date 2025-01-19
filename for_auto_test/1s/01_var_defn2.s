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
              #                     22   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_0_value_from_ptr _s19 _i0:4 at 4|temp_1_arithop _s19 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     24   alloc i32 [a_19] 
              #                     26   alloc i32 [temp_0_value_from_ptr_19] 
              #                     29   alloc i32 [temp_1_arithop_19] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     23   (nop) 
              #                     27   temp_0_value_from_ptr_19_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_0_value_from_ptr_19_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     28   mu b_0_0:27 
              #                     30   temp_1_arithop_19_0 = Add i32 5_0, temp_0_value_from_ptr_19_0 
              #                    occupy a2 with 5_0
    li      a2, 5
              #                    occupy a1 with temp_0_value_from_ptr_19_0
              #                    occupy a3 with temp_1_arithop_19_0
    ADDW    a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     34   untrack temp_0_value_from_ptr_19_0 
              #                    occupy a1 with temp_0_value_from_ptr_19_0
              #                    release a1 with temp_0_value_from_ptr_19_0
              #                     31   ret temp_1_arithop_19_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a3 with temp_1_arithop_19_0
              #                    store to temp_1_arithop_19_0 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_1_arithop_19_0
              #                    occupy a0 with temp_1_arithop_19_0
              #                    load from temp_1_arithop_19_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl b
              #                     20   global i32 b_0 
    .type b,@object
b:
    .word 5
    .align 4
    .globl a
              #                     17   global i32 a_0 
    .type a,@object
a:
    .word 3
