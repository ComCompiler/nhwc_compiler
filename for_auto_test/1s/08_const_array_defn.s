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
              #                     35   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|temp_6_ptr_of_*a_0:8 at 8|temp_7_ele_of_*a_0 _s18 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     37   alloc ptr->i32 [temp_6_ptr_of_*a_0_18] 
              #                     39   alloc i32 [temp_7_ele_of_*a_0_18] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     38   temp_6_ptr_of_*a_0_18 = GEP *a_0:Array:i32:[None] [Some(4_0)] 
              #                    occupy a0 with temp_6_ptr_of_*a_0_18
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 4
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     40   temp_7_ele_of_*a_0_18_0 = load temp_6_ptr_of_*a_0_18:ptr->i32 
              #                    occupy a0 with temp_6_ptr_of_*a_0_18
              #                    occupy a3 with temp_7_ele_of_*a_0_18_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     45   untrack temp_6_ptr_of_*a_0_18 
              #                    occupy a0 with temp_6_ptr_of_*a_0_18
              #                    release a0 with temp_6_ptr_of_*a_0_18
              #                     41   mu a_0_0:40 
              #                     42   ret temp_7_ele_of_*a_0_18_0 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a3 with temp_7_ele_of_*a_0_18_0
              #                    store to temp_7_ele_of_*a_0_18_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_7_ele_of_*a_0_18_0
              #                    occupy a0 with temp_7_ele_of_*a_0_18_0
              #                    load from temp_7_ele_of_*a_0_18_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a
              #                     33   global Array:i32:[Some(5_0)] a_0 
    .type a,@object
a:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
    .zero 4
