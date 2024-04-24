.section .data
message:
    .ascii "Hello, world!\n"   # 存储字符串

.section .text
.global _start

_start:
    # 调用写入系统调用
    li a0, 1                     # 参数0：文件描述符（1表示标准输出）
    la a1, message               # 参数1：指向消息的地址
    li a2, 14                    # 参数2：消息的长度
    li a7, 64                    # 系统调用号：64表示sys_write
    ecall                        # 执行系统调用

    # 退出程序
    li a0, 0                     # 参数0：退出码
    li a7, 93                    # 系统调用号：93表示sys_exit
    ecall                        # 执行系统调用
