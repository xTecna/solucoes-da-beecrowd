N = int(input())

for _ in range(N):
    A, B = [int(x) for x in input().strip().split(' ')]

    encaixa = True
    while(A > 0 and B > 0):
        if(A % 10 != B % 10):
            encaixa = False
            break

        A //= 10
        B //= 10
    
    if(B > 0):
        encaixa = False
    
    if(encaixa):
        print('encaixa')
    else:
        print('nao encaixa')