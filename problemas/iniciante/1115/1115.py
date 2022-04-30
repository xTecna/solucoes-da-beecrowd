while(True):
    try:
        X, Y = [int(x) for x in input().strip().split(' ')]

        if(X == 0 or Y == 0):
            break

        if(X > 0):
            if(Y > 0):
                print('primeiro')
            else:
                print('quarto')
        else:
            if(Y > 0):
                print('segundo')
            else:
                print('terceiro')
    except EOFError:
        break
