include 'emu8086.inc'  
print "enter a number " 
call scan_num
printn
mov ax,cx
mov bx,ax
mov cx,10

x:
    cmp ax,0
    je k
    mov dx,0
    div cx
    add sum,dx
    jmp x
k:
    printn
    mov ax,sum 
    print "sum of the digits = "
    printn
    call print_num
    ret

sum dw 0
define_scan_num
define_print_num
define_print_num_uns