
;; useful constants
sys_exit    equ 1
sys_read    equ 3
sys_write   equ 4
stdin       equ 0
stdout      equ 1

;; Other constants

;; text/code segment
segment .text
global _start

_start:
    ;; Starting from here
    
exit:
    mov eax, sys_exit
    xor ebx, ebx
    int 0x80 

;; bss segment
segment .bss

;; data segment
segment .data
