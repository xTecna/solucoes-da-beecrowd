T = int(input())

for _ in range(T):
    D, I, B = [int(x) for x in input().strip().split(' ')]
    precos = [int(x) for x in input().strip().split(' ')]

    resposta = 0
    for _ in range(B):
        bolo = [int(x) for x in input().strip().split(' ')]
        bolo = bolo[1:]
        custo = sum([precos[bolo[i]] * bolo[i + 1]
                    for i in range(0, len(bolo), 2)])
        resposta = max(resposta, D//custo)

    print(resposta)
