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
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|i:4 at 36|sum:4 at 32|temp_7_cmp:1 at 31|none:7 at 24|temp_8_array_ptr:8 at 16|temp_9_array_ele:4 at 12|temp_10_arithop:4 at 8|temp_11_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 i_19 
              #                          alloc i32 sum_19 
              #                          alloc i1 temp_7_cmp_21 
              #                          alloc ptr->i32 temp_8_array_ptr_23 
              #                          alloc i32 temp_9_array_ele_23 
              #                          alloc i32 temp_10_arithop_23 
              #                          alloc i32 temp_11_arithop_23 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          i_19 = i32 0_0 
              #                    occupy a0 with i_19
    li      a0, 0
              #                    free a0
              #                          sum_19 = i32 0_0 
              #                    occupy a1 with sum_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: sum_19, tracked: true } | 
              #                          label while.head_22: 
.while.head_22:
              #                          new_var temp_7_cmp_21:i1 
              #                          temp_7_cmp_21 = icmp i32 Slt i_19, 6_0 
              #                    occupy a0 with i_19
              #                    occupy a2 with 6_0
    li      a2, 6
              #                    occupy a3 with temp_7_cmp_21
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_7_cmp_21, label while.body_22, label while.exit_22 
              #                    occupy a3 with temp_7_cmp_21
              #                    free a3
              #                    occupy a3 with temp_7_cmp_21
    bnez    a3, .while.body_22
              #                    free a3
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: sum_19, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21, tracked: true } | 
              #                          label while.body_22: 
.while.body_22:
              #                          new_var temp_8_array_ptr_23:ptr->i32 
              #                          temp_8_array_ptr_23 = getelementptr *arr_0:ptr->i32 [Some(i_19)] 
              #                    occupy a2 with temp_8_array_ptr_23
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with i_19
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *arr_0
              #                       load label arr as ptr to reg
    la      a6, arr
              #                    occupy reg a6 with *arr_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_9_array_ele_23:i32 
              #                          temp_9_array_ele_23 = load temp_8_array_ptr_23:ptr->i32 
              #                    occupy a2 with temp_8_array_ptr_23
              #                    occupy a7 with temp_9_array_ele_23
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_10_arithop_23:i32 
              #                          temp_10_arithop_23 = Add i32 sum_19, temp_9_array_ele_23 
              #                    occupy a1 with sum_19
              #                    occupy a7 with temp_9_array_ele_23
              #                    occupy s1 with temp_10_arithop_23
    add     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                          sum_19 = i32 temp_10_arithop_23 
              #                    occupy s1 with temp_10_arithop_23
              #                    occupy a1 with sum_19
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          new_var temp_11_arithop_23:i32 
              #                          temp_11_arithop_23 = Add i32 i_19, 1_0 
              #                    occupy a0 with i_19
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with temp_11_arithop_23
    add     s2,a0,a4
              #                    free a0
              #                    free a4
              #                    free s2
              #                          i_19 = i32 temp_11_arithop_23 
              #                    occupy s2 with temp_11_arithop_23
              #                    occupy a0 with i_19
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_22 
              #                    store to temp_7_cmp_21 in mem offset legal
    sb      a3,31(sp)
              #                    release a3 with temp_7_cmp_21
              #                    store to temp_11_arithop_23 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_11_arithop_23
              #                    store to temp_9_array_ele_23 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_9_array_ele_23
              #                    store to temp_10_arithop_23 in mem offset legal
    sw      s1,8(sp)
              #                    release s1 with temp_10_arithop_23
              #                    store to temp_8_array_ptr_23 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_8_array_ptr_23
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: sum_19, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                          ret sum_19 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to sum_19 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with sum_19
              #                    store to i_19 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_19
              #                    occupy a0 with sum_19
              #                    load from sum_19 in mem


    lw      a0,32(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_7_cmp_21, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl arr
              #                          global Array:i32:[Some(6_0)] arr_0 
    .type arr,@object
arr:
    .word 1
    .word 2
    .word 33
    .word 4
    .word 5
    .word 6
    .zero 4
    .align 4
    .globl N
              #                          global i32 N_0 
    .type N,@object
N:
    .word -1
