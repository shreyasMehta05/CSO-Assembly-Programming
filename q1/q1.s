.global calculator
# %rdi = m, %rsi = n,%rdx =s


calculator:
    cmpq $1, %rdx
    je add
    cmpq $2, %rdx
    je sub
    cmpq $3, %rdx
    je div
    cmpq $4, %rdx
    je power
    cmpq $5, %rdx
    je mod

add:
    movq %rsi, %rax
    addq %rdi, %rax
    ret
sub:
    movq %rdi, %rax
    subq %rsi, %rax
    ret
div:
    cmpq $0, %rsi
    je zero
    movq %rdi, %rax
    cqto
    idivq %rsi
    ret
zero:
    movq $0,%rax
    ret
power:
    movq $1, %rax
    movq $0, %rcx
loop:
    # compare
    cmpq %rcx, %rsi
    je endloop
    # function
    imulq %rdi, %rax
    # next
next:
    incq %rcx
    jmp loop
endloop:
    ret

mod:
    movq %rdi, %rax
    cqto
    idivq %rsi
    movq %rdx,%rax
    cmpq $0, %rax
    jl negative
    ret
negative:
    addq %rsi, %rax
    ret
