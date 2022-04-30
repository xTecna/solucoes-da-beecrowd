pesos = [2, 3, 5]
N = int(input())

for _ in range(N):
    notas = [float(x) for x in input().strip().split(' ')]

    media = sum([notas[x] * pesos[x] for x in range(3)])
    print(f'{media/10:.1f}')
