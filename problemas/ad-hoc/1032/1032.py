LIMITE = 3502
PRIMO_LIMITE = 32612

C = [True for _ in range(PRIMO_LIMITE)]
primos = []


def Crivo(C, primos):
    C[0] = False
    C[1] = False
    primos.append(2)

    for i in range(4, PRIMO_LIMITE, 2):
        C[i] = False

    for i in range(3, PRIMO_LIMITE, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, PRIMO_LIMITE, 2 * i):
                C[j] = False


def josephus(F, n, k):
    if(F[n][k] == -1):
        F[n][k] = (josephus(F, n - 1, k + 1) + primos[k] - 1) % n + 1
    return F[n][k]


Crivo(C, primos)

F = [[-1 for _ in range(LIMITE)] for _ in range(LIMITE)]
for i in range(LIMITE):
    F[1][i] = 1

while True:
    try:
        n = int(input())

        if(n == 0):
            break

        k = n - 1
        sobrevivente = 0
        for j in range(1, n + 1):
            sobrevivente = (sobrevivente + primos[k]) % j
            k -= 1

        print(sobrevivente + 1)
    except EOFError:
        break
