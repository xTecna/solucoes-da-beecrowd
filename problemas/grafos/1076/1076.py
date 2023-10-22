N = int(input())

for _ in range(N):
    N = int(input())

    n, m = [int(x) for x in input().strip().split(' ')]

    arestas = set()
    for _ in range(m):
        u, v = [int(x) for x in input().strip().split(' ')]

        arestas.add((u, v))
        arestas.add((v, u))

    print(len(arestas))