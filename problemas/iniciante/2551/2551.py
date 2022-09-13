while True:
    try:
        N = int(input())

        Vmax = 0
        for i in range(1, N + 1):
            T, D = [int(x) for x in input().strip().split(' ')]

            V = D/T
            if(V > Vmax):
                Vmax = V
                print(i)
    except EOFError:
        break
