while True:
    try:
        A, C = [int(x) for x in input().strip().split(' ')]
        blocos = [int(x) for x in input().strip().split(' ')]

        resposta = 0
        for i in range(1, C):
            if(blocos[i] > blocos[i - 1]):
                resposta += blocos[i] - blocos[i - 1]
        resposta += A - blocos[C - 1]

        print(resposta)
    except EOFError:
        break
