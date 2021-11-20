N, K = [int(x) for x in input().split(' ')]
alunos = [input() for _ in range(N)]

alunos.sort()

print(alunos[K - 1])
