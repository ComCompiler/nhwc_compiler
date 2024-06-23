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
              #                    regtab 
              #                          Define func_0 [p_17] -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 16|s0_func:8 at 8|p:4 at 4|temp_0_arithop:4 at 0
    addi    sp,sp,-24
              #                    store to ra_func_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_0_arithop_19 
              #                    regtab     a0:Freed { symidx: p_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_arithop_19:i32 
              #                          temp_0_arithop_19 = Sub i32 p_17, 1_0 
              #                    occupy a0 with p_17
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_0_arithop_19
              #                    regtab:    a0:Occupied { symidx: p_17, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_0_arithop_19, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          p_17 = i32 temp_0_arithop_19 
              #                    occupy a2 with temp_0_arithop_19
              #                    occupy a0 with p_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          ret p_17 
              #                    load from ra_func_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func_0 in mem
    ld      s0,8(sp)
              #                    store to p_17 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with p_17
              #                    occupy a0 with p_17
              #                    load from p_17 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_arithop_19, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|b:4 at 12|temp_1_ptr2globl:4 at 8|temp_2_ret_of_func:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 b_23 
              #                          alloc i32 temp_1_ptr2globl_23 
              #                          alloc i32 temp_2_ret_of_func_23 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var b_23:i32 
              #                          store 10_0:i32 *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_1_ptr2globl_23:i32 
              #                          temp_1_ptr2globl_23 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_1_ptr2globl_23
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_2_ret_of_func_23:i32 
              #                          temp_2_ret_of_func_23 =  Call i32 func_0(temp_1_ptr2globl_23) 
              #                    saved register dumping to mem
              #                    store to temp_1_ptr2globl_23 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_1_ptr2globl_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_ptr2globl_23_0
              #                    load from temp_1_ptr2globl_23 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    func
              #                    store to temp_2_ret_of_func_23 in mem offset legal
    sw      a0,4(sp)
              #                          b_23 = i32 temp_2_ret_of_func_23 
              #                    occupy a0 with temp_2_ret_of_func_23
              #                    occupy a1 with b_23
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          ret b_23 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    store to b_23 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with b_23
              #                    store to temp_2_ret_of_func_23 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_2_ret_of_func_23
              #                    occupy a0 with b_23
              #                    load from b_23 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 0
