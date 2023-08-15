;square and cube of a number
include "emu8086.inc"
print "enter a number "
call scan_num
mov ax,cx
mov bx,ax

square:
  mul ax
  printn
  call print_num
  printn
  mul bx
  call print_num                                                            
  
define_scan_num
define_print_num
define_print_num_uns