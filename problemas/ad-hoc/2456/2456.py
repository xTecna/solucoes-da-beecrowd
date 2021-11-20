cartas = [int(x) for x in input().strip().split(' ')]

crescente, decrescente = True, True
for i in range(4):
    if cartas[i] <= cartas[i + 1]:
        decrescente = False
    elif cartas[i] >= cartas[i + 1]:
        crescente = False

print('C' if crescente else 'D' if decrescente else 'N')
