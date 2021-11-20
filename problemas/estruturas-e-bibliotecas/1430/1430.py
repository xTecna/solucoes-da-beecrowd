duracaoNota = {'W': 1.0, 'H': 0.5, 'Q': 0.25, 'E': 0.125,
               'S': 0.0625, 'T': 0.03125, 'X': 0.015625}

while True:
    try:
        compasso = input()

        if(compasso == '*'):
            break

        compassos = compasso.strip().split('/')[1:-1]

        resposta = 0
        for c in compassos:
            duracao = 0.0
            for nota in c:
                duracao += duracaoNota[nota]
            if(duracao == 1.0):
                resposta += 1

        print(resposta)
    except EOFError:
        break
