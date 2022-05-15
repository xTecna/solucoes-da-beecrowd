NMAX = 10000001
C = [False for _ in range(NMAX)]
primos = []


def Crivo():
    C[0] = False
    C[1] = False
    C[2] = True
    for i in range(4, NMAX, 2):
        C[i] = False
    for i in range(3, NMAX, 2):
        C[i] = True

    primos.append(2)
    for i in range(3, NMAX, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, NMAX, 2 * i):
                C[j] = False


Crivo()

N = int(input())
for _ in range(N):
    X = int(input())

    if(C[X]):
        print(f'{X} eh primo')
    else:
        print(f'{X} nao eh primo')
