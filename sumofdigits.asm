;sum of digits in a number
include 'emu8086.inc'
print "enter a number "
call scan_num
mov ax,cx
mov bx,0
mov d,10

check:
  mov dx,0
  div d
  add bx,dx
  cmp ax,0
  je result
  jmp check
  
result:
  mov ax,bx 
  printn
  print "sum of digits in a number : "
  printn
  call print_num
  hlt  
  
d dw 0
define_scan_num
define_print_num
define_print_num_uns