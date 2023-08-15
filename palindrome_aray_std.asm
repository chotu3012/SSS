include 'emu8086.inc'
mov si,0
print "enter array size : "
printn

call scan_num
mov bx,cx
printn
print "enter array elements : "
printn
input:
     call scan_num
     printn
    
     mov arr[si],cl
     inc si
     cmp si,bx
     jne input    
     mov si,0 
     print "palindrome numbers in array are "
     printn
     
x:       
    cmp si,bx
    je return
    mov al,arr[si]
    mov dl,10
    mov rev,0
    y:
        cmp al,0
        je check
        mov ah,0
        div dl  
        mov t,al
        mov t2,ah
        mov al,rev
        mul dl 
        mov ah,t2
        add al,ah
        mov rev,al
        mov al,t 
        jmp y
     check:
        mov al,arr[si]
        cmp al,rev
        je prnt
        inc si
        jmp x
      prnt: 
      mov ah,0
      mov al,arr[si]
        call print_num
       printn
        inc si
        jmp x 
        
        
return:
    ret
        
        
 

t2 db 0
t db 0
rev db 0
arr db ?,?,?,?,?
define_scan_num
define_print_num
define_print_num_uns