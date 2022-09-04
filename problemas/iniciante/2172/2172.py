while True:
    try:
        X, M = [int(x) for x in input().strip().split(' ')]
        if(X == 0 and M == 0):
            break

        print(X * M)
    except EOFError:
        break
