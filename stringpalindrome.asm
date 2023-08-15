;to check stirng is palindrome or not
include 'emu8086.inc'

mov si,0
mov bp,0

length:
  cmp str[si],'$'
  je goto
  inc si
  inc bp
  jmp length
 
goto: 
mov si,0
dec bp 
jmp check

check:
  mov al,str[si]
  cmp al,str[bp]
  jne return
  inc si
  dec bp
  cmp si,bp
  je result
  jg result
  jmp check
  
  
 return:
  print "Not a palindrome: "
  hlt
  
 result:
 print "palindrome"
 hlt
 
 str db "aaaab$"
 define_print_num
 define_print_num_uns
  