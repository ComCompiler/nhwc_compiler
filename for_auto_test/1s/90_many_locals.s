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
              #                     16   Define foo_0 "" -> foo_ret_0 
    .globl foo
    .type foo,@function
foo:
              #                    mem layout:|ra_foo:8 at 224|s0_foo:8 at 216|temp_0_array_init_ptr:8 at 208|temp_1_array_init_ptr:8 at 200|temp_2_array_init_ptr:8 at 192|temp_3_array_init_ptr:8 at 184|temp_4_array_init_ptr:8 at 176|temp_5_array_init_ptr:8 at 168|temp_6_array_init_ptr:8 at 160|temp_7_array_init_ptr:8 at 152|temp_8_array_init_ptr:8 at 144|temp_9_array_init_ptr:8 at 136|temp_10_array_init_ptr:8 at 128|temp_11_array_init_ptr:8 at 120|temp_12_array_init_ptr:8 at 112|temp_13_array_init_ptr:8 at 104|temp_14_array_init_ptr:8 at 96|temp_15_array_init_ptr:8 at 88|temp_16_array_init_ptr:8 at 80|arr:64 at 16|temp_32_ptr_of_arr_17:8 at 8|temp_33_ele_of_arr_17 _s17 _i0:4 at 4|temp_34_arithop _s17 _i0:4 at 0
    addi    sp,sp,-232
              #                    store to ra_foo_0 in mem offset legal
    sd      ra,224(sp)
              #                    store to s0_foo_0 in mem offset legal
    sd      s0,216(sp)
    addi    s0,sp,232
              #                     19   alloc ptr->i32 [temp_0_array_init_ptr_17] 
              #                     22   alloc ptr->i32 [temp_1_array_init_ptr_17] 
              #                     26   alloc ptr->i32 [temp_2_array_init_ptr_17] 
              #                     30   alloc ptr->i32 [temp_3_array_init_ptr_17] 
              #                     34   alloc ptr->i32 [temp_4_array_init_ptr_17] 
              #                     38   alloc ptr->i32 [temp_5_array_init_ptr_17] 
              #                     42   alloc ptr->i32 [temp_6_array_init_ptr_17] 
              #                     46   alloc ptr->i32 [temp_7_array_init_ptr_17] 
              #                     50   alloc ptr->i32 [temp_8_array_init_ptr_17] 
              #                     54   alloc ptr->i32 [temp_9_array_init_ptr_17] 
              #                     58   alloc ptr->i32 [temp_10_array_init_ptr_17] 
              #                     62   alloc ptr->i32 [temp_11_array_init_ptr_17] 
              #                     66   alloc ptr->i32 [temp_12_array_init_ptr_17] 
              #                     70   alloc ptr->i32 [temp_13_array_init_ptr_17] 
              #                     74   alloc ptr->i32 [temp_14_array_init_ptr_17] 
              #                     78   alloc ptr->i32 [temp_15_array_init_ptr_17] 
              #                     82   alloc ptr->i32 [temp_16_array_init_ptr_17] 
              #                     86   alloc Array:i32:[Some(16_0)] [arr_17] 
              #                     88   alloc i32 [a_17] 
              #                     90   alloc i32 [b_17] 
              #                     92   alloc i32 [c_17] 
              #                     94   alloc i32 [d_17] 
              #                     96   alloc i32 [e_17] 
              #                     98   alloc i32 [f_17] 
              #                     100  alloc i32 [g_17] 
              #                     102  alloc i32 [h_17] 
              #                     104  alloc i32 [i_17] 
              #                     106  alloc i32 [j_17] 
              #                     108  alloc i32 [k_17] 
              #                     110  alloc i32 [l_17] 
              #                     112  alloc i32 [m_17] 
              #                     114  alloc i32 [n_17] 
              #                     116  alloc i32 [o_17] 
              #                     118  alloc i32 [p_17] 
              #                     119  alloc i32 [temp_17_arithop_17] 
              #                     121  alloc i32 [temp_18_arithop_17] 
              #                     123  alloc i32 [temp_19_arithop_17] 
              #                     125  alloc i32 [temp_20_arithop_17] 
              #                     127  alloc i32 [temp_21_arithop_17] 
              #                     129  alloc i32 [temp_22_arithop_17] 
              #                     131  alloc i32 [temp_23_arithop_17] 
              #                     134  alloc i32 [sum1_17] 
              #                     135  alloc i32 [temp_24_arithop_17] 
              #                     137  alloc i32 [temp_25_arithop_17] 
              #                     139  alloc i32 [temp_26_arithop_17] 
              #                     141  alloc i32 [temp_27_arithop_17] 
              #                     143  alloc i32 [temp_28_arithop_17] 
              #                     145  alloc i32 [temp_29_arithop_17] 
              #                     147  alloc i32 [temp_30_arithop_17] 
              #                     150  alloc i32 [sum2_17] 
              #                     152  alloc i32 [temp_31_arithop_17] 
              #                     154  alloc ptr->i32 [temp_32_ptr_of_arr_17_17] 
              #                     156  alloc i32 [temp_33_ele_of_arr_17_17] 
              #                     159  alloc i32 [temp_34_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     18    
              #                     20   temp_0_array_init_ptr_17 = GEP arr_17_0:Array:i32:[Some(16_0)] [] 
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
    sd      a0,208(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     306  untrack temp_0_array_init_ptr_17 
              #                     290  mu arr_17_0:21 
              #                     291  arr_17_1 = chi arr_17_0:21 
              #                     23   temp_1_array_init_ptr_17 = GEP arr_17_1:Array:i32:[Some(16_0)] [Some(5_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 5
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     24   store 1_0:i32 temp_1_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     297  untrack temp_1_array_init_ptr_17 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    release a0 with temp_1_array_init_ptr_17
              #                     25   arr_17_2 = chi arr_17_1:24 
              #                     27   temp_2_array_init_ptr_17 = GEP arr_17_2:Array:i32:[Some(16_0)] [Some(4_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_17
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     28   store 0_0:i32 temp_2_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_2_array_init_ptr_17
              #                    occupy a4 with 0_0
    li      a4, 0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     295  untrack temp_2_array_init_ptr_17 
              #                    occupy a0 with temp_2_array_init_ptr_17
              #                    release a0 with temp_2_array_init_ptr_17
              #                     29   arr_17_3 = chi arr_17_2:28 
              #                     31   temp_3_array_init_ptr_17 = GEP arr_17_3:Array:i32:[Some(16_0)] [Some(2_0)] 
              #                    occupy a0 with temp_3_array_init_ptr_17
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 2
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     32   store 2_0:i32 temp_3_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_3_array_init_ptr_17
              #                    occupy a6 with 2_0
    li      a6, 2
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     303  untrack temp_3_array_init_ptr_17 
              #                    occupy a0 with temp_3_array_init_ptr_17
              #                    release a0 with temp_3_array_init_ptr_17
              #                     33   arr_17_4 = chi arr_17_3:32 
              #                     35   temp_4_array_init_ptr_17 = GEP arr_17_4:Array:i32:[Some(16_0)] [Some(7_0)] 
              #                    occupy a0 with temp_4_array_init_ptr_17
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 7
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     36   store 3_0:i32 temp_4_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_4_array_init_ptr_17
              #                    occupy s1 with 3_0
    li      s1, 3
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     294  untrack temp_4_array_init_ptr_17 
              #                    occupy a0 with temp_4_array_init_ptr_17
              #                    release a0 with temp_4_array_init_ptr_17
              #                     37   arr_17_5 = chi arr_17_4:36 
              #                     39   temp_5_array_init_ptr_17 = GEP arr_17_5:Array:i32:[Some(16_0)] [Some(11_0)] 
              #                    occupy a0 with temp_5_array_init_ptr_17
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 11
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     40   store 3_0:i32 temp_5_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_5_array_init_ptr_17
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     307  untrack temp_5_array_init_ptr_17 
              #                    occupy a0 with temp_5_array_init_ptr_17
              #                    release a0 with temp_5_array_init_ptr_17
              #                     41   arr_17_6 = chi arr_17_5:40 
              #                     43   temp_6_array_init_ptr_17 = GEP arr_17_6:Array:i32:[Some(16_0)] [Some(13_0)] 
              #                    occupy a0 with temp_6_array_init_ptr_17
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 13
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     44   store 1_0:i32 temp_6_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_6_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     308  untrack temp_6_array_init_ptr_17 
              #                    occupy a0 with temp_6_array_init_ptr_17
              #                    release a0 with temp_6_array_init_ptr_17
              #                     45   arr_17_7 = chi arr_17_6:44 
              #                     47   temp_7_array_init_ptr_17 = GEP arr_17_7:Array:i32:[Some(16_0)] [Some(14_0)] 
              #                    occupy a0 with temp_7_array_init_ptr_17
    li      a0, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 14
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     48   store 2_0:i32 temp_7_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_7_array_init_ptr_17
              #                    found literal reg Some(a6) already exist with 2_0
              #                    occupy a6 with 2_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     309  untrack temp_7_array_init_ptr_17 
              #                    occupy a0 with temp_7_array_init_ptr_17
              #                    release a0 with temp_7_array_init_ptr_17
              #                     49   arr_17_8 = chi arr_17_7:48 
              #                     51   temp_8_array_init_ptr_17 = GEP arr_17_8:Array:i32:[Some(16_0)] [Some(15_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_17
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 15
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     52   store 3_0:i32 temp_8_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_8_array_init_ptr_17
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     305  untrack temp_8_array_init_ptr_17 
              #                    occupy a0 with temp_8_array_init_ptr_17
              #                    release a0 with temp_8_array_init_ptr_17
              #                     53   arr_17_9 = chi arr_17_8:52 
              #                     55   temp_9_array_init_ptr_17 = GEP arr_17_9:Array:i32:[Some(16_0)] [Some(9_0)] 
              #                    occupy a0 with temp_9_array_init_ptr_17
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 9
    add     a0,a0,s6
              #                    free s6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     56   store 1_0:i32 temp_9_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_9_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     302  untrack temp_9_array_init_ptr_17 
              #                    occupy a0 with temp_9_array_init_ptr_17
              #                    release a0 with temp_9_array_init_ptr_17
              #                     57   arr_17_10 = chi arr_17_9:56 
              #                     59   temp_10_array_init_ptr_17 = GEP arr_17_10:Array:i32:[Some(16_0)] [Some(1_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     60   store 1_0:i32 temp_10_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_10_array_init_ptr_17
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     304  untrack temp_10_array_init_ptr_17 
              #                    occupy a0 with temp_10_array_init_ptr_17
              #                    release a0 with temp_10_array_init_ptr_17
              #                     61   arr_17_11 = chi arr_17_10:60 
              #                     63   temp_11_array_init_ptr_17 = GEP arr_17_11:Array:i32:[Some(16_0)] [Some(0_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     64   store 0_0:i32 temp_11_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     300  untrack temp_11_array_init_ptr_17 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    release a0 with temp_11_array_init_ptr_17
              #                     65   arr_17_12 = chi arr_17_11:64 
              #                     67   temp_12_array_init_ptr_17 = GEP arr_17_12:Array:i32:[Some(16_0)] [Some(6_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     68   store 2_0:i32 temp_12_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    found literal reg Some(a6) already exist with 2_0
              #                    occupy a6 with 2_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     293  untrack temp_12_array_init_ptr_17 
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    release a0 with temp_12_array_init_ptr_17
              #                     69   arr_17_13 = chi arr_17_12:68 
              #                     71   temp_13_array_init_ptr_17 = GEP arr_17_13:Array:i32:[Some(16_0)] [Some(3_0)] 
              #                    occupy a0 with temp_13_array_init_ptr_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,16
              #                    free a0
              #                     72   store 3_0:i32 temp_13_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_13_array_init_ptr_17
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     73   arr_17_14 = chi arr_17_13:72 
              #                     75   temp_14_array_init_ptr_17 = GEP arr_17_14:Array:i32:[Some(16_0)] [Some(12_0)] 
              #                    occupy s7 with temp_14_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 12
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,16
              #                    free s7
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    store to temp_14_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_14_array_init_ptr_17
              #                     76   store 0_0:i32 temp_14_array_init_ptr_17:ptr->i32 
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    load from temp_14_array_init_ptr_17 in mem
    ld      s7,96(sp)
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s7)
              #                    free a4
              #                    free s7
              #                     298  untrack temp_14_array_init_ptr_17 
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    release s7 with temp_14_array_init_ptr_17
              #                     77   arr_17_15 = chi arr_17_14:76 
              #                     79   temp_15_array_init_ptr_17 = GEP arr_17_15:Array:i32:[Some(16_0)] [Some(8_0)] 
              #                    occupy a4 with temp_15_array_init_ptr_17
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,16
              #                    free a4
              #                     80   store 0_0:i32 temp_15_array_init_ptr_17:ptr->i32 
              #                    occupy a4 with temp_15_array_init_ptr_17
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                     301  untrack temp_15_array_init_ptr_17 
              #                    occupy a4 with temp_15_array_init_ptr_17
              #                    release a4 with temp_15_array_init_ptr_17
              #                     81   arr_17_16 = chi arr_17_15:80 
              #                     83   temp_16_array_init_ptr_17 = GEP arr_17_16:Array:i32:[Some(16_0)] [Some(10_0)] 
              #                    occupy a4 with temp_16_array_init_ptr_17
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 10
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,16
              #                    free a4
              #                     84   store 2_0:i32 temp_16_array_init_ptr_17:ptr->i32 
              #                    occupy a4 with temp_16_array_init_ptr_17
              #                    found literal reg Some(a6) already exist with 2_0
              #                    occupy a6 with 2_0
    sw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     299  untrack temp_16_array_init_ptr_17 
              #                    occupy a4 with temp_16_array_init_ptr_17
              #                    release a4 with temp_16_array_init_ptr_17
              #                     85   arr_17_17 = chi arr_17_16:84 
              #                     87   (nop) 
              #                     89   (nop) 
              #                     91   (nop) 
              #                     93   (nop) 
              #                     95   (nop) 
              #                     97   (nop) 
              #                     99   (nop) 
              #                     101  (nop) 
              #                     103  (nop) 
              #                     105  (nop) 
              #                     107  (nop) 
              #                     109  (nop) 
              #                     111  (nop) 
              #                     113  (nop) 
              #                     115  (nop) 
              #                     117  (nop) 
              #                     120  (nop) 
              #                     122  (nop) 
              #                     124  (nop) 
              #                     126  (nop) 
              #                     128  (nop) 
              #                     130  (nop) 
              #                     132  (nop) 
              #                     133  (nop) 
              #                     136  (nop) 
              #                     138  (nop) 
              #                     140  (nop) 
              #                     142  (nop) 
              #                     144  (nop) 
              #                     146  (nop) 
              #                     148  (nop) 
              #                     149  (nop) 
              #                     153  (nop) 
              #                     155  (nop) 
              #                     157  temp_33_ele_of_arr_17_17_0 = load temp_13_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_13_array_init_ptr_17
              #                    occupy a4 with temp_33_ele_of_arr_17_17_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     296  untrack temp_13_array_init_ptr_17 
              #                    occupy a0 with temp_13_array_init_ptr_17
              #                    release a0 with temp_13_array_init_ptr_17
              #                     158  mu arr_17_17:157 
              #                     160  temp_34_arithop_17_0 = Add i32 71_0, temp_33_ele_of_arr_17_17_0 
              #                    occupy a0 with 71_0
    li      a0, 71
              #                    occupy a4 with temp_33_ele_of_arr_17_17_0
              #                    occupy s7 with temp_34_arithop_17_0
    ADDW    s7,a0,a4
              #                    free a0
              #                    free a4
              #                    free s7
              #                     292  untrack temp_33_ele_of_arr_17_17_0 
              #                    occupy a4 with temp_33_ele_of_arr_17_17_0
              #                    release a4 with temp_33_ele_of_arr_17_17_0
              #                     161  ret temp_34_arithop_17_0 
              #                    load from ra_foo_0 in mem
    ld      ra,224(sp)
              #                    load from s0_foo_0 in mem
    ld      s0,216(sp)
              #                    occupy s7 with temp_34_arithop_17_0
              #                    store to temp_34_arithop_17_0 in mem offset legal
    sw      s7,0(sp)
              #                    release s7 with temp_34_arithop_17_0
              #                    occupy a0 with temp_34_arithop_17_0
              #                    load from temp_34_arithop_17_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,232
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_49_ret_of_foo _s24 _i0:4 at 20|temp_50_arithop _s24 _i0:4 at 16|temp_51_ret_of_foo _s24 _i0:4 at 12|temp_52_arithop _s24 _i0:4 at 8|temp_60_arithop _s24 _i0:4 at 4|temp_61_arithop _s24 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     165  alloc i32 [a_24] 
              #                     167  alloc i32 [b_24] 
              #                     169  alloc i32 [c_24] 
              #                     171  alloc i32 [d_24] 
              #                     173  alloc i32 [e_24] 
              #                     175  alloc i32 [f_24] 
              #                     177  alloc i32 [g_24] 
              #                     179  alloc i32 [h_24] 
              #                     181  alloc i32 [i_24] 
              #                     183  alloc i32 [j_24] 
              #                     185  alloc i32 [k_24] 
              #                     187  alloc i32 [l_24] 
              #                     189  alloc i32 [m_24] 
              #                     191  alloc i32 [n_24] 
              #                     193  alloc i32 [o_24] 
              #                     195  alloc i32 [p_24] 
              #                     196  alloc i32 [temp_35_arithop_24] 
              #                     198  alloc i32 [temp_36_arithop_24] 
              #                     200  alloc i32 [temp_37_arithop_24] 
              #                     202  alloc i32 [temp_38_arithop_24] 
              #                     204  alloc i32 [temp_39_arithop_24] 
              #                     206  alloc i32 [temp_40_arithop_24] 
              #                     208  alloc i32 [temp_41_arithop_24] 
              #                     211  alloc i32 [sum1_24] 
              #                     212  alloc i32 [temp_42_arithop_24] 
              #                     214  alloc i32 [temp_43_arithop_24] 
              #                     216  alloc i32 [temp_44_arithop_24] 
              #                     218  alloc i32 [temp_45_arithop_24] 
              #                     220  alloc i32 [temp_46_arithop_24] 
              #                     222  alloc i32 [temp_47_arithop_24] 
              #                     224  alloc i32 [temp_48_arithop_24] 
              #                     227  alloc i32 [sum2_24] 
              #                     228  alloc i32 [temp_49_ret_of_foo_24] 
              #                     230  alloc i32 [temp_50_arithop_24] 
              #                     234  alloc i32 [q_24] 
              #                     236  alloc i32 [r_24] 
              #                     238  alloc i32 [s_24] 
              #                     240  alloc i32 [t_24] 
              #                     242  alloc i32 [u_24] 
              #                     244  alloc i32 [v_24] 
              #                     246  alloc i32 [w_24] 
              #                     248  alloc i32 [x_24] 
              #                     249  alloc i32 [temp_51_ret_of_foo_24] 
              #                     251  alloc i32 [temp_52_arithop_24] 
              #                     262  alloc i32 [temp_53_arithop_24] 
              #                     264  alloc i32 [temp_54_arithop_24] 
              #                     266  alloc i32 [temp_55_arithop_24] 
              #                     268  alloc i32 [temp_56_arithop_24] 
              #                     270  alloc i32 [temp_57_arithop_24] 
              #                     272  alloc i32 [temp_58_arithop_24] 
              #                     274  alloc i32 [temp_59_arithop_24] 
              #                     277  alloc i32 [sum3_24] 
              #                     278  alloc i32 [temp_60_arithop_24] 
              #                     280  alloc i32 [temp_61_arithop_24] 
              #                     283  alloc i32 [sum_24] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     164  (nop) 
              #                     166  (nop) 
              #                     168  (nop) 
              #                     170  (nop) 
              #                     172  (nop) 
              #                     174  (nop) 
              #                     176  (nop) 
              #                     178  (nop) 
              #                     180  (nop) 
              #                     182  (nop) 
              #                     184  (nop) 
              #                     186  (nop) 
              #                     188  (nop) 
              #                     190  (nop) 
              #                     192  (nop) 
              #                     194  (nop) 
              #                     197  (nop) 
              #                     199  (nop) 
              #                     201  (nop) 
              #                     203  (nop) 
              #                     205  (nop) 
              #                     207  (nop) 
              #                     209  (nop) 
              #                     210  (nop) 
              #                     213  (nop) 
              #                     215  (nop) 
              #                     217  (nop) 
              #                     219  (nop) 
              #                     221  (nop) 
              #                     223  (nop) 
              #                     225  (nop) 
              #                     226  (nop) 
              #                     229  temp_49_ret_of_foo_24_0 =  Call i32 foo_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    foo
              #                     231  temp_50_arithop_24_0 = Add i32 30_0, temp_49_ret_of_foo_24_0 
              #                    occupy a1 with 30_0
    li      a1, 30
              #                    occupy a0 with temp_49_ret_of_foo_24_0
              #                    occupy a2 with temp_50_arithop_24_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     310  untrack temp_49_ret_of_foo_24_0 
              #                    occupy a0 with temp_49_ret_of_foo_24_0
              #                    release a0 with temp_49_ret_of_foo_24_0
              #                     232  (nop) 
              #                     233  (nop) 
              #                     235  (nop) 
              #                     237  (nop) 
              #                     239  (nop) 
              #                     241  (nop) 
              #                     243  (nop) 
              #                     245  (nop) 
              #                     247  (nop) 
              #                     250  temp_51_ret_of_foo_24_0 =  Call i32 foo_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_50_arithop_24_0
              #                    store to temp_50_arithop_24_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_50_arithop_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    foo
              #                     252  temp_52_arithop_24_0 = Add i32 41_0, temp_51_ret_of_foo_24_0 
              #                    occupy a1 with 41_0
    li      a1, 41
              #                    occupy a0 with temp_51_ret_of_foo_24_0
              #                    occupy a2 with temp_52_arithop_24_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     311  untrack temp_51_ret_of_foo_24_0 
              #                    occupy a0 with temp_51_ret_of_foo_24_0
              #                    release a0 with temp_51_ret_of_foo_24_0
              #                     253  (nop) 
              #                     254  (nop) 
              #                     255  (nop) 
              #                     256  (nop) 
              #                     257  (nop) 
              #                     258  (nop) 
              #                     259  (nop) 
              #                     260  (nop) 
              #                     261  (nop) 
              #                     263  (nop) 
              #                     265  (nop) 
              #                     267  (nop) 
              #                     269  (nop) 
              #                     271  (nop) 
              #                     273  (nop) 
              #                     275  (nop) 
              #                     276  (nop) 
              #                     279  temp_60_arithop_24_0 = Add i32 temp_50_arithop_24_0, temp_52_arithop_24_0 
              #                    occupy a0 with temp_50_arithop_24_0
              #                    load from temp_50_arithop_24_0 in mem


    lw      a0,16(sp)
              #                    occupy a2 with temp_52_arithop_24_0
              #                    occupy a3 with temp_60_arithop_24_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     314  untrack temp_52_arithop_24_0 
              #                    occupy a2 with temp_52_arithop_24_0
              #                    release a2 with temp_52_arithop_24_0
              #                     312  untrack temp_50_arithop_24_0 
              #                    occupy a0 with temp_50_arithop_24_0
              #                    release a0 with temp_50_arithop_24_0
              #                     281  temp_61_arithop_24_0 = Add i32 temp_60_arithop_24_0, 35_0 
              #                    occupy a3 with temp_60_arithop_24_0
              #                    occupy a0 with 35_0
    li      a0, 35
              #                    occupy a2 with temp_61_arithop_24_0
    ADDW    a2,a3,a0
              #                    free a3
              #                    free a0
              #                    free a2
              #                     315  untrack temp_60_arithop_24_0 
              #                    occupy a3 with temp_60_arithop_24_0
              #                    release a3 with temp_60_arithop_24_0
              #                     282  (nop) 
              #                     284   Call void putint_0(temp_61_arithop_24_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_61_arithop_24_0
              #                    store to temp_61_arithop_24_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_61_arithop_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_61_arithop_24_0_0
              #                    load from temp_61_arithop_24_0 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                     313  untrack temp_61_arithop_24_0 
              #                     285   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     287  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
