;even or odd

include 'emu8086.inc'
print "enter a number : "
call scan_num 
printn
mov ax,cx
mov bx,2

check:
  mov dx,0
  div bx
  cmp dx,0
  je return 
  print "odd number "
  hlt
  
return:
  print "even number "
  hlt
  
define_scan_num
define_print_num
define_print_num_uns
