while True:
    try:
        N = int(input())

        if(not N):
            break

        amostras = [int(x) for x in input().strip().split(' ')]

        picos = 0
        for i in range(len(amostras)):
            anterior = amostras[((i - 1) + N) % N]
            proximo = amostras[(i + 1) % N]

            if((amostras[i] < anterior and amostras[i] < proximo) or (amostras[i] > anterior and amostras[i] > proximo)):
                picos += 1

        print(picos)
    except EOFError:
        break
