while True:
    try:
        P = int(input())

        if(P == -1):
            break

        print(max(0, P - 1))
    except EOFError:
        break
