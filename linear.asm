include 'emu8086.inc'
mov si,0
print "enter array size :"
printn
call scan_num
mov bx,cx
printn
print "enter numbers"
printn

x:
  call scan_num
  printn
  mov arr[si],cl
  inc si
  cmp si,bx
  jne x
  mov si,0
  
printn
print "enter the search element "
call scan_num
mov al,cl
y:
  cmp si,bx
  je nf
  cmp arr[si],al
  je f
  inc si
  jmp y
  
 
f:
  printn
  print "found"
  ret
nf:
 printn
 print "not found"
 ret
 
 arr db ?,?,?,?,?,?
 define_scan_num
 define_print_num
 define_print_num_uns