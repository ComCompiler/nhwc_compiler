#!/bin/bash

# 定义源目录和目标目录
source_dir="compiler2022/公开样例与运行时库/hidden_functional"
target_dir="./auto_out/.sy"

# 检查源目录是否存在
if [ ! -d "$source_dir" ]; then
  echo "Error: Source directory '$source_dir' does not exist!"
  exit 1
fi

# 如果目标目录不存在，则创建它
if [ ! -d "$target_dir" ]; then
  mkdir "$target_dir"
fi

# 复制所有以 .in 结尾的文件到目标目录
shopt -s nullglob
for file in "$source_dir"/*.sy; do
  cp "$file" "$target_dir"
  echo "Copied: $file"
done

echo "All .in files have been copied to $target_dir"