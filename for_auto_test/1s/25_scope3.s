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
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     20   alloc i32 [a_17] 
              #                     22   alloc i32 [putch_17] 
              #                     23   alloc i32 [temp_0_arithop_21] 
              #                     26   alloc i32 [temp_1_arithop_21] 
              #                     29   alloc i32 [b_21] 
              #                     30   alloc i32 [temp_2_arithop_21] 
              #                     33   alloc i32 [temp_3_arithop_21] 
              #                     35   alloc i32 [temp_4_arithop_21] 
              #                     38   alloc i32 [temp_5_arithop_26] 
              #                     41   alloc i32 [temp_6_arithop_26] 
              #                     44   alloc i32 [main_26] 
              #                     45   alloc i32 [temp_7_arithop_26] 
              #                     48   alloc i32 [temp_8_arithop_26] 
              #                     50   alloc i32 [temp_9_arithop_26] 
              #                     52   alloc i32 [temp_10_arithop_26] 
              #                     55   alloc i32 [temp_11_arithop_31] 
              #                     58   alloc i32 [temp_12_arithop_31] 
              #                     61   alloc i32 [a_31] 
              #                     62   alloc i32 [temp_13_arithop_31] 
              #                     65   alloc i32 [temp_14_arithop_31] 
              #                     67   alloc i32 [temp_15_arithop_31] 
              #                     69   alloc i32 [temp_16_arithop_31] 
              #                     72   alloc i32 [temp_17_arithop_36] 
              #                     75   alloc i32 [temp_18_arithop_36] 
              #                     78   alloc i32 [b_36] 
              #                     79   alloc i32 [temp_19_arithop_36] 
              #                     83   alloc i32 [a_36] 
              #                     84   alloc i32 [temp_20_arithop_36] 
              #                     87   alloc i32 [temp_21_arithop_36] 
              #                     89   alloc i32 [temp_22_arithop_36] 
              #                     91   alloc i32 [temp_23_arithop_36] 
              #                     94   alloc i32 [temp_24_arithop_43] 
              #                     97   alloc i32 [temp_25_arithop_43] 
              #                     100  alloc i32 [main_43] 
              #                     101  alloc i32 [temp_26_arithop_43] 
              #                     104  alloc i32 [temp_27_arithop_43] 
              #                     106  alloc i32 [temp_28_arithop_43] 
              #                     108  alloc i32 [temp_29_arithop_43] 
              #                     111  alloc i32 [temp_30_arithop_36] 
              #                     114  alloc i32 [temp_31_arithop_31] 
              #                     117  alloc i32 [temp_32_arithop_26] 
              #                     121  alloc i32 [temp_33_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17    Call void putch_0(97_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_97_0_0
    li      a0, 97
              #                    arg load ended


    call    putch
              #                     18    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     19   (nop) 
              #                     21   (nop) 
              #                     24   (nop) 
              #                     25   (nop) 
              #                     27   (nop) 
              #                     28   (nop) 
              #                     31   (nop) 
              #                     32   (nop) 
              #                     34   (nop) 
              #                     36   (nop) 
              #                     37   (nop) 
              #                     39   (nop) 
              #                     40   (nop) 
              #                     42   (nop) 
              #                     43   (nop) 
              #                     46   (nop) 
              #                     47   (nop) 
              #                     49   (nop) 
              #                     51   (nop) 
              #                     53   (nop) 
              #                     54   (nop) 
              #                     56   (nop) 
              #                     57   (nop) 
              #                     59   (nop) 
              #                     60   (nop) 
              #                     63   (nop) 
              #                     64   (nop) 
              #                     66   (nop) 
              #                     68   (nop) 
              #                     70   (nop) 
              #                     71   (nop) 
              #                     73   (nop) 
              #                     74   (nop) 
              #                     76   (nop) 
              #                     77   (nop) 
              #                     80   (nop) 
              #                     81   (nop) 
              #                     82   (nop) 
              #                     85   (nop) 
              #                     86   (nop) 
              #                     88   (nop) 
              #                     90   (nop) 
              #                     92   (nop) 
              #                     93   (nop) 
              #                     95   (nop) 
              #                     96   (nop) 
              #                     98   (nop) 
              #                     99   (nop) 
              #                     102  (nop) 
              #                     103  (nop) 
              #                     105  (nop) 
              #                     107  (nop) 
              #                     109  (nop) 
              #                     110  (nop) 
              #                     112  (nop) 
              #                     113  (nop) 
              #                     115  (nop) 
              #                     116  (nop) 
              #                     118  (nop) 
              #                     119  (nop) 
              #                     122  (nop) 
              #                     123  ret 46_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 46_0
    li      a0, 46
    addi    sp,sp,16
              #                    free a0
    ret
