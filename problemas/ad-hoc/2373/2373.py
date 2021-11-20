N = int(input())

resposta = 0
for _ in range(N):
    L, C = [int(x) for x in input().split(' ')]

    if(L > C):
        resposta += C

print(resposta)
