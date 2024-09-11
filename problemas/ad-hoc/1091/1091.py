while True:
    try:
        K = int(input())

        if(K == 0):
            break

        N, M = [int(x) for x in input().strip().split(' ')]

        for _ in range(K):
            X, Y = [int(x) for x in input().strip().split(' ')]

            X -= N
            Y -= M

            if(X > 0):
                if(Y > 0):
                    print("NE")
                elif(Y < 0):
                    print("SE")
                else:
                    print("divisa")
            elif(X < 0):
                if(Y > 0):
                    print("NO")
                elif(Y < 0):
                    print("SO")
                else:
                    print("divisa")
            else:
                print("divisa")
    except EOFError:
        break