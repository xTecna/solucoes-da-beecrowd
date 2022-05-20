while True:
    try:
        N = int(input())

        for i in range(N):
            for j in range(N):
                if(i == N - 1 - j):
                    print(2, end='')
                elif(i == j):
                    print(1, end='')
                else:
                    print(3, end='')
            print('')
    except EOFError:
        break
