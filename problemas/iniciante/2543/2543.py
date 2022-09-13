while True:
    try:
        N, I = [int(x) for x in input().strip().split(' ')]

        gameplays = 0
        for _ in range(N):
            identificador, j = [int(x) for x in input().strip().split(' ')]

            if(identificador == I and j == 0):
                gameplays += 1

        print(gameplays)
    except EOFError:
        break
