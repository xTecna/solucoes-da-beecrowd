while True:
    try:
        A, D = [int(x) for x in input().strip().split(' ')]

        if(not A and not D):
            break

        atacantes = [int(x) for x in input().strip().split(' ')]
        defensores = [int(x) for x in input().strip().split(' ')]

        atacantes.sort()
        defensores.sort()

        print('Y' if atacantes[0] < defensores[1] else 'N')
    except EOFError:
        break
