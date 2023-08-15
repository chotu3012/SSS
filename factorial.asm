;factorial number
include 'emu8086.inc'
print 'enter a number : '
call scan_num
mov ax,cx
cmp ax,0
je output
jne goto
output:
  mov ax,1
  call print_num
  hlt
goto:  
sub cx,1
jmp fact
fact:
   mul cx
   dec cx
   cmp cx,0
   je result
   jmp fact
   
result: 
   printn
   call print_num 
   hlt
   
define_scan_num
define_print_num
define_print_num_uns