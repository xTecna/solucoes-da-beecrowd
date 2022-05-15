NMAX = 10001
C = [False for _ in range(NMAX)]
primos = []


def Crivo():
    C[2] = True
    primos.append(2)
    for i in range(3, NMAX, 2):
        C[i] = True

    for i in range(3, NMAX, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, NMAX, 2 * i):
                C[j] = False


def potencia(base, expoente):
    if(expoente == 0):
        return 1
    elif(expoente % 2 == 1):
        return base * potencia(base, expoente - 1)
    else:
        pot = potencia(base, expoente//2)
        return pot * pot


def sumDiv(N):
    i_primos = 0
    primo = primos[i_primos]
    resposta = 1

    while(primo * primo <= N):
        pot = 0

        while(N % primo == 0):
            N /= primo
            pot += 1

        resposta *= (potencia(primo, pot + 1) - 1)//(primo - 1)
        i_primos += 1
        primo = primos[i_primos]

    if(N != 1):
        resposta *= (potencia(N, 2) - 1)//(N - 1)

    return resposta


Crivo()

N = int(input())
for _ in range(N):
    X = int(input())

    if(X == sumDiv(X) - X):
        print(f'{X} eh perfeito')
    else:
        print(f'{X} nao eh perfeito')
