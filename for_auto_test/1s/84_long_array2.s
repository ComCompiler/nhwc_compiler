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
              #                     19   Define f1_0 "b_17," -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
              #                    mem layout:|ra_f1:8 at 128|s0_f1:8 at 120|b:8 at 112|b:8 at 104|b:8 at 96|temp_0_ptr_of_*a_0:8 at 88|temp_1_ptr_of_*a_0:8 at 80|temp_2_ptr_of_*a_0:8 at 72|temp_3_ptr_of_*a_0:8 at 64|temp_4_ele_of_*a_0 _s19 _i0:4 at 60|none:4 at 56|temp_5_ptr_of_b_17:8 at 48|temp_6_ptr_of_*a_0:8 at 40|temp_7_ele_of_*a_0 _s19 _i0:4 at 36|temp_8_arithop _s19 _i0:4 at 32|temp_9_ptr_of_*a_0:8 at 24|temp_10_ele_of_*a_0 _s19 _i0:4 at 20|none:4 at 16|temp_11_ptr_of_*a_0:8 at 8|temp_12_ele_of_*a_0 _s19 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-136
              #                    store to ra_f1_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_f1_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                     128  a_0_1 = chi a_0_0:19 
              #                     21   alloc ptr->i32 [temp_0_ptr_of_*a_0_19] 
              #                     25   alloc ptr->i32 [temp_1_ptr_of_*a_0_19] 
              #                     29   alloc ptr->i32 [temp_2_ptr_of_*a_0_19] 
              #                     33   alloc ptr->i32 [temp_3_ptr_of_*a_0_19] 
              #                     35   alloc i32 [temp_4_ele_of_*a_0_19] 
              #                     38   alloc ptr->i32 [temp_5_ptr_of_b_17_19] 
              #                     40   alloc ptr->i32 [temp_6_ptr_of_*a_0_19] 
              #                     42   alloc i32 [temp_7_ele_of_*a_0_19] 
              #                     45   alloc i32 [temp_8_arithop_19] 
              #                     50   alloc ptr->i32 [temp_9_ptr_of_*a_0_19] 
              #                     52   alloc i32 [temp_10_ele_of_*a_0_19] 
              #                     55   alloc ptr->i32 [temp_11_ptr_of_*a_0_19] 
              #                     57   alloc i32 [temp_12_ele_of_*a_0_19] 
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     18    
              #                     22   temp_0_ptr_of_*a_0_19 = GEP *a_0:ptr->i32 [Some(5_0)] 
              #                    occupy a1 with temp_0_ptr_of_*a_0_19
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 5
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *a_0
              #                       load label a as ptr to reg
    la      a3, a
              #                    occupy reg a3 with *a_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     23   store 4000_0:i32 temp_0_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a1 with temp_0_ptr_of_*a_0_19
              #                    occupy a4 with 4000_0
    li      a4, 4000
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     24   a_0_2 = chi a_0_1:23 
              #                     26   temp_1_ptr_of_*a_0_19 = GEP *a_0:ptr->i32 [Some(4000_0)] 
              #                    occupy a5 with temp_1_ptr_of_*a_0_19
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 4000
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *a_0
              #                       load label a as ptr to reg
    la      a7, a
              #                    occupy reg a7 with *a_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     27   store 3_0:i32 temp_1_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a5 with temp_1_ptr_of_*a_0_19
              #                    occupy s1 with 3_0
    li      s1, 3
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     147  untrack temp_1_ptr_of_*a_0_19 
              #                    occupy a5 with temp_1_ptr_of_*a_0_19
              #                    release a5 with temp_1_ptr_of_*a_0_19
              #                     28   a_0_3 = chi a_0_2:27 
              #                     30   temp_2_ptr_of_*a_0_19 = GEP *a_0:ptr->i32 [Some(4095_0)] 
              #                    occupy a5 with temp_2_ptr_of_*a_0_19
    li      a5, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 4095
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
    add     a5,a5,s3
              #                    free s3
              #                    free a5
              #                     31   store 7_0:i32 temp_2_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a5 with temp_2_ptr_of_*a_0_19
              #                    occupy s4 with 7_0
    li      s4, 7
    sw      s4,0(a5)
              #                    free s4
              #                    free a5
              #                     32   a_0_4 = chi a_0_3:31 
              #                     34   (nop) 
              #                     36   temp_4_ele_of_*a_0_19_0 = load temp_2_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a5 with temp_2_ptr_of_*a_0_19
              #                    occupy s5 with temp_4_ele_of_*a_0_19_0
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                     146  untrack temp_2_ptr_of_*a_0_19 
              #                    occupy a5 with temp_2_ptr_of_*a_0_19
              #                    release a5 with temp_2_ptr_of_*a_0_19
              #                     37   mu a_0_4:36 
              #                     39   temp_5_ptr_of_b_17_19 = GEP b_17:ptr->i32 [Some(temp_4_ele_of_*a_0_19_0)] 
              #                    occupy a5 with temp_5_ptr_of_b_17_19
    li      a5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with temp_4_ele_of_*a_0_19_0
    mv      s6, s5
              #                    free s5
    add     a5,a5,s6
              #                    free s6
    slli a5,a5,2
              #                    occupy a0 with b_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     150  untrack temp_4_ele_of_*a_0_19_0 
              #                    occupy s5 with temp_4_ele_of_*a_0_19_0
              #                    release s5 with temp_4_ele_of_*a_0_19_0
              #                     41   temp_6_ptr_of_*a_0_19 = GEP *a_0:Array:i32:[None] [Some(2216_0)] 
              #                    occupy s5 with temp_6_ptr_of_*a_0_19
    li      s5, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2216
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
              #                    occupy s7 with *a_0
              #                       load label a as ptr to reg
    la      s7, a
              #                    occupy reg s7 with *a_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                     43   temp_7_ele_of_*a_0_19_0 = load temp_6_ptr_of_*a_0_19:ptr->i32 
              #                    occupy s5 with temp_6_ptr_of_*a_0_19
              #                    occupy s7 with temp_7_ele_of_*a_0_19_0
    lw      s7,0(s5)
              #                    free s7
              #                    occupy s7 with temp_7_ele_of_*a_0_19_0
              #                    store to temp_7_ele_of_*a_0_19_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_7_ele_of_*a_0_19_0
              #                    free s5
              #                     148  untrack temp_6_ptr_of_*a_0_19 
              #                    occupy s5 with temp_6_ptr_of_*a_0_19
              #                    release s5 with temp_6_ptr_of_*a_0_19
              #                     44   mu a_0_4:43 
              #                     46   temp_8_arithop_19_0 = Add i32 temp_7_ele_of_*a_0_19_0, 9_0 
              #                    occupy s5 with temp_7_ele_of_*a_0_19_0
              #                    load from temp_7_ele_of_*a_0_19_0 in mem


    lw      s5,36(sp)
              #                    occupy s7 with 9_0
    li      s7, 9
              #                    occupy s8 with temp_8_arithop_19_0
    ADDW    s8,s5,s7
              #                    free s5
              #                    occupy s5 with temp_7_ele_of_*a_0_19_0
              #                    store to temp_7_ele_of_*a_0_19_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_7_ele_of_*a_0_19_0
              #                    free s7
              #                    free s8
              #                     145  untrack temp_7_ele_of_*a_0_19_0 
              #                     47   store temp_8_arithop_19_0:i32 temp_5_ptr_of_b_17_19:ptr->i32 
              #                    occupy a5 with temp_5_ptr_of_b_17_19
              #                    occupy s8 with temp_8_arithop_19_0
    sw      s8,0(a5)
              #                    free s8
              #                    free a5
              #                     144  untrack temp_5_ptr_of_b_17_19 
              #                    occupy a5 with temp_5_ptr_of_b_17_19
              #                    release a5 with temp_5_ptr_of_b_17_19
              #                     143  untrack temp_8_arithop_19_0 
              #                    occupy s8 with temp_8_arithop_19_0
              #                    release s8 with temp_8_arithop_19_0
              #                     48   b_17 = chi b_17:47 
              #                     51   (nop) 
              #                     53   temp_10_ele_of_*a_0_19_0 = load temp_0_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a1 with temp_0_ptr_of_*a_0_19
              #                    occupy a5 with temp_10_ele_of_*a_0_19_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     151  untrack temp_0_ptr_of_*a_0_19 
              #                    occupy a1 with temp_0_ptr_of_*a_0_19
              #                    release a1 with temp_0_ptr_of_*a_0_19
              #                     54   mu a_0_4:53 
              #                     56   temp_11_ptr_of_*a_0_19 = GEP *a_0:Array:i32:[None] [Some(temp_10_ele_of_*a_0_19_0)] 
              #                    occupy a1 with temp_11_ptr_of_*a_0_19
    li      a1, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_10_ele_of_*a_0_19_0
    mv      s5, a5
              #                    free a5
    add     a1,a1,s5
              #                    free s5
    slli a1,a1,2
              #                    occupy s7 with *a_0
              #                       load label a as ptr to reg
    la      s7, a
              #                    occupy reg s7 with *a_0
    add     a1,a1,s7
              #                    free s7
              #                    free a1
              #                     141  untrack temp_10_ele_of_*a_0_19_0 
              #                    occupy a5 with temp_10_ele_of_*a_0_19_0
              #                    release a5 with temp_10_ele_of_*a_0_19_0
              #                     58   temp_12_ele_of_*a_0_19_0 = load temp_11_ptr_of_*a_0_19:ptr->i32 
              #                    occupy a1 with temp_11_ptr_of_*a_0_19
              #                    occupy a5 with temp_12_ele_of_*a_0_19_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     149  untrack temp_11_ptr_of_*a_0_19 
              #                    occupy a1 with temp_11_ptr_of_*a_0_19
              #                    release a1 with temp_11_ptr_of_*a_0_19
              #                     59   mu a_0_4:58 
              #                     129  mu a_0_4:60 
              #                     130  mu b_17:60 
              #                     142  untrack b_17 
              #                    occupy a0 with b_17
              #                    release a0 with b_17
              #                     60   ret temp_12_ele_of_*a_0_19_0 
              #                    load from ra_f1_0 in mem
    ld      ra,128(sp)
              #                    load from s0_f1_0 in mem
    ld      s0,120(sp)
              #                    occupy a5 with temp_12_ele_of_*a_0_19_0
              #                    store to temp_12_ele_of_*a_0_19_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_12_ele_of_*a_0_19_0
              #                    occupy a0 with temp_12_ele_of_*a_0_19_0
              #                    load from temp_12_ele_of_*a_0_19_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32904|s0_main:8 at 32896|temp_13_array_init_ptr:8 at 32888|temp_14_array_init_ptr:8 at 32880|temp_15_array_init_ptr:8 at 32872|temp_16_array_init_ptr:8 at 32864|temp_17_array_init_ptr:8 at 32856|temp_18_array_init_ptr:8 at 32848|temp_19_array_init_ptr:8 at 32840|b:16384 at 16456|temp_20_array_init_ptr:8 at 16448|temp_21_array_init_ptr:8 at 16440|temp_22_array_init_ptr:8 at 16432|temp_23_array_init_ptr:8 at 16424|temp_24_array_init_ptr:8 at 16416|c:16384 at 32|temp_25_ptr_of_c_26:8 at 24|temp_26_ret_of_f1 _s26 _i0:4 at 20|none:4 at 16|temp_27_ptr_of_c_26:8 at 8|temp_28_ele_of_c_26 _s26 _i0:4 at 4|none:4 at 0
              #                    occupy a0 with -32912_0
    li      a0, -32912
    li      a0, -32912
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_32904_0_0
    li      a1, 32904
    li      a1, 32904
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_32896_0_0
    li      a2, 32896
    li      a2, 32896
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 32912_0
    li      a3, 32912
    li      a3, 32912
    add     s0,a3,sp
              #                    free a3
              #                     131  a_0_5 = chi a_0_0:20 
              #                     64   alloc ptr->i32 [temp_13_array_init_ptr_26] 
              #                     67   alloc ptr->i32 [temp_14_array_init_ptr_26] 
              #                     71   alloc ptr->i32 [temp_15_array_init_ptr_26] 
              #                     75   alloc ptr->i32 [temp_16_array_init_ptr_26] 
              #                     79   alloc ptr->i32 [temp_17_array_init_ptr_26] 
              #                     83   alloc ptr->i32 [temp_18_array_init_ptr_26] 
              #                     87   alloc ptr->i32 [temp_19_array_init_ptr_26] 
              #                     91   alloc Array:i32:[Some(4_0), Some(1024_0)] [b_26] 
              #                     93   alloc ptr->i32 [temp_20_array_init_ptr_26] 
              #                     96   alloc ptr->i32 [temp_21_array_init_ptr_26] 
              #                     100  alloc ptr->i32 [temp_22_array_init_ptr_26] 
              #                     104  alloc ptr->i32 [temp_23_array_init_ptr_26] 
              #                     108  alloc ptr->i32 [temp_24_array_init_ptr_26] 
              #                     112  alloc Array:i32:[Some(1024_0), Some(4_0)] [c_26] 
              #                     113  alloc ptr->i32 [temp_25_ptr_of_c_26_26] 
              #                     115  alloc i32 [temp_26_ret_of_f1_26] 
              #                     120  alloc ptr->i32 [temp_27_ptr_of_c_26_26] 
              #                     122  alloc i32 [temp_28_ele_of_c_26_26] 
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     63    
              #                     65   temp_13_array_init_ptr_26 = GEP b_26_0:Array:i32:[Some(4_0), Some(1024_0)] [] 
              #                    occupy a0 with temp_13_array_init_ptr_26
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 16456_0
    li      a1, 16456
    li      a1, 16456
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                     66    Call void memset_0(temp_13_array_init_ptr_26, 0_0, 16384_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_13_array_init_ptr_26
              #                    store to temp_13_array_init_ptr_26 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_32888_0_0
    li      a2, 32888
    li      a2, 32888
    add     a2,sp,a2
    sd      a0,0(a2)
              #                    free a2
              #                    release a0 with temp_13_array_init_ptr_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_13_array_init_ptr_26_0
              #                    load from temp_13_array_init_ptr_26 in mem
              #                    occupy a1 with _anonymous_of_32888_0_0
    li      a1, 32888
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_16384_0_0
    li      a2, 16384
              #                    arg load ended


    call    memset
              #                     157  untrack temp_13_array_init_ptr_26 
              #                     132  mu b_26_0:66 
              #                     133  b_26_1 = chi b_26_0:66 
              #                     68   (nop) 
              #                     69   (nop) 
              #                     70   b_26_2 = chi b_26_1:69 
              #                     72   (nop) 
              #                     73   (nop) 
              #                     74   b_26_3 = chi b_26_2:73 
              #                     76   (nop) 
              #                     77   (nop) 
              #                     78   b_26_4 = chi b_26_3:77 
              #                     80   (nop) 
              #                     81   (nop) 
              #                     82   b_26_5 = chi b_26_4:81 
              #                     84   (nop) 
              #                     85   (nop) 
              #                     86   b_26_6 = chi b_26_5:85 
              #                     88   (nop) 
              #                     89   (nop) 
              #                     90   b_26_7 = chi b_26_6:89 
              #                     92    
              #                     94   temp_20_array_init_ptr_26 = GEP c_26_0:Array:i32:[Some(1024_0), Some(4_0)] [] 
              #                    occupy a0 with temp_20_array_init_ptr_26
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                     95    Call void memset_0(temp_20_array_init_ptr_26, 0_0, 16384_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_array_init_ptr_26
              #                    store to temp_20_array_init_ptr_26 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_16448_0_0
    li      a1, 16448
    li      a1, 16448
    add     a1,sp,a1
    sd      a0,0(a1)
              #                    free a1
              #                    release a0 with temp_20_array_init_ptr_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_array_init_ptr_26_0
              #                    load from temp_20_array_init_ptr_26 in mem
              #                    occupy a1 with _anonymous_of_16448_0_0
    li      a1, 16448
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_16384_0_0
    li      a2, 16384
              #                    arg load ended


    call    memset
              #                     154  untrack temp_20_array_init_ptr_26 
              #                     134  mu c_26_0:95 
              #                     135  c_26_1 = chi c_26_0:95 
              #                     97   temp_21_array_init_ptr_26 = GEP c_26_1:Array:i32:[Some(1024_0), Some(4_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_26
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 4
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                     98   store 4_0:i32 temp_21_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_21_array_init_ptr_26
              #                    occupy a3 with 4_0
    li      a3, 4
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     153  untrack temp_21_array_init_ptr_26 
              #                    occupy a0 with temp_21_array_init_ptr_26
              #                    release a0 with temp_21_array_init_ptr_26
              #                     99   c_26_2 = chi c_26_1:98 
              #                     101  temp_22_array_init_ptr_26 = GEP c_26_2:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_26
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
    addi    a0,a0,32
              #                    free a0
              #                     102  store 1_0:i32 temp_22_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_22_array_init_ptr_26
              #                    occupy a6 with 1_0
    li      a6, 1
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     155  untrack temp_22_array_init_ptr_26 
              #                    occupy a0 with temp_22_array_init_ptr_26
              #                    release a0 with temp_22_array_init_ptr_26
              #                     103  c_26_3 = chi c_26_2:102 
              #                     105  temp_23_array_init_ptr_26 = GEP c_26_3:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_26
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
    addi    a0,a0,32
              #                    free a0
              #                     106  store 2_0:i32 temp_23_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_23_array_init_ptr_26
              #                    occupy s2 with 2_0
    li      s2, 2
    sw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     158  untrack temp_23_array_init_ptr_26 
              #                    occupy a0 with temp_23_array_init_ptr_26
              #                    release a0 with temp_23_array_init_ptr_26
              #                     107  c_26_4 = chi c_26_3:106 
              #                     109  temp_24_array_init_ptr_26 = GEP c_26_4:Array:i32:[Some(1024_0), Some(4_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_24_array_init_ptr_26
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 4
    add     a0,a0,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                     110  store 3_0:i32 temp_24_array_init_ptr_26:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_24_array_init_ptr_26
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a0)
              #                    free s3
              #                    free a0
              #                     156  untrack temp_24_array_init_ptr_26 
              #                    occupy a0 with temp_24_array_init_ptr_26
              #                    release a0 with temp_24_array_init_ptr_26
              #                     111  c_26_5 = chi c_26_4:110 
              #                     114  temp_25_ptr_of_c_26_26 = GEP c_26_5:Array:i32:[Some(1024_0), Some(4_0)] [Some(0_0)] 
              #                    occupy a0 with temp_25_ptr_of_c_26_26
    li      a0, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                     116  temp_26_ret_of_f1_26_0 =  Call i32 f1_0(temp_25_ptr_of_c_26_26) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ptr_of_c_26_26
              #                    store to temp_25_ptr_of_c_26_26 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_25_ptr_of_c_26_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ptr_of_c_26_26_0
              #                    load from temp_25_ptr_of_c_26_26 in mem
    ld      a0,24(sp)
              #                    arg load ended


    call    f1
              #                     160  untrack temp_25_ptr_of_c_26_26 
              #                     136  mu a_0_5:116 
              #                     137  mu c_26_5:116 
              #                     138  a_0_6 = chi a_0_5:116 
              #                     139  c_26_6 = chi c_26_5:116 
              #                     117   Call void putint_0(temp_26_ret_of_f1_26_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_26_ret_of_f1_26_0
              #                    store to temp_26_ret_of_f1_26_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_26_ret_of_f1_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_26_ret_of_f1_26_0_0
              #                    load from temp_26_ret_of_f1_26_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                     152  untrack temp_26_ret_of_f1_26_0 
              #                     118   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     121  temp_27_ptr_of_c_26_26 = GEP c_26_6:Array:i32:[Some(1024_0), Some(4_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_27_ptr_of_c_26_26
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 8
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
              #                    free a0
              #                     123  temp_28_ele_of_c_26_26_0 = load temp_27_ptr_of_c_26_26:ptr->i32 
              #                    occupy a0 with temp_27_ptr_of_c_26_26
              #                    occupy a3 with temp_28_ele_of_c_26_26_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     159  untrack temp_27_ptr_of_c_26_26 
              #                    occupy a0 with temp_27_ptr_of_c_26_26
              #                    release a0 with temp_27_ptr_of_c_26_26
              #                     124  mu c_26_6:123 
              #                     140  mu a_0_6:125 
              #                     125  ret temp_28_ele_of_c_26_26_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with _anonymous_of_32904_0_0
    li      a0, 32904
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a4 with _anonymous_of_32896_0_0
    li      a4, 32896
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    occupy a3 with temp_28_ele_of_c_26_26_0
              #                    store to temp_28_ele_of_c_26_26_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_28_ele_of_c_26_26_0
              #                    occupy a0 with temp_28_ele_of_c_26_26_0
              #                    load from temp_28_ele_of_c_26_26_0 in mem


    lw      a0,4(sp)
              #                    occupy a3 with 32912_0
    li      a3, 32912
    li      a3, 32912
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a
              #                     16   global Array:i32:[Some(4096_0)] a_0 
    .type a,@object
a:
    .zero 16384
