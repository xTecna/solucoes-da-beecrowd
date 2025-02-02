N = int(input())
figurinhas = set()

M = int(input())
for _ in range(M):
    X = int(input())
    figurinhas.add(X)

print(N - len(figurinhas))
