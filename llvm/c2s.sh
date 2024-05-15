#!/bin/bash

# 检查输入参数是否为空
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file.c>"
    exit 1
fi

# 提取输入文件名和去除扩展名后的文件名
input_file=$1
filename=$(basename -- "$input_file")
filename_noext="${filename%.*}"

# 编译生成 LLVM IR 文件
clang -S -emit-llvm -o "./llvm_repo/$filename_noext.ll" "$input_file"

# 使用 llc 将 LLVM IR 文件编译成 RISC-V 汇编文件
llc -march=riscv32 -o "./assembly_repo/$filename_noext.s" "./llvm_repo/$filename_noext.ll"
