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
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|a _s17 _i0:4 at 20|b _s17 _i0:4 at 16|c _s17 _i0:4 at 12|d _s17 _i0:4 at 8|result _s17 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     17   alloc i32 [a_17] 
              #                     19   alloc i32 [b_17] 
              #                     21   alloc i32 [c_17] 
              #                     23   alloc i32 [d_17] 
              #                     25   alloc i32 [result_17] 
              #                     31   alloc i32 [temp_0_arithop_17] 
              #                     33   alloc i32 [temp_1_arithop_17] 
              #                     35   alloc i32 [temp_2_arithop_17] 
              #                     37   alloc i32 [temp_3_arithop_17] 
              #                     39   alloc i32 [temp_4__17] 
              #                     41   alloc i32 [temp_5_arithop_17] 
              #                     43   alloc i32 [temp_6_arithop_17] 
              #                     47   alloc i32 [temp_7_arithop_17] 
              #                     49   alloc i32 [temp_8_arithop_17] 
              #                     51   alloc i32 [temp_9_arithop_17] 
              #                     53   alloc i32 [temp_10__17] 
              #                     55   alloc i32 [temp_11_arithop_17] 
              #                     57   alloc i32 [temp_12_arithop_17] 
              #                     59   alloc i32 [temp_13_arithop_17] 
              #                     61   alloc i32 [temp_14__17] 
              #                     63   alloc i32 [temp_15_arithop_17] 
              #                     66   alloc i32 [temp_16_arithop_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     20    
              #                     22    
              #                     24    
              #                     26    
              #                     27   (nop) 
              #                     28   (nop) 
              #                     29   (nop) 
              #                     30   (nop) 
              #                     32   (nop) 
              #                     34   (nop) 
              #                     36   (nop) 
              #                     38   (nop) 
              #                     40   (nop) 
              #                     42   (nop) 
              #                     44   (nop) 
              #                     45   (nop) 
              #                     46    Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_-1_0_0
    li      a0, -1
              #                    arg load ended


    call    putint
              #                     48   (nop) 
              #                     50   (nop) 
              #                     52   (nop) 
              #                     54   (nop) 
              #                     56   (nop) 
              #                     58   (nop) 
              #                     60   (nop) 
              #                     62   (nop) 
              #                     64   (nop) 
              #                     65   (nop) 
              #                     67   (nop) 
              #                     68   (nop) 
              #                     69    Call void putint_0(71_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_71_0_0
    li      a0, 71
              #                    arg load ended


    call    putint
              #                     71   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
