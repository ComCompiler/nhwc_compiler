# 脚本使用

运行
./run_riscv.sh hello.s

# risc-v

## 安装

sudo apt-get install gcc-riscv64-linux-gnu

sudo apt install binutils-riscv64-unknown-elf

安装riscv32工具链到d盘
https://github.com/stnolting/riscv-gcc-prebuilt?tab=readme-ov-file
下载后粘进home  
cp /mnt/d/riscv32-unknown-elf.gcc-rve-13.2.0.tar.gz  ~  
在home创建一个文件夹  
mkdir riscv32-tools  
进入  
cd riscv32-tools  
解压  
tar -zxvf riscv32-unknown-elf.gcc-rve-13.2.0.tar.gz  
接下来把里面的bin目录添加进环境变量
vim ~/.bashrc
在PATH的最后,加上:/home/你的用户名/riscv32-tools/bin
加载bashrc
source ~/.bashrc

## 转化命令

已有<文件名>.s  
运行命令  
    riscv32-unknown-elf-as -o <文件名>.o <文件名>.s  
    riscv32-unknown-elf-as -o hello.o hello.s  
得到<文件名>.o  
运行命令  
riscv32-unknown-elf-ld -o <文件名> <文件名>.o  
riscv32-unknown-elf-ld -o hello hello.o  
得到<文件名>  

运行命令  
riscv32-unknown-elf-objdump -d hello.o  
在命令行得到具体机器码

运行  
qemu-riscv32-static <文件名>
qemu-riscv32-static hello  
得到输出  


下面的不用看

# x64架构

## 安装nasm 

sudo apt-get update
sudo apt-get install nasm

## 转化需要的命令

需要一个.asm文件  
运行命令  
nasm -f elf64 <文件名>.asm -o <文件名>.o  
得到<文件名>.o  
运行命令  
ld -m elf_x86_64 <文件名>.o -o <文件名>  
得到<文件名>  
运行命令  
./<文件名>  
在命令行输出结果