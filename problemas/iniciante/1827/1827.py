while True:
    try:
        N = int(input())

        for i in range(N):
            for j in range(N):
                if (i == N // 2 and j == N // 2):
                    print(4, end='')
                elif (N // 3 <= i < N - N // 3 and N // 3 <= j < N - N // 3):
                    print(1, end='')
                elif (i == j):
                    print(2, end='')
                elif (i == N - 1 - j):
                    print(3, end='')
                else:
                    print(0, end='')
            print('')
        print('')
    except EOFError:
        break
