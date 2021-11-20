while True:
    try:
        N, K = [int(x) for x in input().strip().split(' ')]
        perguntas = [int(x) for x in input().strip().split(' ')]

        resposta = 0
        frequencias = [0 for _ in range(N + 1)]

        for pergunta in perguntas:
            frequencias[pergunta] += 1
            if(frequencias[pergunta] == K):
                resposta += 1
        
        print(resposta)
    except EOFError:
        break
