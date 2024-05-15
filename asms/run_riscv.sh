#!/bin/bash

# 检查输入参数是否为空
if [ $# -ne 1 ]; then
    echo "用法: $0 <源文件>"
    exit 1
fi

# 获取输入汇编文件的路径
input_file="$1"

# 检查输入文件是否存在
if [ ! -f "$input_file" ]; then
    echo "错误: 文件 $input_file 不存在."
    exit 1
fi

# 提取输入文件的文件名（不含扩展名）
filename=$(basename -- "$input_file")
filename="${filename%.*}"

# 定义中间文件夹和目标文件夹的路径
ofile_folder="./asms"
executable="./asms"

# # 创建中间文件夹和目标文件夹（如果不存在）
# mkdir -p "$ofile_folder"
# mkdir -p "$executable"

# 汇编 .s 文件
echo "----汇编.s文件----" 
riscv32-unknown-elf-gcc -o -S -O2 "$ofile_folder/$filename.o" "$input_file"
# riscv32-unknown-elf-as "$input_file" -o "$ofile_folder/$filename.o"

# 检查是否生成了中间文件
if [ ! -f "$ofile_folder/$filename.o" ]; then
    echo "错误: 无法生成 .o $filename.o 文件"
    exit 1
fi

# 链接 .o 文件
echo "----链接.o文件----"
riscv32-unknown-elf-ld -o "$executable/$filename" "$ofile_folder/$filename.o"
# riscv32-unknown-elf-ld "$ofile_folder/$filename.o" -o "$executable/$filename"

if [ ! -f "$executable/$filename" ]; then
    echo "错误: 无法生成可执行文件$filename."
    exit 1
fi

# 显示可执行文件的机器码
echo "----可执行文件的机器码----"
riscv32-unknown-elf-objdump -d "$filename.o"

# 运行可执行文件
echo "----执行可执行文件----"
qemu-riscv32-static "$filename"

# 输出成功信息
echo "可执行文件 $filename 已生成并移动到 $executable 文件夹中"
echo "中间文件 $filename.o 已移动到 $ofile_folder 文件夹中"

# 完成
echo "运行完毕"
