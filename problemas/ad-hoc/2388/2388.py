n = int(input())

resposta = 0
for _ in range(n):
    v, t = [int(x) for x in input().strip().split(' ')]
    resposta += v * t

print(resposta)