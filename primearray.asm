;prime in array
include 'emu8086.inc'
print "enter array size " 
call scan_num
mov n,cx

mov si,0 

printn
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
  
t:
   cmp si,n
   je result
   mov al,arr[si]
   mov c,0
   mov count,2 
   mov bl,al
   mov q,al
   
x:   
   mov al,q
   cmp bl,0
   je prime 
   mov ah,0
   div bl
   cmp ah,0
   je flag
   dec bl
   jmp x
   
flag:
   inc c
   dec bl
   jmp x
   
prime:
   mov cx,c
   cmp cx,count
   je output
   inc si
   jmp t
   
output:
 printn  
 mov f,1
 call print_num
 inc si 
 jmp t
 
result:
   mov al,1
   cmp al,f
   jne oops 
   
   
oops:
  print "no prime numbers "  
  ret
   
n dw 0
c dw 0
q db 0 
f db 1
count dw 0
arr db ?
define_scan_num
define_print_num
define_print_num_uns
   
   