while True:
    try:
        N, Amin, Amax = [int(x) for x in input().strip().split(' ')]

        permitidos = 0
        for _ in range(N):
            A = int(input())

            if(Amin <= A <= Amax):
                permitidos += 1

        print(permitidos)
    except EOFError:
        break
