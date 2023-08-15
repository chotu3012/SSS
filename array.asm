;array user input
include 'emu8086.inc'
print "enter array size : "
call scan_num 
printn
mov temp,cx

mov si,0

check:
  printn
  print "enter element : "
  call scan_num
  mov arr [si],cl
  inc si
  cmp si,temp
  jne check
  mov si,0 

printn  
print "array elements : "
result: 
   printn
   mov al,arr [si]
   call print_num 
   print " "
   inc si
   cmp si,temp
   jne result
   
   
mov bl,199
mov si,0

min:
   cmp si,temp
   je x
   cmp bl,arr [si]
   ja down
   inc si
   jmp min
   
down:
   mov bl,arr[si]
   inc si
   jmp min
   
x:
 printn
 mov al,bl
 print "mininum element : "
 call print_num 
 
 
mov bl,-1
mov si,0

max:
   cmp si,temp
   je y
   cmp arr[si],bl
   jg below
   inc si
   jmp max
  
below:
   mov bl,arr[si]
   inc si
   jmp max
  
y:
  printn
  mov al,bl
  print "maximum element : "
  call print_num
  hlt
   
 
  
temp dw 0
arr db ?
define_scan_num
define_print_num
define_print_num_uns
   