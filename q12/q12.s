.global check

check:
    movq $1, (%rdi)
    movq $1, %rcx
loop:
    cmpq $10, %rcx
    je endLoop
    movq %rcx, %r8
    imulq -8(%rdi, %rcx, 8), %r8
    movq %r8, (%rdi, %rcx, 8) 
next:
    incq %rcx
    jmp loop
endLoop:
    cmpq $0, %rsi
    je return0
    movq $0, %rbx
    movq %rsi, %rax
    movq $10,%r8
while:
    cmpq $0, %rax
    je endWhile
    cqto
    idivq %r8
    addq (%rdi,%rdx,8), %rbx
    jmp while
endWhile:
    cmpq %rbx, %rsi
    jne return0
    movq $1, %rax
    ret

return0:
    movq $0, %rax
    ret
