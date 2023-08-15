;lcm of two numbers
include 'emu8086.inc'
printn
print "enter first number :"
call scan_num
mov ax,cx
 
printn
print "enter second number : " 

call scan_num
mov bx,cx 

mov cx,1 
mov temp1,ax

check:
  mov ax,temp1
  mul cx
  mov temp2,ax
  mov dx,0

  div bx 
  cmp dx,0
  je result
  inc cx
  jmp check
  
 result:
  mov ax,temp2 
  printn
  call print_num
  hlt
  
temp1 dw 0
temp2 dw 0

define_print_num
define_print_num_uns
define_scan_num

