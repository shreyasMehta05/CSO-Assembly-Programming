.global fun

# %rdi  = n
fun:
    movq $0, %rax

loop:
    # n == 0 break
    cmpq $0, %rdi
    je endloop
    movq $1, %rbx
    andq %rdi, %rbx
    cmpq $0, %rbx
    je next
    incq %rax
next:
    shrq %rdi
    jmp loop
endloop:
    movq $1, %rbx
    andq %rax, %rbx
    cmpq $0, %rbx
    je zero
    movq $1, %rax
    ret
zero:
    movq $0, %rax
    ret
