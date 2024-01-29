;; @author: pepperjackdev

;; @scope: asks the user for an input (as ASCII string) and then prints it out.

;; useful constants
sys_exit    equ 1
sys_read    equ 3
sys_write   equ 4
stdin       equ 0
stdout      equ 1

;; Other constants
input_len   equ 256

;; text/code segment
segment .text
global _start


_start:
    ;; starting from here

    ;; printing out: "Tell me something"
    mov eax, sys_write
    mov ebx, stdout
    mov ecx, message_1
    mov edx, len_1
    int 0x80

    ;; getting the input from users
    mov eax, sys_read
    mov ebx, stdin
    mov ecx, input
    mov edx, input_len
    int 0x80

    ;; printing out: "Here what you said..."
    mov eax, sys_write
    mov ebx, stdout
    mov ecx, message_2
    mov edx, len_2
    int 0x80

    ;; printing out the ASCII string stored into "input" mem. space.
    mov eax, sys_write
    mov ebx, stdout
    mov ecx, input
    mov edx, input_len
    int 0x80 
    
exit:
    ;; exiting from the program
    mov eax, sys_exit
    xor ebx, ebx
    int 0x80 


;; data segment
segment .data

message_1 db "Tell me something: ",
len_1 equ $- message_1

message_2 db "Here what you said... ",
len_2 equ $- message_2

;; bss segment
segment .bss

input resb 256