while(True):
    try:
        X, Y = [int(x) for x in input().strip().split(' ')]

        if(X == Y):
            break

        if(X < Y):
            print('Crescente')
        else:
            print('Decrescente')
    except EOFError:
        break
