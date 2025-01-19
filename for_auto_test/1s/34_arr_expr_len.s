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
              #                     41   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|i _s19 _i1:4 at 28|sum _s19 _i1:4 at 24|temp_7_ptr_of_*arr_0:8 at 16|temp_8_ele_of_*arr_0 _s23 _i0:4 at 12|temp_9_arithop _s23 _i0:4 at 8|temp_10_arithop _s23 _i0:4 at 4|temp_11_cmp _s21 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     43   alloc i32 [i_19] 
              #                     45   alloc i32 [sum_19] 
              #                     48   alloc ptr->i32 [temp_7_ptr_of_*arr_0_23] 
              #                     50   alloc i32 [temp_8_ele_of_*arr_0_23] 
              #                     53   alloc i32 [temp_9_arithop_23] 
              #                     56   alloc i32 [temp_10_arithop_23] 
              #                     59   alloc i1 [temp_11_cmp_21] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     42   (nop) 
              #                     44   (nop) 
              #                     69   i_19_1 = i32 0_0 
              #                    occupy a0 with i_19_1
    li      a0, 0
              #                    free a0
              #                     70   sum_19_1 = i32 0_0 
              #                    occupy a1 with sum_19_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: i_19_1, tracked: true } |     a1:Freed { symidx: sum_19_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     61   label while.head_22: 
.while.head_22:
              #                     60   temp_11_cmp_21_0 = icmp i32 Slt i_19_1, 6_0 
              #                    occupy a0 with i_19_1
              #                    occupy a2 with 6_0
    li      a2, 6
              #                    occupy a3 with temp_11_cmp_21_0
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     64   br i1 temp_11_cmp_21_0, label while.body_22, label while.exit_22 
              #                    occupy a3 with temp_11_cmp_21_0
              #                    free a3
              #                    occupy a3 with temp_11_cmp_21_0
    bnez    a3, .while.body_22
              #                    free a3
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: i_19_1, tracked: true } |     a1:Freed { symidx: sum_19_1, tracked: true } |     a3:Freed { symidx: temp_11_cmp_21_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     62   label while.body_22: 
.while.body_22:
              #                     49   temp_7_ptr_of_*arr_0_23 = GEP *arr_0:Array:i32:[None] [Some(i_19_1)] 
              #                    occupy a2 with temp_7_ptr_of_*arr_0_23
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_19_1
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *arr_0
              #                       load label arr as ptr to reg
    la      a5, arr
              #                    occupy reg a5 with *arr_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     51   temp_8_ele_of_*arr_0_23_0 = load temp_7_ptr_of_*arr_0_23:ptr->i32 
              #                    occupy a2 with temp_7_ptr_of_*arr_0_23
              #                    occupy a6 with temp_8_ele_of_*arr_0_23_0
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     52   mu arr_0_0:51 
              #                     54   temp_9_arithop_23_0 = Add i32 sum_19_1, temp_8_ele_of_*arr_0_23_0 
              #                    occupy a1 with sum_19_1
              #                    occupy a6 with temp_8_ele_of_*arr_0_23_0
              #                    occupy a7 with temp_9_arithop_23_0
    ADDW    a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                     55   (nop) 
              #                     57   temp_10_arithop_23_0 = Add i32 i_19_1, 1_0 
              #                    occupy a0 with i_19_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_10_arithop_23_0
    ADDW    s2,a0,s1
              #                    free a0
              #                    free s1
              #                    free s2
              #                     58   (nop) 
              #                     71   i_19_1 = i32 temp_10_arithop_23_0 
              #                    occupy s2 with temp_10_arithop_23_0
              #                    occupy a0 with i_19_1
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                     72   sum_19_1 = i32 temp_9_arithop_23_0 
              #                    occupy a7 with temp_9_arithop_23_0
              #                    occupy a1 with sum_19_1
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_22 
              #                    occupy a7 with temp_9_arithop_23_0
              #                    store to temp_9_arithop_23_0 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_9_arithop_23_0
              #                    occupy a3 with temp_11_cmp_21_0
              #                    store to temp_11_cmp_21_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_11_cmp_21_0
              #                    occupy a2 with temp_7_ptr_of_*arr_0_23
              #                    store to temp_7_ptr_of_*arr_0_23 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_7_ptr_of_*arr_0_23
              #                    occupy s2 with temp_10_arithop_23_0
              #                    store to temp_10_arithop_23_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_10_arithop_23_0
              #                    occupy a6 with temp_8_ele_of_*arr_0_23_0
              #                    store to temp_8_ele_of_*arr_0_23_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_8_ele_of_*arr_0_23_0
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: i_19_1, tracked: true } |     a1:Freed { symidx: sum_19_1, tracked: true } |     a3:Freed { symidx: temp_11_cmp_21_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     63   label while.exit_22: 
.while.exit_22:
              #                     73   untrack i_19_1 
              #                    occupy a0 with i_19_1
              #                    release a0 with i_19_1
              #                     47   ret sum_19_1 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a1 with sum_19_1
              #                    store to sum_19_1 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with sum_19_1
              #                    occupy a0 with sum_19_1
              #                    load from sum_19_1 in mem


    lw      a0,24(sp)
    addi    sp,sp,48
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl arr
              #                     39   global Array:i32:[Some(6_0)] arr_0 
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
              #                     17   global i32 N_0 
    .type N,@object
N:
    .word -1
