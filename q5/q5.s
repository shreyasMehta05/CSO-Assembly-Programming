.global function
# %rdi = arr, %rsi = n

function:
    movq $0, %rcx
    movq $0, %r8
loop1:  
# compare
    cmpq %rcx, %rsi
    je endloop1
    cmpq $0, (%rdi,%rcx,8)
    jne next1
    incq %r8
next1:
    incq %rcx
    jmp loop1
endloop1:
    decq %r8
    movq $0, %rcx
loop2:
    cmpq %rcx, %rsi
    je endloop2
    # %rcx <= %r8 insert 0
    cmpq %rcx, %r8
    jge insertZero
    movq $1, (%rdi,%rcx,8)
next2:
    incq %rcx
    jmp loop2
endloop2:
    ret
insertZero:
    movq $0, (%rdi,%rcx,8)
    jmp next2
