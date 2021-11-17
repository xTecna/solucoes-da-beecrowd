A, B = [int(x) for x in input().split(' ')]

if(A < B):
    A, B = B, A

print("Nao sao Multiplos" if (A % B) else "Sao Multiplos")
