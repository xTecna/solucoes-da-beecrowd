N = int(input())
ovelhas = [int(x) for x in input().strip().split(' ')]

i = 0
estrelas = 0
visitados = set()
naoRoubados = sum(ovelhas)
while(-1 < i < N):
    if(not i in visitados):
        visitados.add(i)
        estrelas += 1

    antes = ovelhas[i]
    if(ovelhas[i] > 0):
        ovelhas[i] -= 1
        naoRoubados -= 1

    if(antes % 2):
        i += 1
    else:
        i -= 1

print(f'{estrelas} {naoRoubados}')
