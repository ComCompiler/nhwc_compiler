# 编译得到x86的汇编程序

-S 表示生成一个汇编文件,而不是二进制文件
人类可读,但是是x86的
clang -S demo1.c -o demo1.ll

# .c -> llvmIR


emit-llvm 表示要我要反汇编llvm IR,否则得到x86目标架构的汇编格式
clang -S -emit-llvm demo1.c -o demo1.ll

## llvmIR优化

优化llvm IR , 把变量从内存移到寄存器中
-Xclang -disable-O0-optnone     额外的声明向clang说明IR将被opt进一步转换,如果不使用此标志,llvm会将optnone限定符添加到IR中的函数,将阻止程序被优化
clang -Xclang -disable-O0-optnone -S -emit-llvm demo1.c -o demo1.ll

再使用
opt -S -mem2reg demo1.ll -o demo1_opt.ll
-mem2reg 会将存储在栈上的变量移动到寄存器里面
注意到局部变量都在虚拟寄存器中

再使用
llvm-as demo1_opt.ll -o demo1_opt.bc
得到llvm IR的二进制文件

再使用
llc demo1_opt.bc -o demo1_opt.rv64
把bitcode转化为x86的汇编格式代码(???)

再使用(LINUX系统下)
as demo1_opt.rv64 -o demo1_opt.o
把x86汇编代码变换为架构依赖的二进制码

最终得到四个文件,
后缀为.bc   .o的是二进制文件
后缀为.ll   .rv64的是用Ascii码编写的
表示相同的程序
# 在中端使用opt(优化)把llvm汇编语言转换为dot文件

opt -dot-cfg demo1.ll -disable-output 
转换成控制流图,把branch的TF和basic块融合到一起的那种(视频里是)
得到.main.dot文件

# 后端,编译器中产生机器码(llc)

使用命令llc --version得到目标平台机器的汇编文件
llc demo.ll -march=riscv64 -o demo.rv64


