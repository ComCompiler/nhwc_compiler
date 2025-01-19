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
              #                     18   Define exgcd_0 "a_16_0,b_16_0,x_16,y_16," -> exgcd_ret_0 
    .globl exgcd
    .type exgcd,@function
exgcd:
              #                    mem layout:|ra_exgcd:8 at 184|s0_exgcd:8 at 176|a _s16 _i0:4 at 172|b _s16 _i0:4 at 168|x:8 at 160|x:8 at 152|x:8 at 144|x:8 at 136|y:8 at 128|y:8 at 120|y:8 at 112|y:8 at 104|temp_0_arithop _s25 _i0:4 at 100|temp_1_ret_of_exgcd _s25 _i0:4 at 96|temp_2_ptr_of_x_16:8 at 88|temp_3_ele_of_x_16 _s25 _i0:4 at 84|none:4 at 80|temp_4_ptr_of_x_16:8 at 72|temp_5_ptr_of_y_16:8 at 64|temp_6_ele_of_y_16 _s25 _i0:4 at 60|none:4 at 56|temp_7_ptr_of_y_16:8 at 48|temp_8_arithop _s25 _i0:4 at 44|none:4 at 40|temp_9_ptr_of_y_16:8 at 32|temp_11_arithop _s25 _i0:4 at 28|temp_12_arithop _s25 _i0:4 at 24|temp_13_ptr_of_x_16:8 at 16|temp_14_ptr_of_y_16:8 at 8|temp_15_cmp _s19 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-192
              #                    store to ra_exgcd_0 in mem offset legal
    sd      ra,184(sp)
              #                    store to s0_exgcd_0 in mem offset legal
    sd      s0,176(sp)
    addi    s0,sp,192
              #                     20   alloc i32 [temp_0_arithop_25] 
              #                     22   alloc i32 [temp_1_ret_of_exgcd_25] 
              #                     25   alloc i32 [r_25] 
              #                     26   alloc ptr->i32 [temp_2_ptr_of_x_16_25] 
              #                     28   alloc i32 [temp_3_ele_of_x_16_25] 
              #                     32   alloc i32 [t_25] 
              #                     33   alloc ptr->i32 [temp_4_ptr_of_x_16_25] 
              #                     35   alloc ptr->i32 [temp_5_ptr_of_y_16_25] 
              #                     37   alloc i32 [temp_6_ele_of_y_16_25] 
              #                     42   alloc ptr->i32 [temp_7_ptr_of_y_16_25] 
              #                     44   alloc i32 [temp_8_arithop_25] 
              #                     46   alloc ptr->i32 [temp_9_ptr_of_y_16_25] 
              #                     48   alloc i32 [temp_10_ele_of_y_16_25] 
              #                     51   alloc i32 [temp_11_arithop_25] 
              #                     53   alloc i32 [temp_12_arithop_25] 
              #                     59   alloc ptr->i32 [temp_13_ptr_of_x_16_21] 
              #                     63   alloc ptr->i32 [temp_14_ptr_of_y_16_21] 
              #                     69   alloc i1 [temp_15_cmp_19] 
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     16    
              #                     17    
              #                     70   temp_15_cmp_19_0 = icmp i32 Eq b_16_0, 0_0 
              #                    occupy a1 with b_16_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_15_cmp_19_0
    xor     a5,a1,a4
    seqz    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                     73   br i1 temp_15_cmp_19_0, label branch_true_20, label branch_false_20 
              #                    occupy a5 with temp_15_cmp_19_0
              #                    free a5
              #                    occupy a5 with temp_15_cmp_19_0
    bnez    a5, .branch_true_20
              #                    free a5
    j       .branch_false_20
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } |     a5:Freed { symidx: temp_15_cmp_19_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     71   label branch_true_20: 
.branch_true_20:
              #                     152  untrack temp_1_ret_of_exgcd_25_0 
              #                     151  untrack temp_2_ptr_of_x_16_25 
              #                     150  untrack temp_5_ptr_of_y_16_25 
              #                     149  untrack temp_11_arithop_25_0 
              #                     148  untrack temp_12_arithop_25_0 
              #                     147  untrack temp_15_cmp_19_0 
              #                    occupy a5 with temp_15_cmp_19_0
              #                    release a5 with temp_15_cmp_19_0
              #                     146  untrack temp_3_ele_of_x_16_25_0 
              #                     145  untrack temp_0_arithop_25_0 
              #                     144  untrack temp_6_ele_of_y_16_25_0 
              #                     143  untrack b_16_0 
              #                    occupy a1 with b_16_0
              #                    release a1 with b_16_0
              #                     142  untrack temp_8_arithop_25_0 
              #                     60   temp_13_ptr_of_x_16_21 = GEP x_16:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_13_ptr_of_x_16_21
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a2 with x_16
    add     a1,a1,a2
              #                    free a2
              #                    free a1
              #                     61   store 1_0:i32 temp_13_ptr_of_x_16_21:ptr->i32 
              #                    occupy a1 with temp_13_ptr_of_x_16_21
              #                    occupy a5 with 1_0
    li      a5, 1
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     158  untrack temp_13_ptr_of_x_16_21 
              #                    occupy a1 with temp_13_ptr_of_x_16_21
              #                    release a1 with temp_13_ptr_of_x_16_21
              #                     62   x_16 = chi x_16:61 
              #                     64   temp_14_ptr_of_y_16_21 = GEP y_16:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_14_ptr_of_y_16_21
    li      a1, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
              #                    occupy a3 with y_16
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     65   store 0_0:i32 temp_14_ptr_of_y_16_21:ptr->i32 
              #                    occupy a1 with temp_14_ptr_of_y_16_21
              #                    occupy a7 with 0_0
    li      a7, 0
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     157  untrack temp_14_ptr_of_y_16_21 
              #                    occupy a1 with temp_14_ptr_of_y_16_21
              #                    release a1 with temp_14_ptr_of_y_16_21
              #                     66   y_16 = chi y_16:65 
              #                     130  mu x_16:68 
              #                     156  untrack x_16 
              #                    occupy a2 with x_16
              #                    release a2 with x_16
              #                     131  mu y_16:68 
              #                     159  untrack y_16 
              #                    occupy a3 with y_16
              #                    release a3 with y_16
              #                     68   ret a_16_0 
              #                    load from ra_exgcd_0 in mem
    ld      ra,184(sp)
              #                    load from s0_exgcd_0 in mem
    ld      s0,176(sp)
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with a_16_0
              #                    occupy a0 with a_16_0
              #                    load from a_16_0 in mem


    lw      a0,172(sp)
    addi    sp,sp,192
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |     a2:Freed { symidx: x_16, tracked: true } |     a3:Freed { symidx: y_16, tracked: true } |     a5:Freed { symidx: temp_15_cmp_19_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     72   label branch_false_20: 
.branch_false_20:
              #                     155  untrack temp_13_ptr_of_x_16_21 
              #                     154  untrack temp_14_ptr_of_y_16_21 
              #                     153  untrack temp_15_cmp_19_0 
              #                    occupy a5 with temp_15_cmp_19_0
              #                    release a5 with temp_15_cmp_19_0
              #                     21   temp_0_arithop_25_0 = Mod i32 a_16_0, b_16_0 
              #                    occupy a0 with a_16_0
              #                    occupy a1 with b_16_0
              #                    occupy a4 with temp_0_arithop_25_0
    rem     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     23   temp_1_ret_of_exgcd_25_0 =  Call i32 exgcd_0(b_16_0, temp_0_arithop_25_0, x_16, y_16) 
              #                    saved register dumping to mem
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with a_16_0
              #                    occupy a1 with b_16_0
              #                    store to b_16_0 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with b_16_0
              #                    occupy a2 with x_16
              #                    store to x_16 in mem offset legal
    sd      a2,136(sp)
              #                    release a2 with x_16
              #                    occupy a3 with y_16
              #                    store to y_16 in mem offset legal
    sd      a3,104(sp)
              #                    release a3 with y_16
              #                    occupy a4 with temp_0_arithop_25_0
              #                    store to temp_0_arithop_25_0 in mem offset legal
    sw      a4,100(sp)
              #                    release a4 with temp_0_arithop_25_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_16_0_0
              #                    load from b_16_0 in mem


    lw      a0,168(sp)
              #                    occupy a1 with _anonymous_of_temp_0_arithop_25_0_0
              #                    load from temp_0_arithop_25_0 in mem


    lw      a1,100(sp)
              #                    occupy a2 with _anonymous_of_x_16_0
              #                    load from x_16 in mem
    ld      a2,136(sp)
              #                    occupy a3 with _anonymous_of_y_16_0
              #                    load from y_16 in mem
    ld      a3,104(sp)
              #                    arg load ended


    call    exgcd
              #                     169  untrack temp_0_arithop_25_0 
              #                     24   (nop) 
              #                     27   temp_2_ptr_of_x_16_25 = GEP x_16:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_2_ptr_of_x_16_25
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with x_16
              #                    load from x_16 in mem
    ld      a3,136(sp)
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     29   temp_3_ele_of_x_16_25_0 = load temp_2_ptr_of_x_16_25:ptr->i32 
              #                    occupy a1 with temp_2_ptr_of_x_16_25
              #                    occupy a4 with temp_3_ele_of_x_16_25_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     30   mu x_16:29 
              #                     31   (nop) 
              #                     34   (nop) 
              #                     36   temp_5_ptr_of_y_16_25 = GEP y_16:Array:i32:[None] [Some(0_0)] 
              #                    occupy a5 with temp_5_ptr_of_y_16_25
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with y_16
              #                    load from y_16 in mem
    ld      a7,104(sp)
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     38   temp_6_ele_of_y_16_25_0 = load temp_5_ptr_of_y_16_25:ptr->i32 
              #                    occupy a5 with temp_5_ptr_of_y_16_25
              #                    occupy s1 with temp_6_ele_of_y_16_25_0
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     39   mu y_16:38 
              #                     40   store temp_6_ele_of_y_16_25_0:i32 temp_2_ptr_of_x_16_25:ptr->i32 
              #                    occupy a1 with temp_2_ptr_of_x_16_25
              #                    occupy s1 with temp_6_ele_of_y_16_25_0
    sw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                     161  untrack temp_2_ptr_of_x_16_25 
              #                    occupy a1 with temp_2_ptr_of_x_16_25
              #                    release a1 with temp_2_ptr_of_x_16_25
              #                     41   x_16 = chi x_16:40 
              #                     43   (nop) 
              #                     45   temp_8_arithop_25_0 = Div i32 a_16_0, b_16_0 
              #                    occupy a1 with a_16_0
              #                    load from a_16_0 in mem


    lw      a1,172(sp)
              #                    occupy s2 with b_16_0
              #                    load from b_16_0 in mem


    lw      s2,168(sp)
              #                    occupy s3 with temp_8_arithop_25_0
    divw    s3,a1,s2
              #                    free a1
              #                    free s2
              #                    free s3
              #                     163  untrack b_16_0 
              #                    occupy s2 with b_16_0
              #                    release s2 with b_16_0
              #                     162  untrack a_16_0 
              #                    occupy a1 with a_16_0
              #                    release a1 with a_16_0
              #                     47   (nop) 
              #                     49   (nop) 
              #                     50   mu y_16:49 
              #                     52   temp_11_arithop_25_0 = Mul i32 temp_8_arithop_25_0, temp_6_ele_of_y_16_25_0 
              #                    occupy a1 with temp_11_arithop_25_0
              #                    occupy s3 with temp_8_arithop_25_0
              #                    occupy s1 with temp_6_ele_of_y_16_25_0
    mulw    a1,s3,s1
              #                    free s3
              #                    free s1
              #                    free a1
              #                     171  untrack temp_6_ele_of_y_16_25_0 
              #                    occupy s1 with temp_6_ele_of_y_16_25_0
              #                    release s1 with temp_6_ele_of_y_16_25_0
              #                     168  untrack temp_8_arithop_25_0 
              #                    occupy s3 with temp_8_arithop_25_0
              #                    release s3 with temp_8_arithop_25_0
              #                     54   temp_12_arithop_25_0 = Sub i32 temp_3_ele_of_x_16_25_0, temp_11_arithop_25_0 
              #                    occupy a4 with temp_3_ele_of_x_16_25_0
              #                    occupy a1 with temp_11_arithop_25_0
              #                    occupy s1 with temp_12_arithop_25_0
              #                    regtab:    a0:Freed { symidx: temp_1_ret_of_exgcd_25_0, tracked: true } |     a1:Occupied { symidx: temp_11_arithop_25_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a3:Freed { symidx: x_16, tracked: true } |     a4:Occupied { symidx: temp_3_ele_of_x_16_25_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_5_ptr_of_y_16_25, tracked: true } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Freed { symidx: y_16, tracked: true } |     s1:Occupied { symidx: temp_12_arithop_25_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a4,a1
              #                    free a4
              #                    free a1
              #                    free s1
              #                     170  untrack temp_11_arithop_25_0 
              #                    occupy a1 with temp_11_arithop_25_0
              #                    release a1 with temp_11_arithop_25_0
              #                     166  untrack temp_3_ele_of_x_16_25_0 
              #                    occupy a4 with temp_3_ele_of_x_16_25_0
              #                    release a4 with temp_3_ele_of_x_16_25_0
              #                     55   store temp_12_arithop_25_0:i32 temp_5_ptr_of_y_16_25:ptr->i32 
              #                    occupy a5 with temp_5_ptr_of_y_16_25
              #                    occupy s1 with temp_12_arithop_25_0
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     167  untrack temp_5_ptr_of_y_16_25 
              #                    occupy a5 with temp_5_ptr_of_y_16_25
              #                    release a5 with temp_5_ptr_of_y_16_25
              #                     160  untrack temp_12_arithop_25_0 
              #                    occupy s1 with temp_12_arithop_25_0
              #                    release s1 with temp_12_arithop_25_0
              #                     56   y_16 = chi y_16:55 
              #                     132  mu x_16:58 
              #                     165  untrack x_16 
              #                    occupy a3 with x_16
              #                    release a3 with x_16
              #                     133  mu y_16:58 
              #                     164  untrack y_16 
              #                    occupy a7 with y_16
              #                    release a7 with y_16
              #                     58   ret temp_1_ret_of_exgcd_25_0 
              #                    load from ra_exgcd_0 in mem
    ld      ra,184(sp)
              #                    load from s0_exgcd_0 in mem
    ld      s0,176(sp)
              #                    occupy a0 with temp_1_ret_of_exgcd_25_0
              #                    store to temp_1_ret_of_exgcd_25_0 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_1_ret_of_exgcd_25_0
              #                    occupy a0 with temp_1_ret_of_exgcd_25_0
              #                    load from temp_1_ret_of_exgcd_25_0 in mem


    lw      a0,96(sp)
    addi    sp,sp,192
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 128|s0_main:8 at 120|temp_16_array_init_ptr:8 at 112|temp_17_array_init_ptr:8 at 104|x:4 at 100|none:4 at 96|temp_18_array_init_ptr:8 at 88|temp_19_array_init_ptr:8 at 80|y:4 at 76|none:4 at 72|temp_20_ele_ptr_of_x_32:8 at 64|temp_21_ele_ptr_of_y_32:8 at 56|temp_22_ret_of_exgcd _s32 _i0:4 at 52|none:4 at 48|temp_23_ptr_of_x_32:8 at 40|temp_24_ptr_of_x_32:8 at 32|temp_25_ele_of_x_32 _s32 _i0:4 at 28|temp_26_arithop _s32 _i0:4 at 24|temp_27_arithop _s32 _i0:4 at 20|temp_28_arithop _s32 _i0:4 at 16|temp_29_ptr_of_x_32:8 at 8|temp_30_ele_of_x_32 _s32 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-136
              #                    store to ra_main_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                     78   alloc i32 [a_32] 
              #                     80   alloc i32 [b_32] 
              #                     82   alloc ptr->i32 [temp_16_array_init_ptr_32] 
              #                     85   alloc ptr->i32 [temp_17_array_init_ptr_32] 
              #                     89   alloc Array:i32:[Some(1_0)] [x_32] 
              #                     91   alloc ptr->i32 [temp_18_array_init_ptr_32] 
              #                     94   alloc ptr->i32 [temp_19_array_init_ptr_32] 
              #                     98   alloc Array:i32:[Some(1_0)] [y_32] 
              #                     99   alloc ptr->i32 [temp_20_ele_ptr_of_x_32_32] 
              #                     101  alloc ptr->i32 [temp_21_ele_ptr_of_y_32_32] 
              #                     103  alloc i32 [temp_22_ret_of_exgcd_32] 
              #                     105  alloc ptr->i32 [temp_23_ptr_of_x_32_32] 
              #                     107  alloc ptr->i32 [temp_24_ptr_of_x_32_32] 
              #                     109  alloc i32 [temp_25_ele_of_x_32_32] 
              #                     112  alloc i32 [temp_26_arithop_32] 
              #                     114  alloc i32 [temp_27_arithop_32] 
              #                     116  alloc i32 [temp_28_arithop_32] 
              #                     120  alloc ptr->i32 [temp_29_ptr_of_x_32_32] 
              #                     122  alloc i32 [temp_30_ele_of_x_32_32] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     77   (nop) 
              #                     79   (nop) 
              #                     81    
              #                     83   temp_16_array_init_ptr_32 = GEP x_32_0:Array:i32:[Some(1_0)] [] 
              #                    occupy a0 with temp_16_array_init_ptr_32
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,100
              #                    free a0
              #                     84    Call void memset_0(temp_16_array_init_ptr_32, 0_0, 4_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_16_array_init_ptr_32
              #                    store to temp_16_array_init_ptr_32 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_16_array_init_ptr_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_16_array_init_ptr_32_0
              #                    load from temp_16_array_init_ptr_32 in mem
    ld      a0,112(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_4_0_0
    li      a2, 4
              #                    arg load ended


    call    memset
              #                     182  untrack temp_16_array_init_ptr_32 
              #                     134  mu x_32_0:84 
              #                     135  x_32_1 = chi x_32_0:84 
              #                     86   temp_17_array_init_ptr_32 = GEP x_32_1:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_17_array_init_ptr_32
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,100
              #                    free a0
              #                     87   store 1_0:i32 temp_17_array_init_ptr_32:ptr->i32 
              #                    occupy a0 with temp_17_array_init_ptr_32
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     88   x_32_2 = chi x_32_1:87 
              #                     90    
              #                     92   temp_18_array_init_ptr_32 = GEP y_32_0:Array:i32:[Some(1_0)] [] 
              #                    occupy a3 with temp_18_array_init_ptr_32
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,76
              #                    free a3
              #                     93    Call void memset_0(temp_18_array_init_ptr_32, 0_0, 4_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_17_array_init_ptr_32
              #                    store to temp_17_array_init_ptr_32 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with temp_17_array_init_ptr_32
              #                    occupy a3 with temp_18_array_init_ptr_32
              #                    store to temp_18_array_init_ptr_32 in mem offset legal
    sd      a3,88(sp)
              #                    release a3 with temp_18_array_init_ptr_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_array_init_ptr_32_0
              #                    load from temp_18_array_init_ptr_32 in mem
    ld      a0,88(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_4_0_0
    li      a2, 4
              #                    arg load ended


    call    memset
              #                     181  untrack temp_18_array_init_ptr_32 
              #                     136  mu y_32_0:93 
              #                     137  y_32_1 = chi y_32_0:93 
              #                     95   temp_19_array_init_ptr_32 = GEP y_32_1:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_19_array_init_ptr_32
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,76
              #                    free a0
              #                     96   store 1_0:i32 temp_19_array_init_ptr_32:ptr->i32 
              #                    occupy a0 with temp_19_array_init_ptr_32
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     178  untrack temp_19_array_init_ptr_32 
              #                    occupy a0 with temp_19_array_init_ptr_32
              #                    release a0 with temp_19_array_init_ptr_32
              #                     97   y_32_2 = chi y_32_1:96 
              #                     100  temp_20_ele_ptr_of_x_32_32 = GEP x_32_2:Array:i32:[Some(1_0)] [] 
              #                    occupy a0 with temp_20_ele_ptr_of_x_32_32
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,100
              #                    free a0
              #                     102  temp_21_ele_ptr_of_y_32_32 = GEP y_32_2:Array:i32:[Some(1_0)] [] 
              #                    occupy a3 with temp_21_ele_ptr_of_y_32_32
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,76
              #                    free a3
              #                     104  temp_22_ret_of_exgcd_32_0 =  Call i32 exgcd_0(7_0, 15_0, temp_20_ele_ptr_of_x_32_32, temp_21_ele_ptr_of_y_32_32) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_ele_ptr_of_x_32_32
              #                    store to temp_20_ele_ptr_of_x_32_32 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_20_ele_ptr_of_x_32_32
              #                    occupy a3 with temp_21_ele_ptr_of_y_32_32
              #                    store to temp_21_ele_ptr_of_y_32_32 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_21_ele_ptr_of_y_32_32
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_15_0_0
    li      a1, 15
              #                    occupy a2 with _anonymous_of_temp_20_ele_ptr_of_x_32_32_0
              #                    load from temp_20_ele_ptr_of_x_32_32 in mem
    ld      a2,64(sp)
              #                    occupy a3 with _anonymous_of_temp_21_ele_ptr_of_y_32_32_0
              #                    load from temp_21_ele_ptr_of_y_32_32 in mem
    ld      a3,56(sp)
              #                    arg load ended


    call    exgcd
              #                     177  untrack temp_21_ele_ptr_of_y_32_32 
              #                     172  untrack temp_20_ele_ptr_of_x_32_32 
              #                     138  mu x_32_2:104 
              #                     139  mu y_32_2:104 
              #                     140  x_32_3 = chi x_32_2:104 
              #                     141  y_32_3 = chi y_32_2:104 
              #                     106  (nop) 
              #                     108  (nop) 
              #                     110  temp_25_ele_of_x_32_32_0 = load temp_17_array_init_ptr_32:ptr->i32 
              #                    occupy a1 with temp_17_array_init_ptr_32
              #                    load from temp_17_array_init_ptr_32 in mem
    ld      a1,104(sp)
              #                    occupy a2 with temp_25_ele_of_x_32_32_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     111  mu x_32_3:110 
              #                     113  temp_26_arithop_32_0 = Mod i32 temp_25_ele_of_x_32_32_0, 15_0 
              #                    occupy a2 with temp_25_ele_of_x_32_32_0
              #                    occupy a3 with 15_0
    li      a3, 15
              #                    occupy a4 with temp_26_arithop_32_0
    rem     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     179  untrack temp_25_ele_of_x_32_32_0 
              #                    occupy a2 with temp_25_ele_of_x_32_32_0
              #                    release a2 with temp_25_ele_of_x_32_32_0
              #                     115  temp_27_arithop_32_0 = Add i32 temp_26_arithop_32_0, 15_0 
              #                    occupy a4 with temp_26_arithop_32_0
              #                    found literal reg Some(a3) already exist with 15_0
              #                    occupy a3 with 15_0
              #                    occupy a2 with temp_27_arithop_32_0
    ADDW    a2,a4,a3
              #                    free a4
              #                    free a3
              #                    free a2
              #                     175  untrack temp_26_arithop_32_0 
              #                    occupy a4 with temp_26_arithop_32_0
              #                    release a4 with temp_26_arithop_32_0
              #                     117  temp_28_arithop_32_0 = Mod i32 temp_27_arithop_32_0, 15_0 
              #                    occupy a2 with temp_27_arithop_32_0
              #                    found literal reg Some(a3) already exist with 15_0
              #                    occupy a3 with 15_0
              #                    occupy a4 with temp_28_arithop_32_0
    rem     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     173  untrack temp_27_arithop_32_0 
              #                    occupy a2 with temp_27_arithop_32_0
              #                    release a2 with temp_27_arithop_32_0
              #                     118  store temp_28_arithop_32_0:i32 temp_17_array_init_ptr_32:ptr->i32 
              #                    occupy a1 with temp_17_array_init_ptr_32
              #                    occupy a4 with temp_28_arithop_32_0
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     180  untrack temp_28_arithop_32_0 
              #                    occupy a4 with temp_28_arithop_32_0
              #                    release a4 with temp_28_arithop_32_0
              #                     119  x_32_4 = chi x_32_3:118 
              #                     121  (nop) 
              #                     123  temp_30_ele_of_x_32_32_0 = load temp_17_array_init_ptr_32:ptr->i32 
              #                    occupy a1 with temp_17_array_init_ptr_32
              #                    occupy a2 with temp_30_ele_of_x_32_32_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     176  untrack temp_17_array_init_ptr_32 
              #                    occupy a1 with temp_17_array_init_ptr_32
              #                    release a1 with temp_17_array_init_ptr_32
              #                     124  mu x_32_4:123 
              #                     125   Call void putint_0(temp_30_ele_of_x_32_32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_ret_of_exgcd_32_0
              #                    store to temp_22_ret_of_exgcd_32_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_22_ret_of_exgcd_32_0
              #                    occupy a2 with temp_30_ele_of_x_32_32_0
              #                    store to temp_30_ele_of_x_32_32_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_30_ele_of_x_32_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_ele_of_x_32_32_0_0
              #                    load from temp_30_ele_of_x_32_32_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     174  untrack temp_30_ele_of_x_32_32_0 
              #                     127  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,128(sp)
              #                    load from s0_main_0 in mem
    ld      s0,120(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,136
              #                    free a0
    ret
