.global maxSum

maxSum:
    movq $0, %rax
    movq $0, %rcx
loop1:
    cmpq %rcx, %rdx
    je endloop1
    addq (%rdi, %rcx, 8), %rax
next1:
    incq %rcx
    jmp loop1
endloop1:
    movq %rax, %rbx
    movq $0, %rcx
    movq %rsi, %r15
    decq %r15
    movq %rdx, %r14
    decq %r14
loop2:
    cmpq %rcx, %rdx
    je endloop2
    addq (%rdi, %r15,8), %rbx
    subq (%rdi, %r14, 8), %rbx
    cmpq %rbx, %rax
    jge next2
    movq %rbx, %rax
next2:
    incq %rcx
    decq %r15
    decq %r14
    jmp loop2
endloop2:
    ret

