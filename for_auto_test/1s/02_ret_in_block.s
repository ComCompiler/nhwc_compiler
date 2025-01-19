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
              #                     18   alloc i32 [a_17] 
              #                     20   alloc i32 [b_17] 
              #                     22   alloc i32 [a_20] 
              #                     23   alloc i32 [temp_0_arithop_20] 
              #                     26   alloc i32 [temp_1_arithop_20] 
              #                     30   alloc i32 [b_24] 
              #                     31   alloc i32 [temp_2_arithop_24] 
              #                     33   alloc i32 [temp_3_arithop_24] 
              #                     37   alloc i32 [a_27] 
              #                     38   alloc i32 [temp_4_arithop_27] 
              #                     40   alloc i32 [temp_5_arithop_27] 
              #                     43   alloc i32 [temp_6_arithop_27] 
              #                     46   alloc i32 [temp_7_arithop_24] 
              #                     48   alloc i32 [temp_8_arithop_24] 
              #                     51   alloc i32 [temp_9_arithop_24] 
              #                     55   alloc i32 [temp_10_arithop_33] 
              #                     57   alloc i32 [temp_11_arithop_33] 
              #                     60   alloc i32 [temp_12_arithop_20] 
              #                     62   alloc i32 [temp_13_arithop_20] 
              #                     65   alloc i32 [temp_14_arithop_20] 
              #                     67   alloc i32 [temp_15_arithop_20] 
              #                     71   alloc i32 [temp_16_arithop_37] 
              #                     73   alloc i32 [temp_17_arithop_37] 
              #                     77   alloc i32 [temp_18_arithop_20] 
              #                     79   alloc i32 [temp_19_arithop_20] 
              #                     82   alloc i32 [temp_20_arithop_17] 
              #                     84   alloc i32 [temp_21_arithop_17] 
              #                     87   alloc i32 [temp_22_arithop_17] 
              #                     89   alloc i32 [temp_23_arithop_17] 
              #                     93   alloc i32 [temp_24_arithop_17] 
              #                     95   alloc i32 [temp_25_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
              #                     19   (nop) 
              #                     21   (nop) 
              #                     24   (nop) 
              #                     25   (nop) 
              #                     27   (nop) 
              #                     28   (nop) 
              #                     29   (nop) 
              #                     32   (nop) 
              #                     34   (nop) 
              #                     35   (nop) 
              #                     36   (nop) 
              #                     39   (nop) 
              #                     41   (nop) 
              #                     42   (nop) 
              #                     44   (nop) 
              #                     45   (nop) 
              #                     47   (nop) 
              #                     49   (nop) 
              #                     50   (nop) 
              #                     52   (nop) 
              #                     53   (nop) 
              #                     56   (nop) 
              #                     58   (nop) 
              #                     59   ret 11_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 11_0
    li      a0, 11
    addi    sp,sp,16
              #                    free a0
    ret
