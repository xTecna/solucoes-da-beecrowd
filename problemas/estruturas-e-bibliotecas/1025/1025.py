def pesquisaBinaria(V, valor):
    inicio, fim = 0, len(V)

    while(inicio < fim):
        meio = (inicio + fim)//2

        if(V[meio] < valor):
            inicio = meio + 1
        else:
            fim = meio

    if(inicio >= len(V)):
        return -1

    return inicio + 1 if V[inicio] == valor else -1


T = 1
while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and Q == 0):
            break

        marmores = []
        for _ in range(N):
            marmores.append(int(input()))
        marmores.sort()

        print(f'CASE# {T}:')
        T += 1
        for _ in range(Q):
            consulta = int(input())

            resposta = pesquisaBinaria(marmores, consulta)
            if(resposta == -1):
                print(f'{consulta} not found')
            else:
                print(f'{consulta} found at {resposta}')
    except EOFError:
        break
