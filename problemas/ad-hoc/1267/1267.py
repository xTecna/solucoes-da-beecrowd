while True:
    try:
        N, D = [int(x) for x in input().strip().split(' ')]

        if(not N and not D):
            break

        jantares = [0 for _ in range(N)]
        for i in range(D):
            participantes = [int(x) for x in input().strip().split(' ')]

            for j in range(N):
                jantares[j] += participantes[j]
        
        resposta = False
        for i in range(N):
            if(jantares[i] == D):
                resposta = True
                break
        
        print('yes' if resposta else 'no')
    except EOFError:
        break
