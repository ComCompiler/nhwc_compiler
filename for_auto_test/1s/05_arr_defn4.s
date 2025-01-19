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
              #                    mem layout:|ra_main:8 at 536|s0_main:8 at 528|temp_0_array_init_ptr:8 at 520|temp_1_array_init_ptr:8 at 512|temp_2_array_init_ptr:8 at 504|temp_3_array_init_ptr:8 at 496|temp_4_array_init_ptr:8 at 488|temp_5_array_init_ptr:8 at 480|a:32 at 448|temp_6_array_init_ptr:8 at 440|b:32 at 408|temp_7_array_init_ptr:8 at 400|temp_8_array_init_ptr:8 at 392|temp_9_array_init_ptr:8 at 384|temp_10_array_init_ptr:8 at 376|temp_11_array_init_ptr:8 at 368|temp_12_array_init_ptr:8 at 360|temp_13_array_init_ptr:8 at 352|temp_14_array_init_ptr:8 at 344|temp_15_array_init_ptr:8 at 336|c:32 at 304|temp_16_ptr_of_a_17:8 at 296|temp_17_ele_of_a_17 _s17 _i0:4 at 292|none:4 at 288|temp_18_array_init_ptr:8 at 280|temp_19_array_init_ptr:8 at 272|temp_20_array_init_ptr:8 at 264|temp_21_array_init_ptr:8 at 256|temp_22_array_init_ptr:8 at 248|temp_23_array_init_ptr:8 at 240|temp_24_array_init_ptr:8 at 232|d:32 at 200|temp_25_ptr_of_d_17:8 at 192|temp_26_ele_of_d_17 _s17 _i0:4 at 188|none:4 at 184|temp_27_ptr_of_c_17:8 at 176|temp_28_ele_of_c_17 _s17 _i0:4 at 172|none:4 at 168|temp_29_array_init_ptr:8 at 160|temp_30_array_init_ptr:8 at 152|temp_31_array_init_ptr:8 at 144|temp_32_array_init_ptr:8 at 136|temp_33_array_init_ptr:8 at 128|temp_34_array_init_ptr:8 at 120|temp_35_array_init_ptr:8 at 112|temp_36_array_init_ptr:8 at 104|temp_37_array_init_ptr:8 at 96|e:32 at 64|temp_38_ptr_of_e_17:8 at 56|temp_39_ele_of_e_17 _s17 _i0:4 at 52|none:4 at 48|temp_40_ptr_of_e_17:8 at 40|temp_41_ele_of_e_17 _s17 _i0:4 at 36|temp_42_arithop _s17 _i0:4 at 32|temp_43_ptr_of_e_17:8 at 24|temp_44_ele_of_e_17 _s17 _i0:4 at 20|temp_45_arithop _s17 _i0:4 at 16|temp_46_ptr_of_d_17:8 at 8|temp_47_ele_of_d_17 _s17 _i0:4 at 4|temp_48_arithop _s17 _i0:4 at 0
    addi    sp,sp,-544
              #                    store to ra_main_0 in mem offset legal
    sd      ra,536(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,528(sp)
    addi    s0,sp,544
              #                     18   alloc ptr->i32 [temp_0_array_init_ptr_17] 
              #                     21   alloc ptr->i32 [temp_1_array_init_ptr_17] 
              #                     25   alloc ptr->i32 [temp_2_array_init_ptr_17] 
              #                     29   alloc ptr->i32 [temp_3_array_init_ptr_17] 
              #                     33   alloc ptr->i32 [temp_4_array_init_ptr_17] 
              #                     37   alloc ptr->i32 [temp_5_array_init_ptr_17] 
              #                     41   alloc Array:i32:[Some(4_0), Some(2_0)] [a_17] 
              #                     43   alloc i32 [N_17] 
              #                     45   alloc ptr->i32 [temp_6_array_init_ptr_17] 
              #                     48   alloc Array:i32:[Some(4_0), Some(2_0)] [b_17] 
              #                     50   alloc ptr->i32 [temp_7_array_init_ptr_17] 
              #                     53   alloc ptr->i32 [temp_8_array_init_ptr_17] 
              #                     57   alloc ptr->i32 [temp_9_array_init_ptr_17] 
              #                     61   alloc ptr->i32 [temp_10_array_init_ptr_17] 
              #                     65   alloc ptr->i32 [temp_11_array_init_ptr_17] 
              #                     69   alloc ptr->i32 [temp_12_array_init_ptr_17] 
              #                     73   alloc ptr->i32 [temp_13_array_init_ptr_17] 
              #                     77   alloc ptr->i32 [temp_14_array_init_ptr_17] 
              #                     81   alloc ptr->i32 [temp_15_array_init_ptr_17] 
              #                     85   alloc Array:i32:[Some(4_0), Some(2_0)] [c_17] 
              #                     87   alloc ptr->i32 [temp_16_ptr_of_a_17_17] 
              #                     89   alloc i32 [temp_17_ele_of_a_17_17] 
              #                     92   alloc ptr->i32 [temp_18_array_init_ptr_17] 
              #                     95   alloc ptr->i32 [temp_19_array_init_ptr_17] 
              #                     99   alloc ptr->i32 [temp_20_array_init_ptr_17] 
              #                     103  alloc ptr->i32 [temp_21_array_init_ptr_17] 
              #                     107  alloc ptr->i32 [temp_22_array_init_ptr_17] 
              #                     111  alloc ptr->i32 [temp_23_array_init_ptr_17] 
              #                     115  alloc ptr->i32 [temp_24_array_init_ptr_17] 
              #                     119  alloc Array:i32:[Some(4_0), Some(2_0)] [d_17] 
              #                     121  alloc ptr->i32 [temp_25_ptr_of_d_17_17] 
              #                     123  alloc i32 [temp_26_ele_of_d_17_17] 
              #                     126  alloc ptr->i32 [temp_27_ptr_of_c_17_17] 
              #                     128  alloc i32 [temp_28_ele_of_c_17_17] 
              #                     131  alloc ptr->i32 [temp_29_array_init_ptr_17] 
              #                     134  alloc ptr->i32 [temp_30_array_init_ptr_17] 
              #                     138  alloc ptr->i32 [temp_31_array_init_ptr_17] 
              #                     142  alloc ptr->i32 [temp_32_array_init_ptr_17] 
              #                     146  alloc ptr->i32 [temp_33_array_init_ptr_17] 
              #                     150  alloc ptr->i32 [temp_34_array_init_ptr_17] 
              #                     154  alloc ptr->i32 [temp_35_array_init_ptr_17] 
              #                     158  alloc ptr->i32 [temp_36_array_init_ptr_17] 
              #                     162  alloc ptr->i32 [temp_37_array_init_ptr_17] 
              #                     166  alloc Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [e_17] 
              #                     168  alloc ptr->i32 [temp_38_ptr_of_e_17_17] 
              #                     170  alloc i32 [temp_39_ele_of_e_17_17] 
              #                     173  alloc ptr->i32 [temp_40_ptr_of_e_17_17] 
              #                     175  alloc i32 [temp_41_ele_of_e_17_17] 
              #                     178  alloc i32 [temp_42_arithop_17] 
              #                     180  alloc ptr->i32 [temp_43_ptr_of_e_17_17] 
              #                     182  alloc i32 [temp_44_ele_of_e_17_17] 
              #                     185  alloc i32 [temp_45_arithop_17] 
              #                     187  alloc ptr->i32 [temp_46_ptr_of_d_17_17] 
              #                     189  alloc i32 [temp_47_ele_of_d_17_17] 
              #                     192  alloc i32 [temp_48_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17    
              #                     19   temp_0_array_init_ptr_17 = GEP a_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,448
              #                    free a0
              #                     20    Call void memset_0(temp_0_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,520(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,520(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     242  untrack temp_0_array_init_ptr_17 
              #                     197  mu a_17_0:20 
              #                     198  a_17_1 = chi a_17_0:20 
              #                     22   temp_1_array_init_ptr_17 = GEP a_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 2
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,448
              #                    free a0
              #                     23   store 4_0:i32 temp_1_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    occupy a3 with 4_0
    li      a3, 4
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     247  untrack temp_1_array_init_ptr_17 
              #                    occupy a0 with temp_1_array_init_ptr_17
              #                    release a0 with temp_1_array_init_ptr_17
              #                     24   a_17_2 = chi a_17_1:23 
              #                     26   temp_2_array_init_ptr_17 = GEP a_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_17
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,448
              #                    free a0
              #                     27   store 1_0:i32 temp_2_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_2_array_init_ptr_17
              #                    occupy a6 with 1_0
    li      a6, 1
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     224  untrack temp_2_array_init_ptr_17 
              #                    occupy a0 with temp_2_array_init_ptr_17
              #                    release a0 with temp_2_array_init_ptr_17
              #                     28   a_17_3 = chi a_17_2:27 
              #                     30   temp_3_array_init_ptr_17 = GEP a_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_3_array_init_ptr_17
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
    addi    a0,a0,448
              #                    free a0
              #                     31   store 2_0:i32 temp_3_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_3_array_init_ptr_17
              #                    occupy s2 with 2_0
    li      s2, 2
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     230  untrack temp_3_array_init_ptr_17 
              #                    occupy a0 with temp_3_array_init_ptr_17
              #                    release a0 with temp_3_array_init_ptr_17
              #                     32   a_17_4 = chi a_17_3:31 
              #                     34   temp_4_array_init_ptr_17 = GEP a_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_4_array_init_ptr_17
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 2
    add     a0,a0,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,448
              #                    free a0
              #                     35   store 3_0:i32 temp_4_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_4_array_init_ptr_17
              #                    occupy s5 with 3_0
    li      s5, 3
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     246  untrack temp_4_array_init_ptr_17 
              #                    occupy a0 with temp_4_array_init_ptr_17
              #                    release a0 with temp_4_array_init_ptr_17
              #                     36   a_17_5 = chi a_17_4:35 
              #                     38   temp_5_array_init_ptr_17 = GEP a_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_5_array_init_ptr_17
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 6
    add     a0,a0,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,448
              #                    free a0
              #                     39   store 7_0:i32 temp_5_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_5_array_init_ptr_17
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     40   a_17_6 = chi a_17_5:39 
              #                     42   (nop) 
              #                     44    
              #                     46   temp_6_array_init_ptr_17 = GEP b_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy s7 with temp_6_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,408
              #                    free s7
              #                    occupy s7 with temp_6_array_init_ptr_17
              #                    store to temp_6_array_init_ptr_17 in mem offset legal
    sd      s7,440(sp)
              #                    release s7 with temp_6_array_init_ptr_17
              #                     47    Call void memset_0(temp_6_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      a0,480(sp)
              #                    release a0 with temp_5_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_array_init_ptr_17_0
              #                    load from temp_6_array_init_ptr_17 in mem
    ld      a0,440(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     216  untrack temp_6_array_init_ptr_17 
              #                     199  mu b_17_0:47 
              #                     200  b_17_1 = chi b_17_0:47 
              #                     49    
              #                     51   temp_7_array_init_ptr_17 = GEP c_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy a0 with temp_7_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                     52    Call void memset_0(temp_7_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_7_array_init_ptr_17
              #                    store to temp_7_array_init_ptr_17 in mem offset legal
    sd      a0,400(sp)
              #                    release a0 with temp_7_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_array_init_ptr_17_0
              #                    load from temp_7_array_init_ptr_17 in mem
    ld      a0,400(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     209  untrack temp_7_array_init_ptr_17 
              #                     201  mu c_17_0:52 
              #                     202  c_17_1 = chi c_17_0:52 
              #                     54   temp_8_array_init_ptr_17 = GEP c_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 4
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                     55   store 5_0:i32 temp_8_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_8_array_init_ptr_17
              #                    occupy a3 with 5_0
    li      a3, 5
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     218  untrack temp_8_array_init_ptr_17 
              #                    occupy a0 with temp_8_array_init_ptr_17
              #                    release a0 with temp_8_array_init_ptr_17
              #                     56   c_17_2 = chi c_17_1:55 
              #                     58   temp_9_array_init_ptr_17 = GEP c_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_9_array_init_ptr_17
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
    addi    a0,a0,304
              #                    free a0
              #                     59   store 7_0:i32 temp_9_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_9_array_init_ptr_17
              #                    occupy a6 with 7_0
    li      a6, 7
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     225  untrack temp_9_array_init_ptr_17 
              #                    occupy a0 with temp_9_array_init_ptr_17
              #                    release a0 with temp_9_array_init_ptr_17
              #                     60   c_17_3 = chi c_17_2:59 
              #                     62   temp_10_array_init_ptr_17 = GEP c_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_17
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
    addi    a0,a0,304
              #                    free a0
              #                     63   store 2_0:i32 temp_10_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_10_array_init_ptr_17
              #                    occupy s2 with 2_0
    li      s2, 2
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     221  untrack temp_10_array_init_ptr_17 
              #                    occupy a0 with temp_10_array_init_ptr_17
              #                    release a0 with temp_10_array_init_ptr_17
              #                     64   c_17_4 = chi c_17_3:63 
              #                     66   temp_11_array_init_ptr_17 = GEP c_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_17
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 2
    add     a0,a0,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 1
    add     a0,a0,s4
              #                    free s4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,304
              #                    free a0
              #                     67   store 4_0:i32 temp_11_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    occupy s5 with 4_0
    li      s5, 4
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     234  untrack temp_11_array_init_ptr_17 
              #                    occupy a0 with temp_11_array_init_ptr_17
              #                    release a0 with temp_11_array_init_ptr_17
              #                     68   c_17_5 = chi c_17_4:67 
              #                     70   temp_12_array_init_ptr_17 = GEP c_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_17
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
    addi    a0,a0,304
              #                    free a0
              #                     71   store 6_0:i32 temp_12_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a0)
              #                    free s7
              #                    free a0
              #                     72   c_17_6 = chi c_17_5:71 
              #                     74   temp_13_array_init_ptr_17 = GEP c_17_6:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s7 with temp_13_array_init_ptr_17
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
    addi    s7,s7,304
              #                    free s7
              #                    occupy s7 with temp_13_array_init_ptr_17
              #                    store to temp_13_array_init_ptr_17 in mem offset legal
    sd      s7,352(sp)
              #                    release s7 with temp_13_array_init_ptr_17
              #                     75   store 3_0:i32 temp_13_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_13_array_init_ptr_17
              #                    load from temp_13_array_init_ptr_17 in mem
    ld      s7,352(sp)
              #                    occupy s8 with 3_0
    li      s8, 3
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_13_array_init_ptr_17
              #                    store to temp_13_array_init_ptr_17 in mem offset legal
    sd      s7,352(sp)
              #                    release s7 with temp_13_array_init_ptr_17
              #                     212  untrack temp_13_array_init_ptr_17 
              #                     76   c_17_7 = chi c_17_6:75 
              #                     78   temp_14_array_init_ptr_17 = GEP c_17_7:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s7 with temp_14_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 6
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,304
              #                    free s7
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    store to temp_14_array_init_ptr_17 in mem offset legal
    sd      s7,344(sp)
              #                    release s7 with temp_14_array_init_ptr_17
              #                     79   store 8_0:i32 temp_14_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    load from temp_14_array_init_ptr_17 in mem
    ld      s7,344(sp)
              #                    occupy s8 with 8_0
    li      s8, 8
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_14_array_init_ptr_17
              #                    store to temp_14_array_init_ptr_17 in mem offset legal
    sd      s7,344(sp)
              #                    release s7 with temp_14_array_init_ptr_17
              #                     222  untrack temp_14_array_init_ptr_17 
              #                     80   c_17_8 = chi c_17_7:79 
              #                     82   temp_15_array_init_ptr_17 = GEP c_17_8:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s7 with temp_15_array_init_ptr_17
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
    addi    s7,s7,304
              #                    free s7
              #                    occupy s7 with temp_15_array_init_ptr_17
              #                    store to temp_15_array_init_ptr_17 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_15_array_init_ptr_17
              #                     83   store 1_0:i32 temp_15_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s7 with temp_15_array_init_ptr_17
              #                    load from temp_15_array_init_ptr_17 in mem
    ld      s7,336(sp)
              #                    occupy s8 with 1_0
    li      s8, 1
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_15_array_init_ptr_17
              #                    store to temp_15_array_init_ptr_17 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_15_array_init_ptr_17
              #                     240  untrack temp_15_array_init_ptr_17 
              #                     84   c_17_9 = chi c_17_8:83 
              #                     86    
              #                     88   (nop) 
              #                     90   temp_17_ele_of_a_17_17_0 = load temp_5_array_init_ptr_17:ptr->i32 
              #                    occupy s7 with temp_5_array_init_ptr_17
              #                    load from temp_5_array_init_ptr_17 in mem
    ld      s7,480(sp)
              #                    occupy s8 with temp_17_ele_of_a_17_17_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_17_ele_of_a_17_17_0
              #                    store to temp_17_ele_of_a_17_17_0 in mem offset legal
    sw      s8,292(sp)
              #                    release s8 with temp_17_ele_of_a_17_17_0
              #                    free s7
              #                    occupy s7 with temp_5_array_init_ptr_17
              #                    store to temp_5_array_init_ptr_17 in mem offset legal
    sd      s7,480(sp)
              #                    release s7 with temp_5_array_init_ptr_17
              #                     210  untrack temp_5_array_init_ptr_17 
              #                     91   mu a_17_6:90 
              #                     93   temp_18_array_init_ptr_17 = GEP d_17_0:Array:i32:[Some(4_0), Some(2_0)] [] 
              #                    occupy s7 with temp_18_array_init_ptr_17
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,200
              #                    free s7
              #                    occupy s7 with temp_18_array_init_ptr_17
              #                    store to temp_18_array_init_ptr_17 in mem offset legal
    sd      s7,280(sp)
              #                    release s7 with temp_18_array_init_ptr_17
              #                     94    Call void memset_0(temp_18_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_12_array_init_ptr_17
              #                    store to temp_12_array_init_ptr_17 in mem offset legal
    sd      a0,360(sp)
              #                    release a0 with temp_12_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_array_init_ptr_17_0
              #                    load from temp_18_array_init_ptr_17 in mem
    ld      a0,280(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     233  untrack temp_18_array_init_ptr_17 
              #                     203  mu d_17_0:94 
              #                     204  d_17_1 = chi d_17_0:94 
              #                     96   temp_19_array_init_ptr_17 = GEP d_17_1:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
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
              #                     97   store 1_0:i32 temp_19_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_17
              #                    occupy a3 with 1_0
    li      a3, 1
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     241  untrack temp_19_array_init_ptr_17 
              #                    occupy a0 with temp_19_array_init_ptr_17
              #                    release a0 with temp_19_array_init_ptr_17
              #                     98   d_17_2 = chi d_17_1:97 
              #                     100  temp_20_array_init_ptr_17 = GEP d_17_2:Array:i32:[Some(4_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     101  store 2_0:i32 temp_20_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_20_array_init_ptr_17
              #                    occupy a6 with 2_0
    li      a6, 2
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     229  untrack temp_20_array_init_ptr_17 
              #                    occupy a0 with temp_20_array_init_ptr_17
              #                    release a0 with temp_20_array_init_ptr_17
              #                     102  d_17_3 = chi d_17_2:101 
              #                     104  temp_21_array_init_ptr_17 = GEP d_17_3:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 4
    add     a0,a0,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 0
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,200
              #                    free a0
              #                     105  store 5_0:i32 temp_21_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_17
              #                    occupy s2 with 5_0
    li      s2, 5
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     239  untrack temp_21_array_init_ptr_17 
              #                    occupy a0 with temp_21_array_init_ptr_17
              #                    release a0 with temp_21_array_init_ptr_17
              #                     106  d_17_4 = chi d_17_3:105 
              #                     108  temp_22_array_init_ptr_17 = GEP d_17_4:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_17
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
    addi    a0,a0,200
              #                    free a0
              #                     109  store temp_17_ele_of_a_17_17_0:i32 temp_22_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    occupy s5 with temp_17_ele_of_a_17_17_0
              #                    load from temp_17_ele_of_a_17_17_0 in mem


    lw      s5,292(sp)
    sw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     238  untrack temp_17_ele_of_a_17_17_0 
              #                    occupy s5 with temp_17_ele_of_a_17_17_0
              #                    release s5 with temp_17_ele_of_a_17_17_0
              #                     110  d_17_5 = chi d_17_4:109 
              #                     112  temp_23_array_init_ptr_17 = GEP d_17_5:Array:i32:[Some(4_0), Some(2_0)] [Some(3_0), Some(1_0)] 
              #                    occupy s5 with temp_23_array_init_ptr_17
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 6
    add     s5,s5,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,200
              #                    free s5
              #                     113  store 8_0:i32 temp_23_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s5 with temp_23_array_init_ptr_17
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                     214  untrack temp_23_array_init_ptr_17 
              #                    occupy s5 with temp_23_array_init_ptr_17
              #                    release s5 with temp_23_array_init_ptr_17
              #                     114  d_17_6 = chi d_17_5:113 
              #                     116  temp_24_array_init_ptr_17 = GEP d_17_6:Array:i32:[Some(4_0), Some(2_0)] [Some(1_0), Some(0_0)] 
              #                    occupy s5 with temp_24_array_init_ptr_17
    li      s5, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     s5,s5,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,200
              #                    free s5
              #                     117  store 3_0:i32 temp_24_array_init_ptr_17:ptr->Array:i32:[Some(2_0)] 
              #                    occupy s5 with temp_24_array_init_ptr_17
              #                    occupy s7 with 3_0
    li      s7, 3
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                     227  untrack temp_24_array_init_ptr_17 
              #                    occupy s5 with temp_24_array_init_ptr_17
              #                    release s5 with temp_24_array_init_ptr_17
              #                     118  d_17_7 = chi d_17_6:117 
              #                     120   
              #                     122  temp_25_ptr_of_d_17_17 = GEP d_17_7:Array:i32:[Some(4_0), Some(2_0)] [Some(2_0), Some(1_0)] 
              #                    occupy s5 with temp_25_ptr_of_d_17_17
    li      s5, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     s5,s5,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,200
              #                    free s5
              #                     124  temp_26_ele_of_d_17_17_0 = load temp_25_ptr_of_d_17_17:ptr->i32 
              #                    occupy s5 with temp_25_ptr_of_d_17_17
              #                    occupy s7 with temp_26_ele_of_d_17_17_0
    lw      s7,0(s5)
              #                    free s7
              #                    occupy s7 with temp_26_ele_of_d_17_17_0
              #                    store to temp_26_ele_of_d_17_17_0 in mem offset legal
    sw      s7,188(sp)
              #                    release s7 with temp_26_ele_of_d_17_17_0
              #                    free s5
              #                     211  untrack temp_25_ptr_of_d_17_17 
              #                    occupy s5 with temp_25_ptr_of_d_17_17
              #                    release s5 with temp_25_ptr_of_d_17_17
              #                     125  mu d_17_7:124 
              #                     127  (nop) 
              #                     129  temp_28_ele_of_c_17_17_0 = load temp_12_array_init_ptr_17:ptr->i32 
              #                    occupy s5 with temp_12_array_init_ptr_17
              #                    load from temp_12_array_init_ptr_17 in mem
    ld      s5,360(sp)
              #                    occupy s7 with temp_28_ele_of_c_17_17_0
    lw      s7,0(s5)
              #                    free s7
              #                    occupy s7 with temp_28_ele_of_c_17_17_0
              #                    store to temp_28_ele_of_c_17_17_0 in mem offset legal
    sw      s7,172(sp)
              #                    release s7 with temp_28_ele_of_c_17_17_0
              #                    free s5
              #                     235  untrack temp_12_array_init_ptr_17 
              #                    occupy s5 with temp_12_array_init_ptr_17
              #                    release s5 with temp_12_array_init_ptr_17
              #                     130  mu c_17_9:129 
              #                     132  temp_29_array_init_ptr_17 = GEP e_17_0:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [] 
              #                    occupy s5 with temp_29_array_init_ptr_17
    li      s5, 0
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,64
              #                    free s5
              #                     133   Call void memset_0(temp_29_array_init_ptr_17, 0_0, 32_0) 
              #                    saved register dumping to mem
              #                    occupy s5 with temp_29_array_init_ptr_17
              #                    store to temp_29_array_init_ptr_17 in mem offset legal
    sd      s5,160(sp)
              #                    release s5 with temp_29_array_init_ptr_17
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    store to temp_22_array_init_ptr_17 in mem offset legal
    sd      a0,248(sp)
              #                    release a0 with temp_22_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_array_init_ptr_17_0
              #                    load from temp_29_array_init_ptr_17 in mem
    ld      a0,160(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_32_0_0
    li      a2, 32
              #                    arg load ended


    call    memset
              #                     217  untrack temp_29_array_init_ptr_17 
              #                     205  mu e_17_0:133 
              #                     206  e_17_1 = chi e_17_0:133 
              #                     135  temp_30_array_init_ptr_17 = GEP e_17_1:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     136  store temp_26_ele_of_d_17_17_0:i32 temp_30_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    occupy a4 with temp_26_ele_of_d_17_17_0
              #                    load from temp_26_ele_of_d_17_17_0 in mem


    lw      a4,188(sp)
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     245  untrack temp_26_ele_of_d_17_17_0 
              #                    occupy a4 with temp_26_ele_of_d_17_17_0
              #                    release a4 with temp_26_ele_of_d_17_17_0
              #                     137  e_17_2 = chi e_17_1:136 
              #                     139  temp_31_array_init_ptr_17 = GEP e_17_2:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(1_0), Some(0_0)] 
              #                    occupy a4 with temp_31_array_init_ptr_17
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 4
    add     a4,a4,a5
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 1
    add     a4,a4,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                     140  store 6_0:i32 temp_31_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_31_array_init_ptr_17
              #                    occupy s1 with 6_0
    li      s1, 6
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     244  untrack temp_31_array_init_ptr_17 
              #                    occupy a4 with temp_31_array_init_ptr_17
              #                    release a4 with temp_31_array_init_ptr_17
              #                     141  e_17_3 = chi e_17_2:140 
              #                     143  temp_32_array_init_ptr_17 = GEP e_17_3:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(0_0), Some(0_0)] 
              #                    occupy a4 with temp_32_array_init_ptr_17
    li      a4, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 2
    add     a4,a4,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     a4,a4,s3
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a4,a4,s4
              #                    free s4
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                     144  store 3_0:i32 temp_32_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_32_array_init_ptr_17
              #                    occupy s5 with 3_0
    li      s5, 3
    sw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                     232  untrack temp_32_array_init_ptr_17 
              #                    occupy a4 with temp_32_array_init_ptr_17
              #                    release a4 with temp_32_array_init_ptr_17
              #                     145  e_17_4 = chi e_17_3:144 
              #                     147  temp_33_array_init_ptr_17 = GEP e_17_4:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(2_0), Some(0_0), Some(0_0)] 
              #                    occupy a4 with temp_33_array_init_ptr_17
    li      a4, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 4
    add     a4,a4,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                     148  store 5_0:i32 temp_33_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_33_array_init_ptr_17
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                     228  untrack temp_33_array_init_ptr_17 
              #                    occupy a4 with temp_33_array_init_ptr_17
              #                    release a4 with temp_33_array_init_ptr_17
              #                     149  e_17_5 = chi e_17_4:148 
              #                     151  temp_34_array_init_ptr_17 = GEP e_17_5:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(0_0), Some(0_0)] 
              #                    occupy a4 with temp_34_array_init_ptr_17
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                     152  store 7_0:i32 temp_34_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_34_array_init_ptr_17
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                     213  untrack temp_34_array_init_ptr_17 
              #                    occupy a4 with temp_34_array_init_ptr_17
              #                    release a4 with temp_34_array_init_ptr_17
              #                     153  e_17_6 = chi e_17_5:152 
              #                     155  temp_35_array_init_ptr_17 = GEP e_17_6:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(3_0), Some(1_0), Some(0_0)] 
              #                    occupy a4 with temp_35_array_init_ptr_17
    li      a4, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a4,a4,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a4,a4,s7
              #                    free s7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,64
              #                    free a4
              #                     156  store 8_0:i32 temp_35_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy a4 with temp_35_array_init_ptr_17
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                     157  e_17_7 = chi e_17_6:156 
              #                     159  temp_36_array_init_ptr_17 = GEP e_17_7:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(0_0), Some(1_0), Some(0_0)] 
              #                    occupy s7 with temp_36_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
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
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      s7,104(sp)
              #                    release s7 with temp_36_array_init_ptr_17
              #                     160  store temp_28_ele_of_c_17_17_0:i32 temp_36_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    load from temp_36_array_init_ptr_17 in mem
    ld      s7,104(sp)
              #                    occupy s8 with temp_28_ele_of_c_17_17_0
              #                    load from temp_28_ele_of_c_17_17_0 in mem


    lw      s8,172(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_28_ele_of_c_17_17_0
              #                    store to temp_28_ele_of_c_17_17_0 in mem offset legal
    sw      s8,172(sp)
              #                    release s8 with temp_28_ele_of_c_17_17_0
              #                    free s7
              #                    occupy s7 with temp_36_array_init_ptr_17
              #                    store to temp_36_array_init_ptr_17 in mem offset legal
    sd      s7,104(sp)
              #                    release s7 with temp_36_array_init_ptr_17
              #                     215  untrack temp_28_ele_of_c_17_17_0 
              #                     161  e_17_8 = chi e_17_7:160 
              #                     163  temp_37_array_init_ptr_17 = GEP e_17_8:Array:i32:[Some(4_0), Some(2_0), Some(1_0)] [Some(1_0), Some(1_0), Some(0_0)] 
              #                    occupy s7 with temp_37_array_init_ptr_17
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 1
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
    sd      s7,96(sp)
              #                    release s7 with temp_37_array_init_ptr_17
              #                     164  store 4_0:i32 temp_37_array_init_ptr_17:ptr->Array:i32:[Some(2_0), Some(1_0)] 
              #                    occupy s7 with temp_37_array_init_ptr_17
              #                    load from temp_37_array_init_ptr_17 in mem
    ld      s7,96(sp)
              #                    occupy s8 with 4_0
    li      s8, 4
    sw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                    occupy s7 with temp_37_array_init_ptr_17
              #                    store to temp_37_array_init_ptr_17 in mem offset legal
    sd      s7,96(sp)
              #                    release s7 with temp_37_array_init_ptr_17
              #                     243  untrack temp_37_array_init_ptr_17 
              #                     165  e_17_9 = chi e_17_8:164 
              #                     169  (nop) 
              #                     171  temp_39_ele_of_e_17_17_0 = load temp_35_array_init_ptr_17:ptr->i32 
              #                    occupy a4 with temp_35_array_init_ptr_17
              #                    occupy s7 with temp_39_ele_of_e_17_17_0
    lw      s7,0(a4)
              #                    free s7
              #                    occupy s7 with temp_39_ele_of_e_17_17_0
              #                    store to temp_39_ele_of_e_17_17_0 in mem offset legal
    sw      s7,52(sp)
              #                    release s7 with temp_39_ele_of_e_17_17_0
              #                    free a4
              #                     236  untrack temp_35_array_init_ptr_17 
              #                    occupy a4 with temp_35_array_init_ptr_17
              #                    release a4 with temp_35_array_init_ptr_17
              #                     172  mu e_17_9:171 
              #                     174  (nop) 
              #                     176  temp_41_ele_of_e_17_17_0 = load temp_30_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    occupy a4 with temp_41_ele_of_e_17_17_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     248  untrack temp_30_array_init_ptr_17 
              #                    occupy a0 with temp_30_array_init_ptr_17
              #                    release a0 with temp_30_array_init_ptr_17
              #                     177  mu e_17_9:176 
              #                     179  temp_42_arithop_17_0 = Add i32 temp_39_ele_of_e_17_17_0, temp_41_ele_of_e_17_17_0 
              #                    occupy a0 with temp_39_ele_of_e_17_17_0
              #                    load from temp_39_ele_of_e_17_17_0 in mem


    lw      a0,52(sp)
              #                    occupy a4 with temp_41_ele_of_e_17_17_0
              #                    occupy s7 with temp_42_arithop_17_0
    ADDW    s7,a0,a4
              #                    free a0
              #                    occupy a0 with temp_39_ele_of_e_17_17_0
              #                    store to temp_39_ele_of_e_17_17_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_39_ele_of_e_17_17_0
              #                    free a4
              #                    free s7
              #                     226  untrack temp_41_ele_of_e_17_17_0 
              #                    occupy a4 with temp_41_ele_of_e_17_17_0
              #                    release a4 with temp_41_ele_of_e_17_17_0
              #                     208  untrack temp_39_ele_of_e_17_17_0 
              #                     181  (nop) 
              #                     183  temp_44_ele_of_e_17_17_0 = load temp_36_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_36_array_init_ptr_17
              #                    load from temp_36_array_init_ptr_17 in mem
    ld      a0,104(sp)
              #                    occupy a4 with temp_44_ele_of_e_17_17_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_44_ele_of_e_17_17_0
              #                    store to temp_44_ele_of_e_17_17_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_44_ele_of_e_17_17_0
              #                    free a0
              #                     219  untrack temp_36_array_init_ptr_17 
              #                    occupy a0 with temp_36_array_init_ptr_17
              #                    release a0 with temp_36_array_init_ptr_17
              #                     184  mu e_17_9:183 
              #                     186  temp_45_arithop_17_0 = Add i32 temp_42_arithop_17_0, temp_44_ele_of_e_17_17_0 
              #                    occupy s7 with temp_42_arithop_17_0
              #                    occupy a0 with temp_44_ele_of_e_17_17_0
              #                    load from temp_44_ele_of_e_17_17_0 in mem


    lw      a0,20(sp)
              #                    occupy a4 with temp_45_arithop_17_0
    ADDW    a4,s7,a0
              #                    free s7
              #                    occupy s7 with temp_42_arithop_17_0
              #                    store to temp_42_arithop_17_0 in mem offset legal
    sw      s7,32(sp)
              #                    release s7 with temp_42_arithop_17_0
              #                    free a0
              #                    free a4
              #                     237  untrack temp_42_arithop_17_0 
              #                     223  untrack temp_44_ele_of_e_17_17_0 
              #                    occupy a0 with temp_44_ele_of_e_17_17_0
              #                    release a0 with temp_44_ele_of_e_17_17_0
              #                     188  (nop) 
              #                     190  temp_47_ele_of_d_17_17_0 = load temp_22_array_init_ptr_17:ptr->i32 
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    load from temp_22_array_init_ptr_17 in mem
    ld      a0,248(sp)
              #                    occupy s7 with temp_47_ele_of_d_17_17_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_47_ele_of_d_17_17_0
              #                    store to temp_47_ele_of_d_17_17_0 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_47_ele_of_d_17_17_0
              #                    free a0
              #                     207  untrack temp_22_array_init_ptr_17 
              #                    occupy a0 with temp_22_array_init_ptr_17
              #                    release a0 with temp_22_array_init_ptr_17
              #                     191  mu d_17_7:190 
              #                     193  temp_48_arithop_17_0 = Add i32 temp_45_arithop_17_0, temp_47_ele_of_d_17_17_0 
              #                    occupy a4 with temp_45_arithop_17_0
              #                    occupy a0 with temp_47_ele_of_d_17_17_0
              #                    load from temp_47_ele_of_d_17_17_0 in mem


    lw      a0,4(sp)
              #                    occupy s7 with temp_48_arithop_17_0
    ADDW    s7,a4,a0
              #                    free a4
              #                    occupy a4 with temp_45_arithop_17_0
              #                    store to temp_45_arithop_17_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_45_arithop_17_0
              #                    free a0
              #                    free s7
              #                     231  untrack temp_47_ele_of_d_17_17_0 
              #                    occupy a0 with temp_47_ele_of_d_17_17_0
              #                    release a0 with temp_47_ele_of_d_17_17_0
              #                     220  untrack temp_45_arithop_17_0 
              #                     194  ret temp_48_arithop_17_0 
              #                    load from ra_main_0 in mem
    ld      ra,536(sp)
              #                    load from s0_main_0 in mem
    ld      s0,528(sp)
              #                    occupy s7 with temp_48_arithop_17_0
              #                    store to temp_48_arithop_17_0 in mem offset legal
    sw      s7,0(sp)
              #                    release s7 with temp_48_arithop_17_0
              #                    occupy a0 with temp_48_arithop_17_0
              #                    load from temp_48_arithop_17_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,544
              #                    free a0
    ret
