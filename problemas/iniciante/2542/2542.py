while True:
    try:
        N = int(input())

        M, L = [int(x) for x in input().strip().split(' ')]

        cartasMarcos = []
        for _ in range(M):
            cartasMarcos.append([int(x) for x in input().strip().split(' ')])

        cartasLeonardo = []
        for _ in range(L):
            cartasLeonardo.append([int(x) for x in input().strip().split(' ')])

        CM, CL = [int(x) for x in input().strip().split(' ')]
        A = int(input())

        if(cartasMarcos[CM - 1][A - 1] > cartasLeonardo[CL - 1][A - 1]):
            print('Marcos')
        elif(cartasLeonardo[CL - 1][A - 1] > cartasMarcos[CM - 1][A - 1]):
            print('Leonardo')
        else:
            print('Empate')
    except EOFError:
        break
