Q = int(input())
votos = [int(x) for x in input().strip().split(' ')]

satisfatorio = Q - sum(votos)

print('Y' if satisfatorio > Q/2 else 'N')
