import math


def Crivo(n):
    C = [True for _ in range(n)]
    primos = []

    C[1] = False
    primos.append(2)

    for i in range(4, n, 2):
        C[i] = False

    for i in range(3, n, 2):
        if(C[i]):
            primos.append(i)

            for j in range(i * 3, n, 2 * i):
                C[j] = False

    return primos


def ehPrimo(primos, n):
    limite = math.ceil(math.sqrt(n))

    for primo in primos:
        if(primo > limite):
            return True
        elif(n % primo == 0):
            return (n == primo)

    return True


primos = Crivo(65536)

N = int(input())

for _ in range(N):
    X = int(input())

    print('Prime' if ehPrimo(primos, X) else 'Not Prime')

