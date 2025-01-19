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
              #                    mem layout:|ra_main:8 at 544|s0_main:8 at 536|temp_0_array_init_ptr:8 at 528|a:32 at 496|temp_1_array_init_ptr:8 at 488|temp_2_array_init_ptr:8 at 480|temp_3_array_init_ptr:8 at 472|temp_4_array_init_ptr:8 at 464|temp_5_array_init_ptr:8 at 456|temp_6_array_init_ptr:8 at 448|temp_7_array_init_ptr:8 at 440|temp_8_array_init_ptr:8 at 432|temp_9_array_init_ptr:8 at 424|b:32 at 392|temp_10_array_init_ptr:8 at 384|temp_11_array_init_ptr:8 at 376|temp_12_array_init_ptr:8 at 368|temp_13_array_init_ptr:8 at 360|temp_14_array_init_ptr:8 at 352|temp_15_array_init_ptr:8 at 344|temp_16_array_init_ptr:8 at 336|temp_17_array_init_ptr:8 at 328|temp_18_array_init_ptr:8 at 320|c:32 at 288|temp_19_array_init_ptr:8 at 280|temp_20_array_init_ptr:8 at 272|temp_21_array_init_ptr:8 at 264|temp_22_array_init_ptr:8 at 256|temp_23_array_init_ptr:8 at 248|temp_24_array_init_ptr:8 at 240|temp_25_array_init_ptr:8 at 232|d:32 at 200|temp_26_ptr_of_d_17:8 at 192|temp_27_ele_of_d_17 _s17 _i0:4 at 188|none:4 at 184|temp_28_ptr_of_c_17:8 at 176|temp_29_ele_of_c_17 _s17 _i0:4 at 172|none:4 at 168|temp_30_array_init_ptr:8 at 160|temp_31_array_init_ptr:8 at 152|temp_32_array_init_ptr:8 at 144|temp_33_array_init_ptr:8 at 136|temp_34_array_init_ptr:8 at 128|temp_35_array_init_ptr:8 at 120|temp_36_array_init_ptr:8 at 112|temp_37_array_init_ptr:8 at 104|temp_38_array_init_ptr:8 at 96|e:32 at 64|temp_39_ptr_of_e_17:8 at 56|temp_40_ele_of_e_17 _s17 _i0:4 at 52|none:4 at 48|temp_41_ptr_of_e_17:8 at 40|temp_42_ele_of_e_17 _s17 _i0:4 at 36|temp_43_arithop _s17 _i0:4 at 32|temp_44_ptr_of_e_17:8 at 24|temp_45_ele_of_e_17 _s17 _i0:4 at 20|temp_46_arithop _s17 _i0:4 at 16|temp_47_ptr_of_a_17:8 at 8|temp_48_ele_of_a_17 _s17 _i0:4 at 4|temp_49_arithop _s17 _i0:4 at 0
    addi    sp,sp,-552
              #                    store to ra_main_0 in mem offset legal
    sd      ra,544(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,536(sp)
    addi    s0,sp,552
              #                     18   alloc ptr->i32 [temp_0_array_init_ptr_17] 
              #                     21   alloc Array:i32:[Some(4_0), Some(2_0)] [a_17] 
              #                     23   alloc ptr->i32 [temp_1_array_init_ptr_17] 
              #                     26   alloc ptr->i32 [temp_2_array_init_ptr_17] 
              #                     30   alloc ptr->i32 [temp_3_array_init_ptr_17] 
              #                     34   alloc ptr->i32 [temp_4_array_init_ptr_17] 
              #                     38   alloc ptr->i32 [temp_5_array_init_ptr_17] 
              #                     42   alloc ptr->i32 [temp_6_array_init_ptr_17] 
              #                     46   alloc ptr->i32 [temp_7_array_init_ptr_17] 
              #                     50   alloc ptr->i32 [temp_8_array_init_ptr_17] 
              #                     54   alloc ptr->i32 [temp_9_array_init_ptr_17] 
              #                     58   alloc Array:i32:[Some(4_0), Some(2_0)] [b_17] 
              #                     60   alloc ptr->i32 [temp_10_array_init_ptr_17] 
              #                     63   alloc ptr->i32 [temp_11_array_init_ptr_17] 
              #                     67   alloc ptr->i32 [temp_12_array_init_ptr_17] 
              #                     71   alloc ptr->i32 [temp_13_array_init_ptr_17] 
              #                     75   alloc ptr->i32 [temp_14_array_init_ptr_17] 
              #                     79   alloc ptr->i32 [temp_15_array_init_ptr_17] 
              #                     83   alloc ptr->i32 [temp_16_array_init_ptr_17] 
              #                     87   alloc ptr->i32 [temp_17_array_init_ptr_17] 
              #                     91   alloc ptr->i32 [temp_18_array_init_ptr_17] 
              #                     95   alloc Array:i32:[Some(4_0), Some(2_0)] [c_17] 
              #                     97   alloc ptr->i32 [temp_19_array_init_ptr_17] 
              #                     100  alloc ptr->i32 [temp_20_array_init_ptr_17] 
              #                     104  alloc ptr->i32 [temp_21_array_init_ptr_17] 
              #                     108  alloc ptr->i32 [temp_22_array_init_ptr_17] 
              #                     112  alloc ptr->i32 [temp_23_array_init_ptr_17] 
              #                     116  alloc ptr->i32 [temp_24_array_init_ptr_17] 
              #                     120  alloc ptr->i32 [temp_25_array_init_ptr_17] 
              #                     124  alloc Array:i32:[Some(4_0), Some(2_0)] [d_17] 
              #                     126  alloc ptr->i32 [temp_26_ptr_of_d_17_17] 
              #                     128  alloc i32 [temp_27_ele_of_d_17_17] 
              #                     131  alloc ptr->i32 [temp_28_ptr_of_c_17_17] 
              #                     133  alloc i32 [temp_29_ele_of_c_17_17] 
              #                     136  alloc ptr->i32 [temp_30_array_init_ptr_17] 
              #                     139  alloc ptr->i32 [temp_31_array_init_ptr_17] 
              #                     143  alloc ptr->i32 [temp_32_array_init_ptr_17] 
              #                     147  alloc ptr->i32 [temp_33_array_init_ptr_17] 
              #                     151  alloc ptr->i32 [temp_34_array_init_ptr_17] 
              #                     155  alloc ptr->i32 [temp_35_array_init_ptr_17] 
              #                     159  alloc ptr->i32 [temp_36_array_init_ptr_17] 
              #                     163  alloc ptr->i32 [temp_37_array_init_ptr_17] 
              #                     167  alloc ptr->i32 [temp_38_array_init_ptr_17] 
              #                     171  alloc Array:i32:[Some(4_0), Some(2_0)] [e_17] 
              #                     173  alloc ptr->i32 [temp_39_ptr_of_e_17_17] 
              #                     175  alloc i32 [temp_40_ele_of_e_17_17] 
              #                     178  alloc ptr->i32 [temp_41_ptr_of_e_17_17] 
              #                     180  alloc i32 [temp_42_ele_of_e_17_17] 
              #                     183  alloc i32 [temp_43_arithop_17] 
              #                     185  alloc ptr->i32 [temp_44_ptr_of_e_17_17] 
              #                     187  alloc i32 [temp_45_ele_of_e_17_17] 
              #                     190  alloc i32 [temp_46_arithop_17] 
              #                     192  alloc ptr->i32 [temp_47_ptr_of_a_17_17] 
              #                     194  alloc i32 [temp_48_ele_of_a_17_17] 
              #                     197  alloc i32 [temp_49_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17    
              #                     19   temp_0_array_init_ptr_17 = GEP a_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,496
              #                    free a0
              #                     20    Call void memset_0(temp_0_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,528(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,528(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     225  untrack temp_0_array_init_ptr_17 
              #                     202  mu a_17_0:20 
              #                     203  a_17_1 = chi a_17_0:20 
              #                     22    
              #                     24   temp_1_array_init_ptr_17 = GEP b_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,392
              #                    free a0
              #                     25    Call void memset_0(temp_1_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    store to temp_1_array_init_ptr_17 in mem offset legal
    sd      a0,488(sp)
              #                    release a0 with temp_1_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_array_init_ptr_17_0
              #                    load from temp_1_array_init_ptr_17 in mem
    ld      a0,488(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     247  untrack temp_1_array_init_ptr_17 
              #                     204  mu b_17_0:25 
              #                     205  b_17_1 = chi b_17_0:25 
              #                     27   (nop) 
              #                     28   (nop) 
              #                     29   b_17_2 = chi b_17_1:28 
              #                     31   (nop) 
              #                     32   (nop) 
              #                     33   b_17_3 = chi b_17_2:32 
              #                     35   (nop) 
              #                     36   (nop) 
              #                     37   b_17_4 = chi b_17_3:36 
              #                     39   (nop) 
              #                     40   (nop) 
              #                     41   b_17_5 = chi b_17_4:40 
              #                     43   (nop) 
              #                     44   (nop) 
              #                     45   b_17_6 = chi b_17_5:44 
              #                     47   (nop) 
              #                     48   (nop) 
              #                     49   b_17_7 = chi b_17_6:48 
              #                     51   (nop) 
              #                     52   (nop) 
              #                     53   b_17_8 = chi b_17_7:52 
              #                     55   (nop) 
              #                     56   (nop) 
              #                     57   b_17_9 = chi b_17_8:56 
              #                     59    
              #                     61   temp_10_array_init_ptr_17 = GEP c_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_10_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     62    Call void memset_0(temp_10_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_10_array_init_ptr_17
              #                    store to temp_10_array_init_ptr_17 in mem offset legal
    sd      a0,384(sp)
              #                    release a0 with temp_10_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_10_array_init_ptr_17_0
              #                    load from temp_10_array_init_ptr_17 in mem
    ld      a0,384(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     234  untrack temp_10_array_init_ptr_17 
              #                     206  mu c_17_0:62 
              #                     207  c_17_1 = chi c_17_0:62 
              #                     64   temp_11_array_init_ptr_17 = GEP c_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     65   store 2_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    occupy a3 with 2_0
    li      a3, 2
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     245  untrack temp_11_array_init_ptr_17 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    release a0 with temp_11_array_init_ptr_17
              #                     66   c_17_2 = chi c_17_1:65 
              #                     68   temp_12_array_init_ptr_17 = GEP c_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_17
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     69   store 3_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     238  untrack temp_12_array_init_ptr_17 
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    release a0 with temp_12_array_init_ptr_17
              #                     70   c_17_3 = chi c_17_2:69 
              #                     72   temp_13_array_init_ptr_17 = GEP c_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a0 with temp_13_array_init_ptr_17
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 6
    add     a0,a0,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 1
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     73   store 8_0:i32 temp_13_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_13_array_init_ptr_17
              #                    occupy s2 with 8_0
    li      s2, 8
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     243  untrack temp_13_array_init_ptr_17 
              #                    occupy a0 with temp_13_array_init_ptr_17
              #                    release a0 with temp_13_array_init_ptr_17
              #                     74   c_17_4 = chi c_17_3:73 
              #                     76   temp_14_array_init_ptr_17 = GEP c_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_14_array_init_ptr_17
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 6
    add     a0,a0,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     77   store 7_0:i32 temp_14_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_14_array_init_ptr_17
              #                    occupy s5 with 7_0
    li      s5, 7
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     229  untrack temp_14_array_init_ptr_17 
              #                    occupy a0 with temp_14_array_init_ptr_17
              #                    release a0 with temp_14_array_init_ptr_17
              #                     78   c_17_5 = chi c_17_4:77 
              #                     80   temp_15_array_init_ptr_17 = GEP c_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_15_array_init_ptr_17
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 4
    add     a0,a0,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,288
              #                    free a0
              #                     81   store 6_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_15_array_init_ptr_17
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     82   c_17_6 = chi c_17_5:81 
              #                     84   temp_16_array_init_ptr_17 = GEP c_17_6:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy s7 with temp_16_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,288
              #                    free s7
              #                    occupy s7 with temp_16_array_init_ptr_17
              #                    store to temp_16_array_init_ptr_17 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_16_array_init_ptr_17
              #                     85   store 4_0:i32 temp_16_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_16_array_init_ptr_17
              #                    load from temp_16_array_init_ptr_17 in mem
    ld      s7,336(sp)
              #                    occupy s8 with 4_0
    li      s8, 4
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_16_array_init_ptr_17
              #                    store to temp_16_array_init_ptr_17 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_16_array_init_ptr_17
              #                     212  untrack temp_16_array_init_ptr_17 
              #                     86   c_17_7 = chi c_17_6:85 
              #                     88   temp_17_array_init_ptr_17 = GEP c_17_7:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s7 with temp_17_array_init_ptr_17
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
    addi    s7,s7,288
              #                    free s7
              #                    occupy s7 with temp_17_array_init_ptr_17
              #                    store to temp_17_array_init_ptr_17 in mem offset legal
    sd      s7,328(sp)
              #                    release s7 with temp_17_array_init_ptr_17
              #                     89   store 5_0:i32 temp_17_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_17_array_init_ptr_17
              #                    load from temp_17_array_init_ptr_17 in mem
    ld      s7,328(sp)
              #                    occupy s8 with 5_0
    li      s8, 5
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_17_array_init_ptr_17
              #                    store to temp_17_array_init_ptr_17 in mem offset legal
    sd      s7,328(sp)
              #                    release s7 with temp_17_array_init_ptr_17
              #                     223  untrack temp_17_array_init_ptr_17 
              #                     90   c_17_8 = chi c_17_7:89 
              #                     92   temp_18_array_init_ptr_17 = GEP c_17_8:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_18_array_init_ptr_17
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
    addi    s7,s7,288
              #                    free s7
              #                    occupy s7 with temp_18_array_init_ptr_17
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      s7,320(sp)
              #                    release s7 with temp_18_array_init_ptr_17
              #                     93   store 1_0:i32 temp_18_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_18_array_init_ptr_17
              #                    load from temp_18_array_init_ptr_17 in mem
    ld      s7,320(sp)
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_18_array_init_ptr_17
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      s7,320(sp)
              #                    release s7 with temp_18_array_init_ptr_17
              #                     237  untrack temp_18_array_init_ptr_17 
              #                     94   c_17_9 = chi c_17_8:93 
              #                     96    
              #                     98   temp_19_array_init_ptr_17 = GEP d_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy s7 with temp_19_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,200
              #                    free s7
              #                    occupy s7 with temp_19_array_init_ptr_17
              #                    store to temp_19_array_init_ptr_17 in mem offset legal
    sd      s7,280(sp)
              #                    release s7 with temp_19_array_init_ptr_17
              #                     99    Call void memset_0(temp_19_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_15_array_init_ptr_17
              #                    store to temp_15_array_init_ptr_17 in mem offset legal
    sd      a0,344(sp)
              #                    release a0 with temp_15_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_array_init_ptr_17_0
              #                    load from temp_19_array_init_ptr_17 in mem
    ld      a0,280(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     239  untrack temp_19_array_init_ptr_17 
              #                     208  mu d_17_0:99 
              #                     209  d_17_1 = chi d_17_0:99 
              #                     101  temp_20_array_init_ptr_17 = GEP d_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 2
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     102  store 3_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
              #                    occupy a3 with 3_0
    li      a3, 3
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     226  untrack temp_20_array_init_ptr_17 
              #                    occupy a0 with temp_20_array_init_ptr_17
              #                    release a0 with temp_20_array_init_ptr_17
              #                     103  d_17_2 = chi d_17_1:102 
              #                     105  temp_21_array_init_ptr_17 = GEP d_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 6
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     106  store 7_0:i32 temp_21_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
              #                    occupy a6 with 7_0
    li      a6, 7
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     230  untrack temp_21_array_init_ptr_17 
              #                    occupy a0 with temp_21_array_init_ptr_17
              #                    release a0 with temp_21_array_init_ptr_17
              #                     107  d_17_3 = chi d_17_2:106 
              #                     109  temp_22_array_init_ptr_17 = GEP d_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_17
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 6
    add     a0,a0,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 1
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     110  store 8_0:i32 temp_22_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    occupy s2 with 8_0
    li      s2, 8
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     214  untrack temp_22_array_init_ptr_17 
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    release a0 with temp_22_array_init_ptr_17
              #                     111  d_17_4 = chi d_17_3:110 
              #                     113  temp_23_array_init_ptr_17 = GEP d_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_17
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 4
    add     a0,a0,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     114  store 5_0:i32 temp_23_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_17
              #                    occupy s5 with 5_0
    li      s5, 5
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     213  untrack temp_23_array_init_ptr_17 
              #                    occupy a0 with temp_23_array_init_ptr_17
              #                    release a0 with temp_23_array_init_ptr_17
              #                     115  d_17_5 = chi d_17_4:114 
              #                     117  temp_24_array_init_ptr_17 = GEP d_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_24_array_init_ptr_17
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 0
    add     a0,a0,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     118  store 1_0:i32 temp_24_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_24_array_init_ptr_17
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     233  untrack temp_24_array_init_ptr_17 
              #                    occupy a0 with temp_24_array_init_ptr_17
              #                    release a0 with temp_24_array_init_ptr_17
              #                     119  d_17_6 = chi d_17_5:118 
              #                     121  temp_25_array_init_ptr_17 = GEP d_17_6:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     122  store 2_0:i32 temp_25_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_25_array_init_ptr_17
              #                    occupy s7 with 2_0
    li      s7, 2
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     244  untrack temp_25_array_init_ptr_17 
              #                    occupy a0 with temp_25_array_init_ptr_17
              #                    release a0 with temp_25_array_init_ptr_17
              #                     123  d_17_7 = chi d_17_6:122 
              #                     125   
              #                     127  temp_26_ptr_of_d_17_17 = GEP d_17_7:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_26_ptr_of_d_17_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     129  temp_27_ele_of_d_17_17_0 = load temp_26_ptr_of_d_17_17:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_d_17_17
              #                    occupy s7 with temp_27_ele_of_d_17_17_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_27_ele_of_d_17_17_0
              #                    store to temp_27_ele_of_d_17_17_0 in mem offset legal
    sw      s7,188(sp)
              #                    release s7 with temp_27_ele_of_d_17_17_0
              #                    free a0
              #                     222  untrack temp_26_ptr_of_d_17_17 
              #                    occupy a0 with temp_26_ptr_of_d_17_17
              #                    release a0 with temp_26_ptr_of_d_17_17
              #                     130  mu d_17_7:129 
              #                     132  (nop) 
              #                     134  temp_29_ele_of_c_17_17_0 = load temp_15_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_15_array_init_ptr_17
              #                    load from temp_15_array_init_ptr_17 in mem
    ld      a0,344(sp)
              #                    occupy s7 with temp_29_ele_of_c_17_17_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_29_ele_of_c_17_17_0
              #                    store to temp_29_ele_of_c_17_17_0 in mem offset legal
    sw      s7,172(sp)
              #                    release s7 with temp_29_ele_of_c_17_17_0
              #                    free a0
              #                     236  untrack temp_15_array_init_ptr_17 
              #                    occupy a0 with temp_15_array_init_ptr_17
              #                    release a0 with temp_15_array_init_ptr_17
              #                     135  mu c_17_9:134 
              #                     137  temp_30_array_init_ptr_17 = GEP e_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_30_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     138   Call void memset_0(temp_30_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    store to temp_30_array_init_ptr_17 in mem offset legal
    sd      a0,160(sp)
              #                    release a0 with temp_30_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_array_init_ptr_17_0
              #                    load from temp_30_array_init_ptr_17 in mem
    ld      a0,160(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     220  untrack temp_30_array_init_ptr_17 
              #                     210  mu e_17_0:138 
              #                     211  e_17_1 = chi e_17_0:138 
              #                     140  temp_31_array_init_ptr_17 = GEP e_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 6
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     141  store 7_0:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_17
              #                    occupy a3 with 7_0
    li      a3, 7
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     219  untrack temp_31_array_init_ptr_17 
              #                    occupy a0 with temp_31_array_init_ptr_17
              #                    release a0 with temp_31_array_init_ptr_17
              #                     142  e_17_2 = chi e_17_1:141 
              #                     144  temp_32_array_init_ptr_17 = GEP e_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_17
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     145  store 4_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_17
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     221  untrack temp_32_array_init_ptr_17 
              #                    occupy a0 with temp_32_array_init_ptr_17
              #                    release a0 with temp_32_array_init_ptr_17
              #                     146  e_17_3 = chi e_17_2:145 
              #                     148  temp_33_array_init_ptr_17 = GEP e_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_17
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a0,a0,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 1
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     149  store temp_29_ele_of_c_17_17_0:i32 temp_33_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_17
              #                    occupy s2 with temp_29_ele_of_c_17_17_0
              #                    load from temp_29_ele_of_c_17_17_0 in mem


    lw      s2,172(sp)
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     241  untrack temp_29_ele_of_c_17_17_0 
              #                    occupy s2 with temp_29_ele_of_c_17_17_0
              #                    release s2 with temp_29_ele_of_c_17_17_0
              #                     150  e_17_4 = chi e_17_3:149 
              #                     152  temp_34_array_init_ptr_17 = GEP e_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy s2 with temp_34_array_init_ptr_17
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 4
    add     s2,s2,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,64
              #                    free s2
              #                     153  store 5_0:i32 temp_34_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s2 with temp_34_array_init_ptr_17
              #                    occupy s5 with 5_0
    li      s5, 5
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     242  untrack temp_34_array_init_ptr_17 
              #                    occupy s2 with temp_34_array_init_ptr_17
              #                    release s2 with temp_34_array_init_ptr_17
              #                     154  e_17_5 = chi e_17_4:153 
              #                     156  temp_35_array_init_ptr_17 = GEP e_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s2 with temp_35_array_init_ptr_17
    li      s2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 6
    add     s2,s2,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     s2,s2,s7
              #                    free s7
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,64
              #                    free s2
              #                     157  store 8_0:i32 temp_35_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s2 with temp_35_array_init_ptr_17
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                     158  e_17_6 = chi e_17_5:157 
              #                     160  temp_36_array_init_ptr_17 = GEP e_17_6:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s7 with temp_36_array_init_ptr_17
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
    addi    s7,s7,64
              #                    free s7
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      s7,112(sp)
              #                    release s7 with temp_36_array_init_ptr_17
              #                     161  store 6_0:i32 temp_36_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    load from temp_36_array_init_ptr_17 in mem
    ld      s7,112(sp)
              #                    occupy s8 with 6_0
    li      s8, 6
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      s7,112(sp)
              #                    release s7 with temp_36_array_init_ptr_17
              #                     218  untrack temp_36_array_init_ptr_17 
              #                     162  e_17_7 = chi e_17_6:161 
              #                     164  temp_37_array_init_ptr_17 = GEP e_17_7:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s7 with temp_37_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,64
              #                    free s7
              #                    occupy s7 with temp_37_array_init_ptr_17
              #                    store to temp_37_array_init_ptr_17 in mem offset legal
    sd      s7,104(sp)
              #                    release s7 with temp_37_array_init_ptr_17
              #                     165  store 3_0:i32 temp_37_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_37_array_init_ptr_17
              #                    load from temp_37_array_init_ptr_17 in mem
    ld      s7,104(sp)
              #                    occupy s8 with 3_0
    li      s8, 3
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_37_array_init_ptr_17
              #                    store to temp_37_array_init_ptr_17 in mem offset legal
    sd      s7,104(sp)
              #                    release s7 with temp_37_array_init_ptr_17
              #                     248  untrack temp_37_array_init_ptr_17 
              #                     166  e_17_8 = chi e_17_7:165 
              #                     168  temp_38_array_init_ptr_17 = GEP e_17_8:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_38_array_init_ptr_17
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
    addi    s7,s7,64
              #                    free s7
              #                    occupy s7 with temp_38_array_init_ptr_17
              #                    store to temp_38_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_38_array_init_ptr_17
              #                     169  store temp_27_ele_of_d_17_17_0:i32 temp_38_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_38_array_init_ptr_17
              #                    load from temp_38_array_init_ptr_17 in mem
    ld      s7,96(sp)
              #                    occupy s8 with temp_27_ele_of_d_17_17_0
              #                    load from temp_27_ele_of_d_17_17_0 in mem


    lw      s8,188(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_27_ele_of_d_17_17_0
              #                    store to temp_27_ele_of_d_17_17_0 in mem offset legal
    sw      s8,188(sp)
              #                    release s8 with temp_27_ele_of_d_17_17_0
              #                    free s7
              #                    occupy s7 with temp_38_array_init_ptr_17
              #                    store to temp_38_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_38_array_init_ptr_17
              #                     228  untrack temp_27_ele_of_d_17_17_0 
              #                     170  e_17_9 = chi e_17_8:169 
              #                     174  (nop) 
              #                     176  temp_40_ele_of_e_17_17_0 = load temp_35_array_init_ptr_17:ptr->i32 
              #                    occupy s2 with temp_35_array_init_ptr_17
              #                    occupy s7 with temp_40_ele_of_e_17_17_0
    lw      s7,0(s2)
              #                    free s7
              #                    occupy s7 with temp_40_ele_of_e_17_17_0
              #                    store to temp_40_ele_of_e_17_17_0 in mem offset legal
    sw      s7,52(sp)
              #                    release s7 with temp_40_ele_of_e_17_17_0
              #                    free s2
              #                     232  untrack temp_35_array_init_ptr_17 
              #                    occupy s2 with temp_35_array_init_ptr_17
              #                    release s2 with temp_35_array_init_ptr_17
              #                     177  mu e_17_9:176 
              #                     179  (nop) 
              #                     181  temp_42_ele_of_e_17_17_0 = load temp_38_array_init_ptr_17:ptr->i32 
              #                    occupy s2 with temp_38_array_init_ptr_17
              #                    load from temp_38_array_init_ptr_17 in mem
    ld      s2,96(sp)
              #                    occupy s7 with temp_42_ele_of_e_17_17_0
    lw      s7,0(s2)
              #                    free s7
              #                    occupy s7 with temp_42_ele_of_e_17_17_0
              #                    store to temp_42_ele_of_e_17_17_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_42_ele_of_e_17_17_0
              #                    free s2
              #                     224  untrack temp_38_array_init_ptr_17 
              #                    occupy s2 with temp_38_array_init_ptr_17
              #                    release s2 with temp_38_array_init_ptr_17
              #                     182  mu e_17_9:181 
              #                     184  temp_43_arithop_17_0 = Add i32 temp_40_ele_of_e_17_17_0, temp_42_ele_of_e_17_17_0 
              #                    occupy s2 with temp_40_ele_of_e_17_17_0
              #                    load from temp_40_ele_of_e_17_17_0 in mem


    lw      s2,52(sp)
              #                    occupy s7 with temp_42_ele_of_e_17_17_0
              #                    load from temp_42_ele_of_e_17_17_0 in mem


    lw      s7,36(sp)
              #                    occupy s8 with temp_43_arithop_17_0
    ADDW    s8,s2,s7
              #                    free s2
              #                    occupy s2 with temp_40_ele_of_e_17_17_0
              #                    store to temp_40_ele_of_e_17_17_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_40_ele_of_e_17_17_0
              #                    free s7
              #                    occupy s7 with temp_42_ele_of_e_17_17_0
              #                    store to temp_42_ele_of_e_17_17_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_42_ele_of_e_17_17_0
              #                    free s8
              #                     216  untrack temp_42_ele_of_e_17_17_0 
              #                     215  untrack temp_40_ele_of_e_17_17_0 
              #                     186  (nop) 
              #                     188  temp_45_ele_of_e_17_17_0 = load temp_33_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_33_array_init_ptr_17
              #                    occupy s2 with temp_45_ele_of_e_17_17_0
    lw      s2,0(a0)
              #                    free s2
              #                    occupy s2 with temp_45_ele_of_e_17_17_0
              #                    store to temp_45_ele_of_e_17_17_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_45_ele_of_e_17_17_0
              #                    free a0
              #                     227  untrack temp_33_array_init_ptr_17 
              #                    occupy a0 with temp_33_array_init_ptr_17
              #                    release a0 with temp_33_array_init_ptr_17
              #                     189  mu e_17_9:188 
              #                     191  temp_46_arithop_17_0 = Add i32 temp_43_arithop_17_0, temp_45_ele_of_e_17_17_0 
              #                    occupy s8 with temp_43_arithop_17_0
              #                    occupy a0 with temp_45_ele_of_e_17_17_0
              #                    load from temp_45_ele_of_e_17_17_0 in mem


    lw      a0,20(sp)
              #                    occupy s2 with temp_46_arithop_17_0
    ADDW    s2,s8,a0
              #                    free s8
              #                    occupy s8 with temp_43_arithop_17_0
              #                    store to temp_43_arithop_17_0 in mem offset legal
    sw      s8,32(sp)
              #                    release s8 with temp_43_arithop_17_0
              #                    free a0
              #                    free s2
              #                     235  untrack temp_43_arithop_17_0 
              #                     217  untrack temp_45_ele_of_e_17_17_0 
              #                    occupy a0 with temp_45_ele_of_e_17_17_0
              #                    release a0 with temp_45_ele_of_e_17_17_0
              #                     193  temp_47_ptr_of_a_17_17 = GEP a_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_47_ptr_of_a_17_17
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,496
              #                    free a0
              #                     195  temp_48_ele_of_a_17_17_0 = load temp_47_ptr_of_a_17_17:ptr->i32 
              #                    occupy a0 with temp_47_ptr_of_a_17_17
              #                    occupy s7 with temp_48_ele_of_a_17_17_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_48_ele_of_a_17_17_0
              #                    store to temp_48_ele_of_a_17_17_0 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_48_ele_of_a_17_17_0
              #                    free a0
              #                     240  untrack temp_47_ptr_of_a_17_17 
              #                    occupy a0 with temp_47_ptr_of_a_17_17
              #                    release a0 with temp_47_ptr_of_a_17_17
              #                     196  mu a_17_1:195 
              #                     198  temp_49_arithop_17_0 = Add i32 temp_46_arithop_17_0, temp_48_ele_of_a_17_17_0 
              #                    occupy s2 with temp_46_arithop_17_0
              #                    occupy a0 with temp_48_ele_of_a_17_17_0
              #                    load from temp_48_ele_of_a_17_17_0 in mem


    lw      a0,4(sp)
              #                    occupy s7 with temp_49_arithop_17_0
    ADDW    s7,s2,a0
              #                    free s2
              #                    occupy s2 with temp_46_arithop_17_0
              #                    store to temp_46_arithop_17_0 in mem offset legal
    sw      s2,16(sp)
              #                    release s2 with temp_46_arithop_17_0
              #                    free a0
              #                    free s7
              #                     246  untrack temp_48_ele_of_a_17_17_0 
              #                    occupy a0 with temp_48_ele_of_a_17_17_0
              #                    release a0 with temp_48_ele_of_a_17_17_0
              #                     231  untrack temp_46_arithop_17_0 
              #                     199  ret temp_49_arithop_17_0 
              #                    load from ra_main_0 in mem
    ld      ra,544(sp)
              #                    load from s0_main_0 in mem
    ld      s0,536(sp)
              #                    occupy s7 with temp_49_arithop_17_0
              #                    store to temp_49_arithop_17_0 in mem offset legal
    sw      s7,0(sp)
              #                    release s7 with temp_49_arithop_17_0
              #                    occupy a0 with temp_49_arithop_17_0
              #                    load from temp_49_arithop_17_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,552
              #                    free a0
    ret
