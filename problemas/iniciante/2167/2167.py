resposta = 0
N = int(input())
R = [int(x) for x in input().strip().split(' ')]
for i in range(1, N):
    if(R[i] < R[i - 1]):
        resposta = i + 1
        break

print(resposta)
