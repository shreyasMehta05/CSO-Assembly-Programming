.global gcd
# %rdi ==  m and %rsi == n
gcd:
    cmpq $0, %rdi
    je bases
    cmpq $0, %rsi
    je based
    cmpq %rsi,%rdi
    jg mGreat
nGreat:
    movq %rsi, %rax
    cqto
    idivq %rdi
    movq %rdx, %rsi
    call gcd
    ret
mGreat:
    movq %rdi, %rax
    cqto
    idivq %rsi
    movq %rdx, %rdi
    call gcd
    ret
bases:
    movq %rsi,%rax
    ret
based:
    movq %rdi, %rax
    ret
    