N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')

    print('encaixa' if A.endswith(B) else 'nao encaixa')
