;decending order
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
  
mov dx,temp
mov k,0


m:
  cmp k,dx
  je total
  mov bl,-1 
  mov si,0
  
l: 
  cmp si,temp
  je output
  cmp arr[si],bl
  jg down
  inc si 
  jmp l
  
down:
   mov bl,arr[si] 
   mov bp,si
   inc si
   jmp l

output:
   printn
   mov al,bl
   call print_num
   mov arr[bp],-1 
   inc k
   jmp m
   
total:
  ret
  
  
temp dw 0
k dw 0 
arr db ?
define_scan_num
define_print_num
define_print_num_uns
