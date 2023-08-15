;factorial of first five numbers
include 'emu8086.inc'
print "enter array size " 
call scan_num
mov n,cx

mov si,0

print "enter array elements : " 

input:
   cmp si,n
   je check 
   printn
   call scan_num
   mov arr[si],cl
   inc si
   jmp input
   
check:
  mov si,0
  
x:
   cmp si,n
   je result
   mov bl,arr[si]
   mov al,1
   
f:
   cmp bl,0
   je down
   mul bl
   dec bl
   jmp f
   
down:
   printn
   call print_num 
   mov al,0
   inc si
   jmp x
  
result:
   ret
   
n dw 0
arr db ?
define_scan_num
define_print_num
define_print_num_uns
    