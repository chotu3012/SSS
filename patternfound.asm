;to check substring 
include 'emu8086.inc'

mov si,0
mov bp,0

start:
 cmp main[si],'$'
 je end
 cmp pat[bp],'$'
 je result
  
 mov al,main[si]
 cmp al,pat[bp]
 je check
 inc si
 mov bp,0
 jmp start
 
check:
  inc si
  inc bp
  jmp start
  
result:
 printn
 print "match found"
 hlt
 
end:
 cmp pat[bp],'$'
 je result
 print "match not found"
 hlt
 
 
main db "sdfjafkjefjsldfj$"
pat db "fjs$" 
define_print_num
define_print_num_uns
