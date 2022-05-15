def somaPA(a0, n):
    an = a0 + n - 1

    return (a0 + an) * n // 2


entrada = [int(x) for x in input().strip().split(' ')]
A = entrada[0]

N = 0
for i in range(1, len(entrada)):
    if(entrada[i] > 0):
        N = entrada[i]
        break

print(somaPA(A, N))
