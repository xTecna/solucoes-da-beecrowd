while True:
    try:
        L, R = [int(x) for x in input().strip().split(' ')]

        if(not L and not R):
            break

        print(L + R)
    except EOFError:
        break
