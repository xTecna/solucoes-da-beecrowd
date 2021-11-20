while True:
    try:
        A, B = [int(x) for x in input().strip().split(' ')]

        if(not A and not B):
            break

        print(2 * A - B)
    except EOFError:
        break
