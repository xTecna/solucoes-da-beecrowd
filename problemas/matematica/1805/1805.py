def somaPA(a0, an, n):
    return ((a0 + an) * n) // 2


A, B = [int(x) for x in input().strip().split(' ')]

print(somaPA(A, B, B - A + 1))
