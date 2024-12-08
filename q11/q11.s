.global topi
# %rdi = arr, %rsi = n, %rdx = ans
topi:
    movq $0, %rax
    movq $0, %rcx
loop1:
    cmpq %rcx, %rsi
    je endloop1
    cmpq $0, (%rdi, %rcx, 8)
    je zero
one:
    addq %rsi, %rax
    subq %rcx, %rax
    decq %rax
    jmp next1
zero:
    addq %rcx, %rax
next1:
    incq %rcx
    jmp loop1
endloop1:
    movq $0, %r8
    movq %rsi, %r9
    decq %r9
    movq $0, %rcx
while:
    cmpq %r9,%r8
    jge endWhile
    cmpq $0 , (%rdi, %r8, 8)
    je leftZero
    incq %r8
continue1:
    cmpq $1, (%rdi,%r9,8)
    je rightOne
    decq %r9
    jmp while
rightOne:
    movq %rax, (%rdx,%rcx,8)
    addq %r9,(%rdx,%rcx,8)
    addq %r9,(%rdx,%rcx,8)
    subq %rsi,(%rdx,%rcx,8)
    incq (%rdx,%rcx,8)
    movq (%rdx,%rcx,8), %rax
    incq %rcx
    decq %r9
    jmp while
leftZero:
    movq %rax, (%rdx,%rcx,8)
    addq %rsi, (%rdx,%rcx,8)
    subq %r8, (%rdx,%rcx,8)
    subq %r8, (%rdx,%rcx,8)
    decq (%rdx,%rcx,8)
    movq (%rdx, %rcx, 8), %rax
    incq %rcx
    incq %r8
    jmp continue1
endWhile:
    cmpq %rcx, %rsi
    je end
    movq %rax, (%rdx,%rcx,8)
    incq %rcx
    jmp endWhile
end:
    ret
