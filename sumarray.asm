;sum of elements of in array
include 'emu8086.inc'
print "enter array size : "
call scan_num
mov bx,cx
mov sum,0
mov si,0
printn
print "enter array elements : "
input:
  cmp si,bx
  je below 
  printn
  call scan_num
  mov arr[si],cl
  inc si
  jmp input
  
below:
   mov si,0
   
program:
   cmp si,bx
   je output
   mov al,sum
   add al,arr[si]
   mov sum,al
   inc si
   jmp program
   
   
output:
   mov al,sum  
   printn
   call print_num
   ret
   
sum db 0
arr db ?

define_scan_num
define_print_num
define_print_num_uns
   
  