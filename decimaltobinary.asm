;conversion of decimal to binary
include 'emu8086.inc'
print "enter a number : "
call scan_num
mov ax,cx
mov cx,0
mov q,ax
mov d,2
mov r,0 
mov i,1
mov bx,10


check:
  mov ax,q
  mov dx,0
  div d
  mov q,ax   
  mov ax,dx
  mul i
  add cx,ax
  mov ax,i
  mul bx 
  mov i,ax
  cmp q,0 
  je result
  jmp check
  
result:
  printn
  mov ax,cx
  call print_num

q dw 0
d dw 0
r dw 0
i dw 0
sum dw 0
define_scan_num
define_print_num
define_print_num_uns
  
  
  
  
  
