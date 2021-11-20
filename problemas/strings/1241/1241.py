N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')

    if(len(B) > len(A)):
        print('nao encaixa')
    else:
        A = A[(len(A) - len(B)):]
        print('encaixa' if A == B else 'nao encaixa')
