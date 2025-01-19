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
              #                     17   Define func_0 "p_17_0," -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 16|s0_func:8 at 8|p _s17 _i0:4 at 4|temp_0_arithop _s19 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_func_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     19   alloc i32 [temp_0_arithop_19] 
              #                    regtab     a0:Freed { symidx: p_17_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     20   temp_0_arithop_19_0 = Sub i32 p_17_0, 1_0 
              #                    occupy a0 with p_17_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_0_arithop_19_0
              #                    regtab:    a0:Occupied { symidx: p_17_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_0_arithop_19_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     42   untrack p_17_0 
              #                    occupy a0 with p_17_0
              #                    release a0 with p_17_0
              #                     21   (nop) 
              #                     23   ret temp_0_arithop_19_0 
              #                    load from ra_func_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_0_arithop_19_0
              #                    store to temp_0_arithop_19_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_0_arithop_19_0
              #                    occupy a0 with temp_0_arithop_19_0
              #                    load from temp_0_arithop_19_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|b _s23 _i0:4 at 12|temp_1_value_from_ptr _s23 _i0:4 at 8|temp_2_ret_of_func _s23 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     40   a_0_1 = chi a_0_0:18 
              #                     26   alloc i32 [b_23] 
              #                     30   alloc i32 [temp_1_value_from_ptr_23] 
              #                     33   alloc i32 [temp_2_ret_of_func_23] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     27    
              #                     28   store 10_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     29   a_0_2 = chi a_0_1:28 
              #                     31   temp_1_value_from_ptr_23_0 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_1_value_from_ptr_23_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     32   mu a_0_2:31 
              #                     34   temp_2_ret_of_func_23_0 =  Call i32 func_0(temp_1_value_from_ptr_23_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_1_value_from_ptr_23_0
              #                    store to temp_1_value_from_ptr_23_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_1_value_from_ptr_23_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_value_from_ptr_23_0_0
              #                    load from temp_1_value_from_ptr_23_0 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    func
              #                     43   untrack temp_1_value_from_ptr_23_0 
              #                     35   (nop) 
              #                     41   mu a_0_2:37 
              #                     37   ret temp_2_ret_of_func_23_0 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with temp_2_ret_of_func_23_0
              #                    store to temp_2_ret_of_func_23_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_2_ret_of_func_23_0
              #                    occupy a0 with temp_2_ret_of_func_23_0
              #                    load from temp_2_ret_of_func_23_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl a
              #                     15   global i32 a_0 
    .type a,@object
a:
    .word 0
