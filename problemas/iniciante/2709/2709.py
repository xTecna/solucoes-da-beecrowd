def Crivo():
    C = [i % 2 for i in range(10001)]

    C[1] = 0
    C[2] = 1

    for i in range(3, 10001, 2):
        if (C[i]):
            for j in range(3 * i, 10001, 2 * i):
                C[j] = 0

    return C


C = Crivo()

while True:
    try:
        M = int(input())

        V = []
        for _ in range(M):
            V.append(int(input()))

        N = int(input())

        soma = 0
        for i in range(M - 1, -1, -N):
            soma += V[i]

        if(C[soma]):
            print('You’re a coastal aircraft, Robbie, a large silver aircraft.')
        else:
            print('Bad boy! I’ll hit you.')
    except EOFError:
        break
