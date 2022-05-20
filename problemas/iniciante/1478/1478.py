while True:
    try:
        N = int(input())

        if(N == 0):
            break

        for i in range(N):
            print(f'{i + 1:3d}', end='')
            for j in range(1, N):
                print(
                    f'{(abs(i - j) + 1):4d}', end='')
            print('')
        print('')
    except EOFError:
        break
