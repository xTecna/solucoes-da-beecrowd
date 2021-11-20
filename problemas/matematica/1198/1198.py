while True:
    try:
        hashmat, oponente = [int(x) for x in input().strip().split(' ')]

        print(f'{hashmat - oponente if hashmat > oponente else oponente - hashmat}')
    except EOFError:
        break
