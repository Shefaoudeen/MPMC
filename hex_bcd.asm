; multi-segment executable file template.

data segment
    ; add your data here!
 
    number db 1
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:  
    mov bx, 0000h
    mov dh, 00h  
    mov ax, 100h
 
 

    ; add your code here
    
    jmp check1
    
    check1:  cmp   ax, 10000
             jl  check2
             jmp step5 
    step5:
        sub ax,10000 
        add dh,1  
        jmp check1
                 
               
    check2: cmp    ax , 1000          
            jl check3
            jmp step8
                         
    step8:
        sub ax,1000 
        add bx,1000h
        jmp check2
                                    
            
    check3: cmp    ax, 100
            jl  check4
            jmp step11
                         
    step11:
        sub ax,100 
        add bx,100h
        jmp check3
                             
                         
    check4: cmp ax, 10
            jl final
            jmp step14
                       
    
    step14:
        sub ax,10 
        add bx,10h
        jmp check4
     
     
     final:
          add bx,ax             
  
 end