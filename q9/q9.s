.global find
# %rdi = arr, %rsi= n
find:
    movq $0, %r15
    movq $1, %rcx

outerLoop:
    cmpq %rcx, %rsi
    je endOuterLoop
    movq $0, %r15
    movq $0, %r8
innerLoop:
    cmpq %r8, %rsi
    je endInner
    cmpq (%rdi,%r8,8), %rcx
    jne nextInner
    movq $1, %r15
    jmp nextOuter
nextInner:
    incq %r8
    jmp innerLoop
endInner:
    cmpq $0, %r15
    je endOuterLoop
nextOuter:
    incq %rcx
    jmp outerLoop
endOuterLoop:
    movq %rcx, %rax
    ret
    