while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        if(M == 0 and N == 0):
            break

        soma = str(M + N)
        resposta = soma.replace('0', '')

        print(resposta)
    except EOFError:
        break