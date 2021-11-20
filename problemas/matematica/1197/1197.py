while True:
    try:
        v, t = [int(x) for x in input().strip().split(' ')]

        print(v * 2 * t)
    except EOFError:
        break
