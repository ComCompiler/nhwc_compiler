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
              #                    mem layout:|ra_main:8 at 776|s0_main:8 at 768|temp_0_array_init_ptr:8 at 760|temp_1_array_init_ptr:8 at 752|temp_2_array_init_ptr:8 at 744|temp_3_array_init_ptr:8 at 736|temp_4_array_init_ptr:8 at 728|temp_5_array_init_ptr:8 at 720|temp_6_array_init_ptr:8 at 712|temp_7_array_init_ptr:8 at 704|temp_8_array_init_ptr:8 at 696|temp_9_array_init_ptr:8 at 688|temp_10_array_init_ptr:8 at 680|temp_11_array_init_ptr:8 at 672|temp_12_array_init_ptr:8 at 664|temp_13_array_init_ptr:8 at 656|temp_14_array_init_ptr:8 at 648|temp_15_array_init_ptr:8 at 640|c:60 at 580|none:4 at 576|temp_16_array_init_ptr:8 at 568|temp_17_array_init_ptr:8 at 560|temp_18_array_init_ptr:8 at 552|temp_19_array_init_ptr:8 at 544|temp_20_array_init_ptr:8 at 536|temp_21_array_init_ptr:8 at 528|temp_22_array_init_ptr:8 at 520|temp_23_array_init_ptr:8 at 512|temp_24_array_init_ptr:8 at 504|temp_25_array_init_ptr:8 at 496|temp_26_array_init_ptr:8 at 488|temp_27_array_init_ptr:8 at 480|temp_28_array_init_ptr:8 at 472|temp_29_array_init_ptr:8 at 464|temp_30_array_init_ptr:8 at 456|temp_31_array_init_ptr:8 at 448|b:60 at 388|none:4 at 384|temp_32_array_init_ptr:8 at 376|temp_33_array_init_ptr:8 at 368|temp_34_array_init_ptr:8 at 360|temp_35_array_init_ptr:8 at 352|temp_36_array_init_ptr:8 at 344|temp_37_array_init_ptr:8 at 336|temp_38_array_init_ptr:8 at 328|temp_39_array_init_ptr:8 at 320|temp_40_array_init_ptr:8 at 312|temp_41_array_init_ptr:8 at 304|temp_42_array_init_ptr:8 at 296|temp_43_array_init_ptr:8 at 288|temp_44_array_init_ptr:8 at 280|temp_45_array_init_ptr:8 at 272|temp_46_array_init_ptr:8 at 264|temp_47_array_init_ptr:8 at 256|a:60 at 196|none:4 at 192|temp_48_array_init_ptr:8 at 184|temp_49_array_init_ptr:8 at 176|temp_50_array_init_ptr:8 at 168|temp_51_array_init_ptr:8 at 160|temp_52_array_init_ptr:8 at 152|temp_53_array_init_ptr:8 at 144|temp_54_array_init_ptr:8 at 136|temp_55_array_init_ptr:8 at 128|temp_56_array_init_ptr:8 at 120|temp_57_array_init_ptr:8 at 112|temp_58_array_init_ptr:8 at 104|temp_59_array_init_ptr:8 at 96|temp_60_array_init_ptr:8 at 88|temp_61_array_init_ptr:8 at 80|temp_62_array_init_ptr:8 at 72|temp_63_array_init_ptr:8 at 64|d:60 at 4|none:4 at 0
    addi    sp,sp,-784
              #                    store to ra_main_0 in mem offset legal
    sd      ra,776(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,768(sp)
    addi    s0,sp,784
              #                     18   alloc ptr->i32 [temp_0_array_init_ptr_17] 
              #                     21   alloc ptr->i32 [temp_1_array_init_ptr_17] 
              #                     25   alloc ptr->i32 [temp_2_array_init_ptr_17] 
              #                     29   alloc ptr->i32 [temp_3_array_init_ptr_17] 
              #                     33   alloc ptr->i32 [temp_4_array_init_ptr_17] 
              #                     37   alloc ptr->i32 [temp_5_array_init_ptr_17] 
              #                     41   alloc ptr->i32 [temp_6_array_init_ptr_17] 
              #                     45   alloc ptr->i32 [temp_7_array_init_ptr_17] 
              #                     49   alloc ptr->i32 [temp_8_array_init_ptr_17] 
              #                     53   alloc ptr->i32 [temp_9_array_init_ptr_17] 
              #                     57   alloc ptr->i32 [temp_10_array_init_ptr_17] 
              #                     61   alloc ptr->i32 [temp_11_array_init_ptr_17] 
              #                     65   alloc ptr->i32 [temp_12_array_init_ptr_17] 
              #                     69   alloc ptr->i32 [temp_13_array_init_ptr_17] 
              #                     73   alloc ptr->i32 [temp_14_array_init_ptr_17] 
              #                     77   alloc ptr->i32 [temp_15_array_init_ptr_17] 
              #                     81   alloc Array:i32:[Some(5_0), Some(3_0)] [c_17] 
              #                     83   alloc ptr->i32 [temp_16_array_init_ptr_17] 
              #                     86   alloc ptr->i32 [temp_17_array_init_ptr_17] 
              #                     90   alloc ptr->i32 [temp_18_array_init_ptr_17] 
              #                     94   alloc ptr->i32 [temp_19_array_init_ptr_17] 
              #                     98   alloc ptr->i32 [temp_20_array_init_ptr_17] 
              #                     102  alloc ptr->i32 [temp_21_array_init_ptr_17] 
              #                     106  alloc ptr->i32 [temp_22_array_init_ptr_17] 
              #                     110  alloc ptr->i32 [temp_23_array_init_ptr_17] 
              #                     114  alloc ptr->i32 [temp_24_array_init_ptr_17] 
              #                     118  alloc ptr->i32 [temp_25_array_init_ptr_17] 
              #                     122  alloc ptr->i32 [temp_26_array_init_ptr_17] 
              #                     126  alloc ptr->i32 [temp_27_array_init_ptr_17] 
              #                     130  alloc ptr->i32 [temp_28_array_init_ptr_17] 
              #                     134  alloc ptr->i32 [temp_29_array_init_ptr_17] 
              #                     138  alloc ptr->i32 [temp_30_array_init_ptr_17] 
              #                     142  alloc ptr->i32 [temp_31_array_init_ptr_17] 
              #                     146  alloc Array:i32:[Some(5_0), Some(3_0)] [b_17] 
              #                     148  alloc ptr->i32 [temp_32_array_init_ptr_17] 
              #                     151  alloc ptr->i32 [temp_33_array_init_ptr_17] 
              #                     155  alloc ptr->i32 [temp_34_array_init_ptr_17] 
              #                     159  alloc ptr->i32 [temp_35_array_init_ptr_17] 
              #                     163  alloc ptr->i32 [temp_36_array_init_ptr_17] 
              #                     167  alloc ptr->i32 [temp_37_array_init_ptr_17] 
              #                     171  alloc ptr->i32 [temp_38_array_init_ptr_17] 
              #                     175  alloc ptr->i32 [temp_39_array_init_ptr_17] 
              #                     179  alloc ptr->i32 [temp_40_array_init_ptr_17] 
              #                     183  alloc ptr->i32 [temp_41_array_init_ptr_17] 
              #                     187  alloc ptr->i32 [temp_42_array_init_ptr_17] 
              #                     191  alloc ptr->i32 [temp_43_array_init_ptr_17] 
              #                     195  alloc ptr->i32 [temp_44_array_init_ptr_17] 
              #                     199  alloc ptr->i32 [temp_45_array_init_ptr_17] 
              #                     203  alloc ptr->i32 [temp_46_array_init_ptr_17] 
              #                     207  alloc ptr->i32 [temp_47_array_init_ptr_17] 
              #                     211  alloc Array:i32:[Some(5_0), Some(3_0)] [a_17] 
              #                     213  alloc ptr->i32 [temp_48_array_init_ptr_17] 
              #                     216  alloc ptr->i32 [temp_49_array_init_ptr_17] 
              #                     220  alloc ptr->i32 [temp_50_array_init_ptr_17] 
              #                     224  alloc ptr->i32 [temp_51_array_init_ptr_17] 
              #                     228  alloc ptr->i32 [temp_52_array_init_ptr_17] 
              #                     232  alloc ptr->i32 [temp_53_array_init_ptr_17] 
              #                     236  alloc ptr->i32 [temp_54_array_init_ptr_17] 
              #                     240  alloc ptr->i32 [temp_55_array_init_ptr_17] 
              #                     244  alloc ptr->i32 [temp_56_array_init_ptr_17] 
              #                     248  alloc ptr->i32 [temp_57_array_init_ptr_17] 
              #                     252  alloc ptr->i32 [temp_58_array_init_ptr_17] 
              #                     256  alloc ptr->i32 [temp_59_array_init_ptr_17] 
              #                     260  alloc ptr->i32 [temp_60_array_init_ptr_17] 
              #                     264  alloc ptr->i32 [temp_61_array_init_ptr_17] 
              #                     268  alloc ptr->i32 [temp_62_array_init_ptr_17] 
              #                     272  alloc ptr->i32 [temp_63_array_init_ptr_17] 
              #                     276  alloc Array:i32:[Some(5_0), Some(3_0)] [d_17] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17    
              #                     19   temp_0_array_init_ptr_17 = GEP c_17_0:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_0_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,580
              #                    free a0
              #                     20    Call void memset_0(temp_0_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_array_init_ptr_17
              #                    store to temp_0_array_init_ptr_17 in mem offset legal
    sd      a0,760(sp)
              #                    release a0 with temp_0_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_array_init_ptr_17_0
              #                    load from temp_0_array_init_ptr_17 in mem
    ld      a0,760(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                     291  untrack temp_0_array_init_ptr_17 
              #                     281  mu c_17_0:20 
              #                     282  c_17_1 = chi c_17_0:20 
              #                     22   (nop) 
              #                     23   (nop) 
              #                     24   c_17_2 = chi c_17_1:23 
              #                     26   (nop) 
              #                     27   (nop) 
              #                     28   c_17_3 = chi c_17_2:27 
              #                     30   (nop) 
              #                     31   (nop) 
              #                     32   c_17_4 = chi c_17_3:31 
              #                     34   (nop) 
              #                     35   (nop) 
              #                     36   c_17_5 = chi c_17_4:35 
              #                     38   (nop) 
              #                     39   (nop) 
              #                     40   c_17_6 = chi c_17_5:39 
              #                     42   (nop) 
              #                     43   (nop) 
              #                     44   c_17_7 = chi c_17_6:43 
              #                     46   (nop) 
              #                     47   (nop) 
              #                     48   c_17_8 = chi c_17_7:47 
              #                     50   (nop) 
              #                     51   (nop) 
              #                     52   c_17_9 = chi c_17_8:51 
              #                     54   (nop) 
              #                     55   (nop) 
              #                     56   c_17_10 = chi c_17_9:55 
              #                     58   (nop) 
              #                     59   (nop) 
              #                     60   c_17_11 = chi c_17_10:59 
              #                     62   (nop) 
              #                     63   (nop) 
              #                     64   c_17_12 = chi c_17_11:63 
              #                     66   (nop) 
              #                     67   (nop) 
              #                     68   c_17_13 = chi c_17_12:67 
              #                     70   (nop) 
              #                     71   (nop) 
              #                     72   c_17_14 = chi c_17_13:71 
              #                     74   (nop) 
              #                     75   (nop) 
              #                     76   c_17_15 = chi c_17_14:75 
              #                     78   (nop) 
              #                     79   (nop) 
              #                     80   c_17_16 = chi c_17_15:79 
              #                     82    
              #                     84   temp_16_array_init_ptr_17 = GEP b_17_0:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_16_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,388
              #                    free a0
              #                     85    Call void memset_0(temp_16_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_16_array_init_ptr_17
              #                    store to temp_16_array_init_ptr_17 in mem offset legal
    sd      a0,568(sp)
              #                    release a0 with temp_16_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_16_array_init_ptr_17_0
              #                    load from temp_16_array_init_ptr_17 in mem
    ld      a0,568(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                     290  untrack temp_16_array_init_ptr_17 
              #                     283  mu b_17_0:85 
              #                     284  b_17_1 = chi b_17_0:85 
              #                     87   (nop) 
              #                     88   (nop) 
              #                     89   b_17_2 = chi b_17_1:88 
              #                     91   (nop) 
              #                     92   (nop) 
              #                     93   b_17_3 = chi b_17_2:92 
              #                     95   (nop) 
              #                     96   (nop) 
              #                     97   b_17_4 = chi b_17_3:96 
              #                     99   (nop) 
              #                     100  (nop) 
              #                     101  b_17_5 = chi b_17_4:100 
              #                     103  (nop) 
              #                     104  (nop) 
              #                     105  b_17_6 = chi b_17_5:104 
              #                     107  (nop) 
              #                     108  (nop) 
              #                     109  b_17_7 = chi b_17_6:108 
              #                     111  (nop) 
              #                     112  (nop) 
              #                     113  b_17_8 = chi b_17_7:112 
              #                     115  (nop) 
              #                     116  (nop) 
              #                     117  b_17_9 = chi b_17_8:116 
              #                     119  (nop) 
              #                     120  (nop) 
              #                     121  b_17_10 = chi b_17_9:120 
              #                     123  (nop) 
              #                     124  (nop) 
              #                     125  b_17_11 = chi b_17_10:124 
              #                     127  (nop) 
              #                     128  (nop) 
              #                     129  b_17_12 = chi b_17_11:128 
              #                     131  (nop) 
              #                     132  (nop) 
              #                     133  b_17_13 = chi b_17_12:132 
              #                     135  (nop) 
              #                     136  (nop) 
              #                     137  b_17_14 = chi b_17_13:136 
              #                     139  (nop) 
              #                     140  (nop) 
              #                     141  b_17_15 = chi b_17_14:140 
              #                     143  (nop) 
              #                     144  (nop) 
              #                     145  b_17_16 = chi b_17_15:144 
              #                     147   
              #                     149  temp_32_array_init_ptr_17 = GEP a_17_0:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_32_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,196
              #                    free a0
              #                     150   Call void memset_0(temp_32_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_32_array_init_ptr_17
              #                    store to temp_32_array_init_ptr_17 in mem offset legal
    sd      a0,376(sp)
              #                    release a0 with temp_32_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32_array_init_ptr_17_0
              #                    load from temp_32_array_init_ptr_17 in mem
    ld      a0,376(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                     289  untrack temp_32_array_init_ptr_17 
              #                     285  mu a_17_0:150 
              #                     286  a_17_1 = chi a_17_0:150 
              #                     152  (nop) 
              #                     153  (nop) 
              #                     154  a_17_2 = chi a_17_1:153 
              #                     156  (nop) 
              #                     157  (nop) 
              #                     158  a_17_3 = chi a_17_2:157 
              #                     160  (nop) 
              #                     161  (nop) 
              #                     162  a_17_4 = chi a_17_3:161 
              #                     164  (nop) 
              #                     165  (nop) 
              #                     166  a_17_5 = chi a_17_4:165 
              #                     168  (nop) 
              #                     169  (nop) 
              #                     170  a_17_6 = chi a_17_5:169 
              #                     172  (nop) 
              #                     173  (nop) 
              #                     174  a_17_7 = chi a_17_6:173 
              #                     176  (nop) 
              #                     177  (nop) 
              #                     178  a_17_8 = chi a_17_7:177 
              #                     180  (nop) 
              #                     181  (nop) 
              #                     182  a_17_9 = chi a_17_8:181 
              #                     184  (nop) 
              #                     185  (nop) 
              #                     186  a_17_10 = chi a_17_9:185 
              #                     188  (nop) 
              #                     189  (nop) 
              #                     190  a_17_11 = chi a_17_10:189 
              #                     192  (nop) 
              #                     193  (nop) 
              #                     194  a_17_12 = chi a_17_11:193 
              #                     196  (nop) 
              #                     197  (nop) 
              #                     198  a_17_13 = chi a_17_12:197 
              #                     200  (nop) 
              #                     201  (nop) 
              #                     202  a_17_14 = chi a_17_13:201 
              #                     204  (nop) 
              #                     205  (nop) 
              #                     206  a_17_15 = chi a_17_14:205 
              #                     208  (nop) 
              #                     209  (nop) 
              #                     210  a_17_16 = chi a_17_15:209 
              #                     212   
              #                     214  temp_48_array_init_ptr_17 = GEP d_17_0:Array:i32:[Some(5_0), Some(3_0)] [] 
              #                    occupy a0 with temp_48_array_init_ptr_17
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,4
              #                    free a0
              #                     215   Call void memset_0(temp_48_array_init_ptr_17, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_48_array_init_ptr_17
              #                    store to temp_48_array_init_ptr_17 in mem offset legal
    sd      a0,184(sp)
              #                    release a0 with temp_48_array_init_ptr_17
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_48_array_init_ptr_17_0
              #                    load from temp_48_array_init_ptr_17 in mem
    ld      a0,184(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                     292  untrack temp_48_array_init_ptr_17 
              #                     287  mu d_17_0:215 
              #                     288  d_17_1 = chi d_17_0:215 
              #                     217  (nop) 
              #                     218  (nop) 
              #                     219  d_17_2 = chi d_17_1:218 
              #                     221  (nop) 
              #                     222  (nop) 
              #                     223  d_17_3 = chi d_17_2:222 
              #                     225  (nop) 
              #                     226  (nop) 
              #                     227  d_17_4 = chi d_17_3:226 
              #                     229  (nop) 
              #                     230  (nop) 
              #                     231  d_17_5 = chi d_17_4:230 
              #                     233  (nop) 
              #                     234  (nop) 
              #                     235  d_17_6 = chi d_17_5:234 
              #                     237  (nop) 
              #                     238  (nop) 
              #                     239  d_17_7 = chi d_17_6:238 
              #                     241  (nop) 
              #                     242  (nop) 
              #                     243  d_17_8 = chi d_17_7:242 
              #                     245  (nop) 
              #                     246  (nop) 
              #                     247  d_17_9 = chi d_17_8:246 
              #                     249  (nop) 
              #                     250  (nop) 
              #                     251  d_17_10 = chi d_17_9:250 
              #                     253  (nop) 
              #                     254  (nop) 
              #                     255  d_17_11 = chi d_17_10:254 
              #                     257  (nop) 
              #                     258  (nop) 
              #                     259  d_17_12 = chi d_17_11:258 
              #                     261  (nop) 
              #                     262  (nop) 
              #                     263  d_17_13 = chi d_17_12:262 
              #                     265  (nop) 
              #                     266  (nop) 
              #                     267  d_17_14 = chi d_17_13:266 
              #                     269  (nop) 
              #                     270  (nop) 
              #                     271  d_17_15 = chi d_17_14:270 
              #                     273  (nop) 
              #                     274  (nop) 
              #                     275  d_17_16 = chi d_17_15:274 
              #                     278  ret 4_0 
              #                    load from ra_main_0 in mem
    ld      ra,776(sp)
              #                    load from s0_main_0 in mem
    ld      s0,768(sp)
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,784
              #                    free a0
    ret
