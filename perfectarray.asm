;perfect number in array
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
  
method:
  cmp si,n
  je result
  mov al,arr[si]
  mov q,al
  mov sum,0 
  mov bl,al 
  dec bl
  
p:
   mov al,q
   cmp bl,0
   je x
   mov ah,0
   div bl
   cmp ah,0
   je count
   dec bl
   jmp p
   
count:
  mov al,sum
  add al,bl
  mov sum,al
  dec bl
  jmp p
  
x:
  mov al,sum
  cmp al,q
  je output
  inc si
  jmp method
  
output:
  printn 
  mov al,q
  call print_num
  inc si
  jmp method
  
result:
  ret
  
  
n dw 0
sum db 0
q db 0
arr db ?
define_scan_num
define_print_num
define_print_num_uns 