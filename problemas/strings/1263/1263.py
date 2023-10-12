while True:
    try:
        palavras = [x for x in input().lower().strip().split(' ')]

        aliteracoes = 0

        tamanhoAliteracao = 1
        letraAtual = palavras[0][0]
        for palavra in palavras[1:]:
            if(palavra[0] != letraAtual):
                if(tamanhoAliteracao > 1):
                    aliteracoes += 1
                letraAtual = palavra[0]
                tamanhoAliteracao = 1
            else:
                tamanhoAliteracao += 1
        if tamanhoAliteracao > 1:
            aliteracoes += 1
        
        print(aliteracoes)
    except EOFError:
        break