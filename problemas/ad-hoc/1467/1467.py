while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(A + B + C == 1):
            if(A == 1):
                print('A')
            elif(B == 1):
                print('B')
            else:
                print('C')
        elif(A + B + C == 2):
            if(A == 0):
                print('A')
            elif(B == 0):
                print('B')
            else:
                print('C')
        else:
            print('*')
    except EOFError:
        break
