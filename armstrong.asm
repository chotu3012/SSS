;to check given number is armstrong or not
include 'emu8086.inc'
print "enter a number to check armstrong or not : "
call scan_num
mov ax,cx 
mov temp,cx
mov bx,10
mov q,ax
mov cx,0
mov sum,0

length: 
   mov dx,0
   div bx
   inc cx
   cmp ax,0
   je k
   jmp length
   
k:  
  printn
  mov n,cx
  mov ax,cx
  call print_num
  printn
  
cal: 
   mov ax,q
   mov dx,0
   mov cx,1
   div bx
   mov q,ax 
   mov ax,dx
   mov r,dx
reminder:
   cmp cx,n
   je total
   mul r
   inc cx 
   jmp reminder
   
   
   total:
  
   mov rem,ax
   mov ax,sum
   add ax,rem
   mov sum,ax
   
   mov ax,q
   cmp ax,0
   je result
   jmp cal
   
   
result:
  mov ax,sum
  cmp ax,temp
  jne output
  printn
  print "armstrong number "
  hlt
  
output:
  printn
  print "not a armstrong number "
  
  
   
   
 
q dw 0
rem dw 0
temp dw 0
n dw 0 
sum dw 0
r dw 0
define_scan_num
define_print_num
define_print_num_uns
   