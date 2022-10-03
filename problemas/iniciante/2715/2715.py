while True:
    try:
        N = int(input())

        somas = []
        while len(somas) < N:
            numeros = [int(x) for x in input().strip().split(' ')]
            somas.extend(numeros)

        for i in range(1, N):
            somas[i] += somas[i - 1]

        inicio, fim, resposta = 0, N, somas[N - 1]
        while(inicio < fim):
            meio = (inicio + fim)//2

            rangel = somas[meio]
            gugu = somas[N - 1] - rangel
            resposta = min(resposta, abs(rangel - gugu))

            if(rangel == gugu):
                break
            elif(rangel < gugu):
                meio = inicio + 1
            else:
                meio = fim

        print(resposta)
    except EOFError:
        break
