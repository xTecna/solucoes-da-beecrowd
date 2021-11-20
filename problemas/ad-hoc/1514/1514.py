while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        if(not N and not M):
            break

        participantes = []
        for _ in range(N):
            participantes.append([int(x) for x in input().strip().split(' ')])

        problemas = [sum([x[i] for x in participantes]) for i in range(M)]
        participantes = [sum(x) for x in participantes]

        condicao1 = all([x < M for x in participantes])
        condicao2 = all([x > 0 for x in problemas])
        condicao3 = all([x < N for x in problemas])
        condicao4 = all([x > 0 for x in participantes])

        print(condicao1 + condicao2 + condicao3 + condicao4)
    except EOFError:
        break
