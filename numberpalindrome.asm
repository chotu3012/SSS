;palindrome or not
include 'emu8086.inc'
call scan_num
mov ax,cx
mov d,10
mov bx,0

check:
  mov dx,0
  div d 
  mov temp2,dx
  mov temp,ax
  mov ax,bx
  mul d
  add ax,temp2
  mov bx,ax
  mov ax,temp
  cmp ax,0
  je result
  jmp check
  
result:
  cmp bx,cx
  je below
  print "not a palindrome : " 
  hlt

below:
  print "palindrome : "
  hlt
  
d dw 0
temp dw 0
temp2 dw 0
define_scan_num
define_print_num
define_print_num_uns