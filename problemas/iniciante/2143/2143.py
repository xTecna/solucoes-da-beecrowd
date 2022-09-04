while True:
    try:
        T = int(input())

        for _ in range(T):
            N = int(input())

            pontas = 2 - (N % 2)
            print(pontas + 2 * (N - pontas))
    except EOFError:
        break
