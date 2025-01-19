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
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 160|s0_main:8 at 152|a0 _s18 _i0:4 at 148|a1 _s18 _i0:4 at 144|a2 _s18 _i0:4 at 140|a3 _s18 _i0:4 at 136|a4 _s18 _i0:4 at 132|a5 _s18 _i0:4 at 128|a6 _s18 _i0:4 at 124|a7 _s18 _i0:4 at 120|a8 _s18 _i0:4 at 116|a9 _s18 _i0:4 at 112|a10 _s18 _i0:4 at 108|a11 _s18 _i0:4 at 104|a12 _s18 _i0:4 at 100|a13 _s18 _i0:4 at 96|a14 _s18 _i0:4 at 92|a15 _s18 _i0:4 at 88|a16 _s18 _i0:4 at 84|a17 _s18 _i0:4 at 80|a18 _s18 _i0:4 at 76|a19 _s18 _i0:4 at 72|a20 _s18 _i0:4 at 68|a21 _s18 _i0:4 at 64|a22 _s18 _i0:4 at 60|a23 _s18 _i0:4 at 56|a24 _s18 _i0:4 at 52|a25 _s18 _i0:4 at 48|a26 _s18 _i0:4 at 44|a27 _s18 _i0:4 at 40|a28 _s18 _i0:4 at 36|a29 _s18 _i0:4 at 32|b _s18 _i0:4 at 28|b _s18 _i2:4 at 24|temp_0_ret_of_getint _s18 _i0:4 at 20|t _s18 _i0:4 at 16|newline _s18 _i0:4 at 12|temp_30_arithop _s53 _i0:4 at 8|temp_31_cmp _s51 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-168
              #                    store to ra_main_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     18   alloc i32 [a0_18] 
              #                     20   alloc i32 [a1_18] 
              #                     22   alloc i32 [a2_18] 
              #                     24   alloc i32 [a3_18] 
              #                     26   alloc i32 [a4_18] 
              #                     28   alloc i32 [a5_18] 
              #                     30   alloc i32 [a6_18] 
              #                     32   alloc i32 [a7_18] 
              #                     34   alloc i32 [a8_18] 
              #                     36   alloc i32 [a9_18] 
              #                     38   alloc i32 [a10_18] 
              #                     40   alloc i32 [a11_18] 
              #                     42   alloc i32 [a12_18] 
              #                     44   alloc i32 [a13_18] 
              #                     46   alloc i32 [a14_18] 
              #                     48   alloc i32 [a15_18] 
              #                     50   alloc i32 [a16_18] 
              #                     52   alloc i32 [a17_18] 
              #                     54   alloc i32 [a18_18] 
              #                     56   alloc i32 [a19_18] 
              #                     58   alloc i32 [a20_18] 
              #                     60   alloc i32 [a21_18] 
              #                     62   alloc i32 [a22_18] 
              #                     64   alloc i32 [a23_18] 
              #                     66   alloc i32 [a24_18] 
              #                     68   alloc i32 [a25_18] 
              #                     70   alloc i32 [a26_18] 
              #                     72   alloc i32 [a27_18] 
              #                     74   alloc i32 [a28_18] 
              #                     76   alloc i32 [a29_18] 
              #                     78   alloc i32 [b_18] 
              #                     80   alloc i32 [temp_0_ret_of_getint_18] 
              #                     84   alloc i32 [temp_1_arithop_18] 
              #                     87   alloc i32 [temp_2_arithop_18] 
              #                     90   alloc i32 [temp_3_arithop_18] 
              #                     93   alloc i32 [temp_4_arithop_18] 
              #                     96   alloc i32 [temp_5_arithop_18] 
              #                     99   alloc i32 [temp_6_arithop_18] 
              #                     102  alloc i32 [temp_7_arithop_18] 
              #                     105  alloc i32 [temp_8_arithop_18] 
              #                     108  alloc i32 [temp_9_arithop_18] 
              #                     111  alloc i32 [temp_10_arithop_18] 
              #                     114  alloc i32 [temp_11_arithop_18] 
              #                     117  alloc i32 [temp_12_arithop_18] 
              #                     120  alloc i32 [temp_13_arithop_18] 
              #                     123  alloc i32 [temp_14_arithop_18] 
              #                     126  alloc i32 [temp_15_arithop_18] 
              #                     129  alloc i32 [temp_16_arithop_18] 
              #                     132  alloc i32 [temp_17_arithop_18] 
              #                     135  alloc i32 [temp_18_arithop_18] 
              #                     138  alloc i32 [temp_19_arithop_18] 
              #                     141  alloc i32 [temp_20_arithop_18] 
              #                     144  alloc i32 [temp_21_arithop_18] 
              #                     147  alloc i32 [temp_22_arithop_18] 
              #                     150  alloc i32 [temp_23_arithop_18] 
              #                     153  alloc i32 [temp_24_arithop_18] 
              #                     156  alloc i32 [temp_25_arithop_18] 
              #                     159  alloc i32 [temp_26_arithop_18] 
              #                     162  alloc i32 [temp_27_arithop_18] 
              #                     165  alloc i32 [temp_28_arithop_18] 
              #                     168  alloc i32 [temp_29_arithop_18] 
              #                     171  alloc i32 [t_18] 
              #                     203  alloc i32 [newline_18] 
              #                     211  alloc i32 [temp_30_arithop_53] 
              #                     214  alloc i1 [temp_31_cmp_51] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     19    
              #                     21    
              #                     23    
              #                     25    
              #                     27    
              #                     29    
              #                     31    
              #                     33    
              #                     35    
              #                     37    
              #                     39    
              #                     41    
              #                     43    
              #                     45    
              #                     47    
              #                     49    
              #                     51    
              #                     53    
              #                     55    
              #                     57    
              #                     59    
              #                     61    
              #                     63    
              #                     65    
              #                     67    
              #                     69    
              #                     71    
              #                     73    
              #                     75    
              #                     77    
              #                     79    
              #                     81   temp_0_ret_of_getint_18_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     82   (nop) 
              #                     223  b_18_2 = i32 temp_0_ret_of_getint_18_0 
              #                    occupy a0 with temp_0_ret_of_getint_18_0
              #                    occupy a1 with b_18_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     225  untrack temp_0_ret_of_getint_18_0 
              #                    occupy a0 with temp_0_ret_of_getint_18_0
              #                    release a0 with temp_0_ret_of_getint_18_0
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a1:Freed { symidx: b_18_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     216  label while.head_52: 
.while.head_52:
              #                     215  temp_31_cmp_51_0 = icmp i32 Eq b_18_2, 5_0 
              #                    occupy a1 with b_18_2
              #                    occupy a0 with 5_0
    li      a0, 5
              #                    occupy a2 with temp_31_cmp_51_0
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     219  br i1 temp_31_cmp_51_0, label while.body_52, label while.exit_52 
              #                    occupy a2 with temp_31_cmp_51_0
              #                    free a2
              #                    occupy a2 with temp_31_cmp_51_0
    bnez    a2, .while.body_52
              #                    free a2
    j       .while.exit_52
              #                    regtab     a1:Freed { symidx: b_18_2, tracked: true } |     a2:Freed { symidx: temp_31_cmp_51_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     217  label while.body_52: 
.while.body_52:
              #                     212  temp_30_arithop_53_0 = Add i32 b_18_2, 1_0 
              #                    occupy a1 with b_18_2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_30_arithop_53_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     213  (nop) 
              #                     224  b_18_2 = i32 temp_30_arithop_53_0 
              #                    occupy a3 with temp_30_arithop_53_0
              #                    occupy a1 with b_18_2
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_52 
              #                    occupy a2 with temp_31_cmp_51_0
              #                    store to temp_31_cmp_51_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_31_cmp_51_0
              #                    occupy a3 with temp_30_arithop_53_0
              #                    store to temp_30_arithop_53_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_30_arithop_53_0
    j       .while.head_52
              #                    regtab     a1:Freed { symidx: b_18_2, tracked: true } |     a2:Freed { symidx: temp_31_cmp_51_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     218  label while.exit_52: 
.while.exit_52:
              #                     83   (nop) 
              #                     85   (nop) 
              #                     86   (nop) 
              #                     88   (nop) 
              #                     89   (nop) 
              #                     91   (nop) 
              #                     92   (nop) 
              #                     94   (nop) 
              #                     95   (nop) 
              #                     97   (nop) 
              #                     98   (nop) 
              #                     100  (nop) 
              #                     101  (nop) 
              #                     103  (nop) 
              #                     104  (nop) 
              #                     106  (nop) 
              #                     107  (nop) 
              #                     109  (nop) 
              #                     110  (nop) 
              #                     112  (nop) 
              #                     113  (nop) 
              #                     115  (nop) 
              #                     116  (nop) 
              #                     118  (nop) 
              #                     119  (nop) 
              #                     121  (nop) 
              #                     122  (nop) 
              #                     124  (nop) 
              #                     125  (nop) 
              #                     127  (nop) 
              #                     128  (nop) 
              #                     130  (nop) 
              #                     131  (nop) 
              #                     133  (nop) 
              #                     134  (nop) 
              #                     136  (nop) 
              #                     137  (nop) 
              #                     139  (nop) 
              #                     140  (nop) 
              #                     142  (nop) 
              #                     143  (nop) 
              #                     145  (nop) 
              #                     146  (nop) 
              #                     148  (nop) 
              #                     149  (nop) 
              #                     151  (nop) 
              #                     152  (nop) 
              #                     154  (nop) 
              #                     155  (nop) 
              #                     157  (nop) 
              #                     158  (nop) 
              #                     160  (nop) 
              #                     161  (nop) 
              #                     163  (nop) 
              #                     164  (nop) 
              #                     166  (nop) 
              #                     167  (nop) 
              #                     169  (nop) 
              #                     170  (nop) 
              #                     172   
              #                     173   Call void putint_0(0_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with b_18_2
              #                    store to b_18_2 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with b_18_2
              #                    occupy a2 with temp_31_cmp_51_0
              #                    store to temp_31_cmp_51_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_31_cmp_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    putint
              #                     174   Call void putint_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    putint
              #                     175   Call void putint_0(2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    putint
              #                     176   Call void putint_0(3_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    putint
              #                     177   Call void putint_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    putint
              #                     178   Call void putint_0(5_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    putint
              #                     179   Call void putint_0(6_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    putint
              #                     180   Call void putint_0(7_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    putint
              #                     181   Call void putint_0(8_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    putint
              #                     182   Call void putint_0(9_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    putint
              #                     183   Call void putint_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putint
              #                     184   Call void putint_0(11_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    arg load ended


    call    putint
              #                     185   Call void putint_0(12_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    arg load ended


    call    putint
              #                     186   Call void putint_0(13_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    arg load ended


    call    putint
              #                     187   Call void putint_0(14_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    arg load ended


    call    putint
              #                     188   Call void putint_0(15_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    arg load ended


    call    putint
              #                     189   Call void putint_0(16_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    arg load ended


    call    putint
              #                     190   Call void putint_0(17_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    arg load ended


    call    putint
              #                     191   Call void putint_0(18_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    arg load ended


    call    putint
              #                     192   Call void putint_0(19_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    arg load ended


    call    putint
              #                     193   Call void putint_0(20_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_20_0_0
    li      a0, 20
              #                    arg load ended


    call    putint
              #                     194   Call void putint_0(21_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_21_0_0
    li      a0, 21
              #                    arg load ended


    call    putint
              #                     195   Call void putint_0(22_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_22_0_0
    li      a0, 22
              #                    arg load ended


    call    putint
              #                     196   Call void putint_0(23_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_23_0_0
    li      a0, 23
              #                    arg load ended


    call    putint
              #                     197   Call void putint_0(24_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_24_0_0
    li      a0, 24
              #                    arg load ended


    call    putint
              #                     198   Call void putint_0(25_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_25_0_0
    li      a0, 25
              #                    arg load ended


    call    putint
              #                     199   Call void putint_0(26_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_26_0_0
    li      a0, 26
              #                    arg load ended


    call    putint
              #                     200   Call void putint_0(27_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_27_0_0
    li      a0, 27
              #                    arg load ended


    call    putint
              #                     201   Call void putint_0(28_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_28_0_0
    li      a0, 28
              #                    arg load ended


    call    putint
              #                     202   Call void putint_0(29_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_29_0_0
    li      a0, 29
              #                    arg load ended


    call    putint
              #                     204   
              #                     205  (nop) 
              #                     206   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     207   Call void putint_0(b_18_2) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_18_2_0
              #                    load from b_18_2 in mem


    lw      a0,24(sp)
              #                    arg load ended


    call    putint
              #                     226  untrack b_18_2 
              #                     208   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     210  ret 25_0 
              #                    load from ra_main_0 in mem
    ld      ra,160(sp)
              #                    load from s0_main_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with 25_0
    li      a0, 25
    addi    sp,sp,168
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
