.global palindrome
# %rdi == n
palindrome:
    movq %rdi, %rax
    movq $0, %r15
    movq $10,%rbx
loop:
    cmpq $0, %rax
    je endloop

    imulq $10, %r15
    cqto
    idivq %rbx
    addq %rdx, %r15
next:
    jmp loop
endloop:
    cmpq %r15,%rdi
    jne return0
    movq $1, %rax
    ret
return0:
    ret
