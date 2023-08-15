;primenumbers between two numbers
include "emu8086.inc"
print "first number : "
call scan_num
mov first,cx
printn
print "second number : "
call scan_num
mov second,cx

mov cx,first

check:
  
  cmp cx,second
  ja result 
  mov count,2
  mov c,0 
  mov ax,cx
  mov bx,cx
operation:
  mov ax,cx
  mov dx,0
  div bx
  cmp dx,0
  je output
  dec bx
  cmp bx,0
  je t
  jne operation   
  
t:
  mov bx,c
  cmp bx,count
  je x 
  inc cx
  jmp check
    
    
x: 
  printn
  mov ax,cx
  call print_num
  printn
  inc cx
  jmp check
output:
  inc c
  dec bx
  cmp bx,0
  je t
  jne operation
                    
result:
  hlt

c dw 0
first dw 0
second dw 0
count dw 0
define_scan_num
define_print_num
define_print_num_uns  