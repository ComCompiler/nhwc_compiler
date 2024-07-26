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
              #                    mem layout:|ra_main:8 at 152|s0_main:8 at 144|temp_0_array_init_ptr:8 at 136|temp_1_array_init_ptr:8 at 128|temp_2_array_init_ptr:8 at 120|temp_3_array_init_ptr:8 at 112|temp_4_array_init_ptr:8 at 104|temp_5_array_init_ptr:8 at 96|temp_6_array_init_ptr:8 at 88|temp_7_array_init_ptr:8 at 80|a:64 at 16|temp_8_array_ptr:8 at 8|temp_9_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-160
              #                    store to ra_main_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                     18   alloc ptr->i32 temp_0_array_init_ptr_17 
              #                     23   alloc ptr->i32 temp_1_array_init_ptr_17 
              #                     28   alloc ptr->i32 temp_2_array_init_ptr_17 
              #                     33   alloc ptr->i32 temp_3_array_init_ptr_17 
              #                     38   alloc ptr->i32 temp_4_array_init_ptr_17 
              #                     43   alloc ptr->i32 temp_5_array_init_ptr_17 
              #                     48   alloc ptr->i32 temp_6_array_init_ptr_17 
              #                     53   alloc ptr->i32 temp_7_array_init_ptr_17 
              #                     58   alloc Array:i32:[Some(4_0), Some(4_0)] a_17 
              #                     60   alloc ptr->i32 temp_8_array_ptr_17 
              #                     63   alloc i32 temp_9_array_ele_17 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   new_var a_17:Array:i32:[Some(4_0), Some(4_0)] 
              #                     19   new_var temp_0_array_init_ptr_17:ptr->i32 
              #                     20   temp_0_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     21    Call void memset_0(temp_0_array_init_ptr_17, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,136(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     70   mu a_17:21 
              #                     71   a_17 = chi a_17:21 
              #                     22   a_17 = chi a_17:21 
              #                     24   new_var temp_1_array_init_ptr_17:ptr->i32 
              #                     25   temp_1_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 4
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 2
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     26   store 7_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    occupy a3 with 7_0
    li      a3, 7
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     27   a_17 = chi a_17:26 
              #                     29   new_var temp_2_array_init_ptr_17:ptr->i32 
              #                     30   temp_2_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a4 with temp_2_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a4,a4,a5
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,16
              #                    free a4
              #                     31   store 3_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a4 with temp_2_array_init_ptr_17
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                     32   a_17 = chi a_17:31 
              #                     34   new_var temp_3_array_init_ptr_17:ptr->i32 
              #                     35   temp_3_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(1_0)] 
              #                    occupy s1 with temp_3_array_init_ptr_17
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     s1,s1,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,16
              #                    free s1
              #                     36   store 2_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy s1 with temp_3_array_init_ptr_17
              #                    occupy s4 with 2_0
    li      s4, 2
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                     37   a_17 = chi a_17:36 
              #                     39   new_var temp_4_array_init_ptr_17:ptr->i32 
              #                     40   temp_4_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(3_0)] 
              #                    occupy s5 with temp_4_array_init_ptr_17
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 0
    add     s5,s5,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,16
              #                    free s5
              #                     41   store 4_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy s5 with temp_4_array_init_ptr_17
              #                    occupy s7 with 4_0
    li      s7, 4
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                     42   a_17 = chi a_17:41 
              #                     44   new_var temp_5_array_init_ptr_17:ptr->i32 
              #                     45   temp_5_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_5_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,16
              #                    free s7
              #                    occupy s7 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_5_array_init_ptr_17
              #                     46   store 1_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy s7 with temp_5_array_init_ptr_17
              #                    load from temp_5_array_init_ptr_17 in mem
    ld      s7,96(sp)
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_5_array_init_ptr_17
              #                     47   a_17 = chi a_17:46 
              #                     49   new_var temp_6_array_init_ptr_17:ptr->i32 
              #                     50   temp_6_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s7 with temp_6_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 4
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,16
              #                    free s7
              #                    occupy s7 with temp_6_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      s7,88(sp)
              #                    release s7 with temp_6_array_init_ptr_17
              #                     51   store 5_0:i32 temp_6_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy s7 with temp_6_array_init_ptr_17
              #                    load from temp_6_array_init_ptr_17 in mem
    ld      s7,88(sp)
              #                    occupy s8 with 5_0
    li      s8, 5
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_6_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      s7,88(sp)
              #                    release s7 with temp_6_array_init_ptr_17
              #                     52   a_17 = chi a_17:51 
              #                     54   new_var temp_7_array_init_ptr_17:ptr->i32 
              #                     55   temp_7_array_init_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s7 with temp_7_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 4
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,16
              #                    free s7
              #                    occupy s7 with temp_7_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      s7,80(sp)
              #                    release s7 with temp_7_array_init_ptr_17
              #                     56   store 6_0:i32 temp_7_array_init_ptr_17:ptr->Array:i32:[Some(4_0)] 
              #                    occupy s7 with temp_7_array_init_ptr_17
              #                    load from temp_7_array_init_ptr_17 in mem
    ld      s7,80(sp)
              #                    occupy s8 with 6_0
    li      s8, 6
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_7_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      s7,80(sp)
              #                    release s7 with temp_7_array_init_ptr_17
              #                     57   a_17 = chi a_17:56 
              #                     61   new_var temp_8_array_ptr_17:ptr->i32 
              #                     62   temp_8_array_ptr_17 = getelementptr a_17:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_8_array_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,16
              #                    free s7
              #                    occupy s7 with temp_8_array_ptr_17
              #                    store to temp_8_array_ptr_17 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_8_array_ptr_17
              #                     64   new_var temp_9_array_ele_17:i32 
              #                     65   temp_9_array_ele_17 = load temp_8_array_ptr_17:ptr->i32 
              #                    occupy s7 with temp_8_array_ptr_17
              #                    load from temp_8_array_ptr_17 in mem
    ld      s7,8(sp)
              #                    occupy s8 with temp_9_array_ele_17
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_9_array_ele_17
              #                    store to temp_9_array_ele_17 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_9_array_ele_17
              #                    free s7
              #                    occupy s7 with temp_8_array_ptr_17
              #                    store to temp_8_array_ptr_17 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_8_array_ptr_17
              #                     66   mu a_17:65 
              #                     67   ret temp_9_array_ele_17 
              #                    load from ra_main_0 in mem
    ld      ra,152(sp)
              #                    load from s0_main_0 in mem
    ld      s0,144(sp)
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with temp_1_array_init_ptr_17
              #                    occupy a0 with temp_9_array_ele_17
              #                    load from temp_9_array_ele_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,160
              #                    free a0
    ret
