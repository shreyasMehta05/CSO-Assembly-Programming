.global cal

# %rdi == arr , %rsi == n
cal:
    movq $0, %rcx
    movq $1, %r8
loop:
    cmpq %rcx, %rsi
    je endloop

    movq %r8, %rax
    cqto
    movq $3, %rbx
    idivq %rbx
    cmpq $0, %rdx
    je by3
    movq %r8, %rax
    cqto
    movq $5, %rbx
    idivq %rbx
    cmpq $0, %rdx
    je by5
    movq %r8,(%rdi,%rcx,8)
next:
    incq %rcx
    incq %r8
    jmp loop
endloop:
    ret

by3:
    movq %r8, %rax
    cqto
    movq $5, %rbx
    idivq %rbx
    cmpq $0, %rdx
    je by15
    movq $-1,(%rdi,%rcx,8)
    jmp next
by15:
    movq $-3,(%rdi,%rcx,8)
    jmp next

by5:
    movq $-2,(%rdi,%rcx,8)
    jmp next
