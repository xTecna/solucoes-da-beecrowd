F = [[-1 for _ in range(21)] for _ in range(101)]


def fatorial(n, k):
    if(n < 1):
        return 1
    if(F[n][k] == -1):
        F[n][k] = n * fatorial(n - k, k)
    return F[n][k]


T = int(input())

for _ in range(T):
    entrada = input().strip()

    exclamacao = entrada.find('!')
    N = int(entrada[:exclamacao])
    K = len(entrada) - exclamacao

    print(fatorial(N, K))
