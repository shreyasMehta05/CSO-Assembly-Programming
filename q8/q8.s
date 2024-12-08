.global waveSort
# %rdi - arr %rsi - n
waveSort:
    movq $0, %rcx
outerLoop:
    cmpq %rcx,%rsi
    je endOuterLoop
    movq %rcx, %r8
innerLoop:
    cmpq %r8, %rsi
    je nextOuter
    movq (%rdi,%rcx,8), %r9
    cmpq (%rdi,%r8,8), %r9
    jle nextInner
    # swap 
    movq (%rdi,%r8,8), %r10
    movq %r10, (%rdi,%rcx,8)
    movq %r9, (%rdi,%r8,8)

nextInner:
    incq %r8
    jmp innerLoop
nextOuter:
    incq %rcx
    jmp outerLoop
endOuterLoop:

    movq $0, %rcx
    decq %rsi
lastloop:
    cmpq %rcx, %rsi
    jle endLastLoop    
    movq (%rdi,%rcx,8), %r9
    movq 8(%rdi,%rcx,8),%r10
    movq %r10, (%rdi,%rcx,8)
    movq %r9, 8(%rdi,%rcx,8)
nextLoop:
    incq %rcx
    incq %rcx
    jmp lastloop
endLastLoop:
ret
