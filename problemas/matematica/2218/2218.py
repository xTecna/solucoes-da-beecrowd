def somaPA(a1, an, n):
    return (n * (a1 + an)) // 2

t = int(input())

for _ in range(t):
    n = int(input())
    print(somaPA(1, n, n) + 1)