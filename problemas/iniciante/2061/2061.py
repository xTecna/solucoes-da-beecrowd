N, M = [int(x) for x in input().strip().split(' ')]
for _ in range(M):
    acao = input()

    if(acao == "fechou"):
        N += 1
    else:
        N -= 1

print(N)
