while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        P = []
        for _ in range(N):
            P.append(int(input()))

        P.sort(reverse=True)

        for _ in range(Q):
            N = int(input())
            print(P[N - 1])
    except EOFError:
        break
