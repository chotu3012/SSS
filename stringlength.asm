;string length
include 'emu8086.inc'
mov si,0
mov ax,0

l:
  cmp str[si],'$'
  je return
  jne goto
  
goto:
  inc ax
  inc si
  jmp l


 
  
return:
 call print_num  
 hlt
 
 
str dw "$"
define_print_num
define_print_num_uns                                                                                                                      