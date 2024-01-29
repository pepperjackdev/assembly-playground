;; @author: pepperjackdev

;; @description: a simple "hello world" program.

;; useful constants
sys_exit    equ 1
sys_write   equ 4
stdout      equ 0


;; text/code segment
segment .text
global _start


_start:
    ;; starting from here
    mov eax, sys_write
    mov ebx, stdout
    mov ecx, msg
    mov edx, len
    int 0x80
    
exit:
    mov eax, sys_exit
    xor ebx, ebx
    int 0x80 


;; data segment
segment .data

msg db "Hello, World!", 0xA ;; 0xA -> Ascii Code for Line-Feed
len equ $- msg
