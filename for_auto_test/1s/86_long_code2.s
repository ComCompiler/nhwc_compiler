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
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_0_ptr_of_*a_0:8 at 16|temp_1_ptr_of_*a_0:8 at 8|temp_2_ele_of_*a_0 _s18 _i0:4 at 4|temp_3_arithop _s18 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     36   a_0_1 = chi a_0_0:18 
              #                     19   alloc ptr->i32 [temp_0_ptr_of_*a_0_18] 
              #                     23   alloc ptr->i32 [temp_1_ptr_of_*a_0_18] 
              #                     25   alloc i32 [temp_2_ele_of_*a_0_18] 
              #                     28   alloc i32 [temp_3_arithop_18] 
              #                     31   alloc i32 [ans_18] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     20   temp_0_ptr_of_*a_0_18 = GEP *a_0:ptr->Array:i32:[Some(20000_0)] [Some(4_0), Some(19999_0)] 
              #                    occupy a0 with temp_0_ptr_of_*a_0_18
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 80000
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 19999
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a3 with *a_0
              #                       load label a as ptr to reg
    la      a3, a
              #                    occupy reg a3 with *a_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     21   store 1_0:i32 temp_0_ptr_of_*a_0_18:ptr->i32 
              #                    occupy a0 with temp_0_ptr_of_*a_0_18
              #                    occupy a4 with 1_0
    li      a4, 1
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     22   a_0_2 = chi a_0_1:21 
              #                     24   (nop) 
              #                     26   temp_2_ele_of_*a_0_18_0 = load temp_0_ptr_of_*a_0_18:ptr->i32 
              #                    occupy a0 with temp_0_ptr_of_*a_0_18
              #                    occupy a5 with temp_2_ele_of_*a_0_18_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     38   untrack temp_0_ptr_of_*a_0_18 
              #                    occupy a0 with temp_0_ptr_of_*a_0_18
              #                    release a0 with temp_0_ptr_of_*a_0_18
              #                     27   mu a_0_2:26 
              #                     29   temp_3_arithop_18_0 = Mul i32 temp_2_ele_of_*a_0_18_0, 4000_0 
              #                    occupy a0 with temp_3_arithop_18_0
              #                    occupy a5 with temp_2_ele_of_*a_0_18_0
              #                    occupy a6 with 4000_0
    li      a6, 4000
    mulw    a0,a5,a6
              #                    free a5
              #                    free a6
              #                    free a0
              #                     39   untrack temp_2_ele_of_*a_0_18_0 
              #                    occupy a5 with temp_2_ele_of_*a_0_18_0
              #                    release a5 with temp_2_ele_of_*a_0_18_0
              #                     30   (nop) 
              #                     37   mu a_0_2:33 
              #                     33   ret temp_3_arithop_18_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with temp_3_arithop_18_0
              #                    store to temp_3_arithop_18_0 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_3_arithop_18_0
              #                    occupy a0 with temp_3_arithop_18_0
              #                    load from temp_3_arithop_18_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,40
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a
              #                     16   global Array:i32:[Some(5_0), Some(20000_0)] a_0 
    .type a,@object
a:
    .zero 400000
