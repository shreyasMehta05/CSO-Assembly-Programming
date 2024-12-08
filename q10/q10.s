.global sort
# %rdi - arr, %rsi =n
sort:
    movq $0, %r14
    movq $0, %r15
    movq $0, %rcx
evenLoop:
    cmpq %rcx, %rsi
    je endEvenloop
    movq $1, %rbx
    andq (%rdi, %rcx, 8) , %rbx
    cmpq $1, %rcx
    je odd
    incq %r14
    jmp nextEven
odd:
    incq %r15
nextEven:
    incq %rcx
    jmp evenLoop
endEvenloop:
    cmpq $0, %r14
    je end
    cmpq $0, %r15
    je end
# bubble sort
movq $0, %rcx

outerLoop:
    cmpq %rcx, %rsi
    je endOuterLoop
    movq %rcx, %r8
innerLoop:
    cmpq %r8, %rsi
    je nextOuter
    movq (%rdi, %rcx, 8), %r9
    movq (%rdi , %r8, 8), %r10
    cmpq %r10, %r9
    jle nextInner
    movq %r10, (%rdi, %rcx, 8)
    movq %r9, (%rdi, %r8 ,8)
nextInner:
    incq %r8 
    jmp innerLoop
nextOuter: 
    incq %rcx
    jmp outerLoop
endOuterLoop:
end:
    ret
