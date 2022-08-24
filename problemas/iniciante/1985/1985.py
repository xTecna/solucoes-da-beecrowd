precos = [1.5, 2.5, 3.5, 4.5, 5.5]
N = int(input())

total = 0.0
for _ in range(N):
    codigo, qtd = [int(x) for x in input().strip().split(' ')]

    total += qtd * precos[codigo - 1001]

print(f'{total:.2f}')
