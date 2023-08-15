;to check perfect number of not 
include 'emu8086.inc'
print "enter a number : "
call scan_num
mov ax,cx
mov temp,ax
sub ax,1
mov cx,ax
mov bx,0

check:
  
  mov ax,temp
  mov dx,0
  div cx
  cmp dx,0
  je output
  dec cx
  cmp cx,0
  je result
  jmp check
  
output:
   add bx,cx
   dec cx
   cmp cx,0
   je result
   jne check
   
result:
   cmp bx,temp
   je k
   printn
   print "not a perfect number : "
   hlt
k: 
   printn
   print "perfect number "
   hlt
   
temp dw 0
define_scan_num
define_print_num
define_print_num_uns
  
  