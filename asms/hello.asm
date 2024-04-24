section .data
    msg db 'Hello, world!', 0

section .text
    global _start

_start:
    ; write message to stdout
    mov rax, 1                   ; syscall number for sys_write
    mov rdi, 1                   ; file descriptor 1 (stdout)
    mov rsi, msg                 ; pointer to message
    mov rdx, 13                  ; message length
    syscall                      ; 调用内核

    ; exit program
    mov rax, 60                  ; syscall number for sys_exit
    xor rdi, rdi                 ; return 0 status
    syscall                      ; 调用内核