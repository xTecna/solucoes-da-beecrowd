def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)


N = int(input())

for _ in range(N):
    F1, F2 = [int(x) for x in input().strip().split(' ')]
    print(MDC(F1, F2))
