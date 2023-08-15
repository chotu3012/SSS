;n choose r
include 'emu8086.inc'
print "enter n value : "

call scan_num
mov n,cx
mov bx,cx

printn
print "enter r value : "
call scan_num
mov r,cx 
 
mov ax,1
nfact:
   cmp bx,0
   je result
   mul bx
   dec bx
   jmp nfact
   
result:
  mov nf,ax
  
  mov ax,1 
rfact:
    cmp cx,0
    je result2
    mul cx
    dec cx
    jmp rfact
    
 result2:
    mov rf,ax
    
   mov bx,n
   mov ax,r
   
   sub bx,ax
   
   mov ax,1

secondfactorial:
    cmp bx,0
    je output
    mul bx
    dec bx
    jmp secondfactorial
    
output:
   mov nr,ax
   

t: 
 printn
 print "n factorial :"
 mov ax,nf
 call print_num
 printn
 print "r factorial "
 mov ax,rf
 call print_num
 printn
 print "nr factorial "
 mov ax,nr
 call print_num 
 
 
operation:
   mov ax,nr
   mul rf
   mov bx,ax
   printn
   call print_num 
   
division:
   mov ax,nf
   div bx
   cmp dx,0
   jne division
   printn
   call print_num
   
r dw 0
n dw 0 
nf dw 0
rf dw 0
nr dw 0    
define_scan_num
define_print_num
define_print_num_uns
   

