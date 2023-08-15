;sqare root of a number
include 'emu8086.inc'
print "enter a number : "
call scan_num
mov ax,cx
mov n,ax

mov bx,1

check:
  cmp bx,n
  je output
  mov ax,bx
  mul bx
 
  cmp ax,n
  je result 
  inc bx
  jmp check
  
result:
 printn 
 print "perfect square number : "
 mov ax,bx
 call print_num  
 hlt

output:
  printn
  print "not a perfect square number : "
  hlt
  
n dw 0
define_scan_num
define_print_num
define_print_num_uns 