T = int(input())

for _ in range(T):
    N = int(input())

    resposta = len(set(input().strip().split(' ')))

    print(resposta)
