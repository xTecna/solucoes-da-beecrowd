while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]
        if(not N and not M):
            break

        bilhetes = [int(x) for x in input().strip().split(' ')]

        resposta = 0
        contador = [0 for i in range(N + 1)]

        for bilhete in bilhetes:
            contador[bilhete] += 1
            if(contador[bilhete] == 2):
                resposta += 1

        print(resposta)
    except EOFError:
        break
