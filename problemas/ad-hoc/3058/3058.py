N = int(input())

preco_por_grama = 1000.0
for _ in range(N):
    P, G = input().strip().split(' ')
    P = float(P)
    G = int(G)

    preco_por_grama = min(preco_por_grama, P/G)

print(f'{preco_por_grama * 1000:.2f}')