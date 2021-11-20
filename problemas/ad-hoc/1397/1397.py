while True:
    try:
        N = int(input())

        if(not N):
            break

        jogador1, jogador2 = 0, 0

        for _ in range(N):
            A, B = [int(x) for x in input().strip().split(' ')]

            if(A > B):
                jogador1 += 1
            elif(B > A):
                jogador2 += 1

        print(f"{jogador1} {jogador2}")
    except EOFError:
        break
