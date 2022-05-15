while True:
    try:
        X = int(input())

        if(X == 0):
            break

        numeros = [str(x) for x in range(1, X + 1)]
        print(' '.join(numeros))
    except EOFError:
        break
