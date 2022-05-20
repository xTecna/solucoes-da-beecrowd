while True:
    try:
        N = int(input())

        if(N == 0):
            break

        for i in range(N):
            print(f'{1:3d}', end='')
            for j in range(1, N):
                print(
                    f'{(min(min(i, N - i - 1), min(j, N - j - 1)) + 1):4d}', end='')
            print('')
        print('')
    except EOFError:
        break
