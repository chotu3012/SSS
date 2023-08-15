include 'emu8086.inc'
mov bx,cx
mov size,cx
mov si,0

input:
        call scan_num
        mov arr[si],cl 
        inc si
        cmp si,bx
        jne k 
        
mov si,0 
mov dl,10

k:
    cmp si,bx 
    je return
    mov al,arr[si]
    mov sum,0
    

count:      
        cmp al,0
        je m
        mov ah,0  
        inc c
        div dl
        jmp count
        
;mov cl,c 
mov al,arr[si]

m:
    cmp al,0
    je l
    mov ah,0
    div dl 
    mov cl,c
    jmp l

l:
    
        
        
        
        
    
    
    
    
    
return:
        ret
    
 
     
c db 0        
arr db size dup(0)
define_print_num
define_print_num_uns
define_scan_num