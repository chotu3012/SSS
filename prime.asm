;to check given number is prime or not
include 'emu8086.inc'

print "enter a number to check prime or not : "
call scan_num  
printn
mov ax,cx
mov temp,ax
mov c,0
mov count,2

check:
    mov ax,temp
    mov dx,0
    div cx
    cmp dx,0
    je result
    dec cx
    cmp cx,0
    je output
    jmp check
    
result:
    inc c 
    dec cx
    cmp cx,0
    je output
    jmp check
  
output:
    mov bx,c
    cmp bx,count
    je return
    print "not a prime: "
    hlt
    
return:
    print "prime number : "
    hlt
    
temp dw 0
c dw 0
count dw 0
define_print_num
define_print_num_uns
define_scan_num