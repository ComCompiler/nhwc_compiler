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
              #                     17   Define init_0 "a_16," -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|a:8 at 32|i:4 at 28|k:4 at 24|temp_0_arithop:4 at 20|none:4 at 16|temp_1_ptr_of_a_16:8 at 8|temp_2_arithop:4 at 4|temp_3_cmp:1 at 3|temp_4_cmp:1 at 2|none:2 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     20   alloc i32 i_18 
              #                     22   alloc i32 k_22 
              #                     23   alloc i32 temp_0_arithop_22 
              #                     26   alloc ptr->i32 temp_1_ptr_of_a_16_26 
              #                     30   alloc i32 temp_2_arithop_26 
              #                     33   alloc i1 temp_3_cmp_20 
              #                     40   alloc i1 temp_4_cmp_24 
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     16    
              #                     19   (nop) 
              #                     62   i_18 = i32 0_0 
              #                    occupy a1 with i_18
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     35   label while.head_21: 
.while.head_21:
              #                     34   temp_3_cmp_20 = icmp i32 Slt i_18, 3_0 
              #                    occupy a1 with i_18
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with temp_3_cmp_20
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     38   br i1 temp_3_cmp_20, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_3_cmp_20
              #                    free a3
              #                    occupy a3 with temp_3_cmp_20
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_cmp_20, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     36   label while.body_21: 
.while.body_21:
              #                     21   (nop) 
              #                     63   k_22 = i32 0_0 
              #                    occupy a2 with k_22
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |     a2:Freed { symidx: k_22, tracked: true } |     a3:Freed { symidx: temp_3_cmp_20, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     42   label while.head_25: 
.while.head_25:
              #                     41   temp_4_cmp_24 = icmp i32 Slt k_22, 3_0 
              #                    occupy a2 with k_22
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with temp_4_cmp_24
    slt     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                     45   br i1 temp_4_cmp_24, label while.body_25, label while.exit_25 
              #                    occupy a5 with temp_4_cmp_24
              #                    free a5
              #                    occupy a5 with temp_4_cmp_24
    bnez    a5, .while.body_25
              #                    free a5
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |     a2:Freed { symidx: k_22, tracked: true } |     a3:Freed { symidx: temp_3_cmp_20, tracked: true } |     a5:Freed { symidx: temp_4_cmp_24, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     43   label while.body_25: 
.while.body_25:
              #                     27   temp_1_ptr_of_a_16_26 = GEP a_16:ptr->Array:i32:[Some(3_0)] [Some(i_18), Some(k_22)] 
              #                    occupy a4 with temp_1_ptr_of_a_16_26
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy a1 with i_18
    mul     a6,a7,a1
              #                    free a7
              #                    free a1
    add     a4,a4,a6
              #                    free a6
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with k_22
    mv      s1, a2
              #                    free a2
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a0 with a_16
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     28   store k_22:i32 temp_1_ptr_of_a_16_26:ptr->i32 
              #                    occupy a4 with temp_1_ptr_of_a_16_26
              #                    occupy a2 with k_22
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                     29   a_16 = chi a_16:28 
              #                     31   temp_2_arithop_26 = Add i32 k_22, 1_0 
              #                    occupy a2 with k_22
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_2_arithop_26
    ADDW    s3,a2,s2
              #                    free a2
              #                    free s2
              #                    free s3
              #                     32   (nop) 
              #                     64   k_22 = i32 temp_2_arithop_26 
              #                    occupy s3 with temp_2_arithop_26
              #                    occupy a2 with k_22
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_25 
              #                    occupy a4 with temp_1_ptr_of_a_16_26
              #                    store to temp_1_ptr_of_a_16_26 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_1_ptr_of_a_16_26
              #                    occupy a5 with temp_4_cmp_24
              #                    store to temp_4_cmp_24 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_4_cmp_24
              #                    occupy s3 with temp_2_arithop_26
              #                    store to temp_2_arithop_26 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_2_arithop_26
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |     a2:Freed { symidx: k_22, tracked: true } |     a3:Freed { symidx: temp_3_cmp_20, tracked: true } |     a5:Freed { symidx: temp_4_cmp_24, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     44   label while.exit_25: 
.while.exit_25:
              #                     24   temp_0_arithop_22 = Add i32 i_18, 1_0 
              #                    occupy a1 with i_18
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_0_arithop_22
    ADDW    a6,a1,a4
              #                    free a1
              #                    free a4
              #                    free a6
              #                     25   (nop) 
              #                     65   i_18 = i32 temp_0_arithop_22 
              #                    occupy a6 with temp_0_arithop_22
              #                    occupy a1 with i_18
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_21 
              #                    occupy a6 with temp_0_arithop_22
              #                    store to temp_0_arithop_22 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_0_arithop_22
              #                    occupy a5 with temp_4_cmp_24
              #                    store to temp_4_cmp_24 in mem offset legal
    sb      a5,2(sp)
              #                    release a5 with temp_4_cmp_24
              #                    occupy a2 with k_22
              #                    store to k_22 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with k_22
              #                    occupy a3 with temp_3_cmp_20
              #                    store to temp_3_cmp_20 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_3_cmp_20
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: i_18, tracked: true } |     a3:Freed { symidx: temp_3_cmp_20, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     37   label while.exit_21: 
.while.exit_21:
              #                     55   mu a_16:39 
              #                     39   ret 
              #                    load from ra_init_0 in mem
    ld      ra,48(sp)
              #                    load from s0_init_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 56|s0_main:8 at 48|a:36 at 12|none:4 at 8|temp_5_ele_ptr_of_a_31:8 at 0
    addi    sp,sp,-64
              #                    store to ra_main_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     47   alloc Array:i32:[Some(3_0), Some(3_0)] a_31 
              #                     48   alloc ptr->Array:i32:[Some(3_0)] temp_5_ele_ptr_of_a_31_31 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     46    
              #                     49   temp_5_ele_ptr_of_a_31_31 = GEP a_31:Array:i32:[Some(3_0), Some(3_0)] [] 
              #                    occupy a0 with temp_5_ele_ptr_of_a_31_31
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,12
              #                    free a0
              #                     50    Call void init_0(temp_5_ele_ptr_of_a_31_31) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_ele_ptr_of_a_31_31
              #                    store to temp_5_ele_ptr_of_a_31_31 in mem offset legal
    sd      a0,0(sp)
              #                    release a0 with temp_5_ele_ptr_of_a_31_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_ele_ptr_of_a_31_31_0
              #                    load from temp_5_ele_ptr_of_a_31_31 in mem
    ld      a0,0(sp)
              #                    arg load ended


    call    init
              #                     56   mu a_31:50 
              #                     57   a_31 = chi a_31:50 
              #                     52   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,56(sp)
              #                    load from s0_main_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,64
              #                    free a0
    ret
