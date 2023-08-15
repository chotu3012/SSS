;gcd of two numbers
include 'emu8086.inc'

print "enter first number :"
call scan_num
mov ax,cx

printn
print "enter second number:"
call scan_num
mov bx,cx

printn

cmp ax,bx
jl goto
mov temp,ax
mov ax,bx
mov bx,temp
jmp goto

goto:
  mov temp1,ax
  mov i,ax 
  mov temp2,bx
  jmp check
  
check:
    mov ax,temp1
    mov dx,0
    div i
    cmp dx,0
    je t
    dec i
    jmp check
    
t:
  mov ax,temp2
  mov dx,0
  div i
  cmp dx,0
  je total
  dec i
  jmp check
  
  
total:
mov ax,i
printn
call print_num
 
i dw 0
temp dw 0
temp1 dw 0
temp2 dw 0

define_scan_num
define_print_num
define_print_num_uns
    
    
    