while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        if(M <= 0 or N <= 0):
            break

        if(M > N):
            M, N = N, M

        print(f'{" ".join([str(x) for x in range(M, N + 1)])} Sum={sum(range(M, N + 1))}')
    except EOFError:
        break
