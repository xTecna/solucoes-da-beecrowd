while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        if(not M and not N):
            break

        soma = str(M + N)
        resposta = soma.replace('0', '')

        print(resposta)
    except EOFError:
        break
