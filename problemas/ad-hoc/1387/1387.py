while True:
    try:
        L, R = [int(x) for x in input().strip().split(' ')]

        if(L == 0 and R == 0):
            break

        print(L + R)
    except EOFError:
        break