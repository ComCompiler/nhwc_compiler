#!/bin/bash

# 检查参数是否为空
if [ -z "$1" ]; then
    echo "请提供一个 .s 文件作为参数"
    exit 1
fi

# 获取输入的 .s 文件名
input_file="$1"

# 检查输入的文件是否存在
if [ ! -f "$input_file" ]; then
    echo "文件 $input_file 不存在"
    exit 1
fi

# 提取文件名（不带扩展名）
file_name="${input_file%.*}"

# 汇编 .s 文件
echo "----汇编.s文件----"
riscv32-unknown-elf-as -o "$file_name.o" "$input_file"

# 链接 .o 文件
echo "----链接.o文件----"
riscv32-unknown-elf-ld -o "$file_name" "$file_name.o"

# 显示可执行文件的机器码
echo "----可执行文件的机器码----"
riscv32-unknown-elf-objdump -d "$file_name.o"

# 运行可执行文件
echo "----执行可执行文件----"
qemu-riscv32-static "$file_name"

# 完成
echo "运行完毕"
