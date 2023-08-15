;fibinocci series upto a given number
include 'emu8086.inc'
print "enter number : "
call scan_num 
printn
mov bx,cx

mov dx,0
mov ax,0
call print_num
print "  "
mov ax,1
call print_num
print " "

mov cx,2

result:
  cmp cx,bx
  je return
  mov temp,ax
  add ax,dx
  inc cx
  call print_num
  print " "
  mov dx,temp
  jmp result
  
return:
    hlt  
    
    
temp dw 0

define_scan_num
define_print_num
define_print_num_uns
  