k = 0
while True:
    try:
        N1 = input()
        N2 = input()

        qtd = 0
        pos = -1
        p = -1
        while True:
            try:
                p = N2.index(N1, p + 1)
                qtd += 1
                pos = p
            except ValueError:
                break
        k += 1
        print(f'Caso #{k}:')

        if(qtd == 0):
            print('Nao existe subsequencia\n')
        else:
            print(f'Qtd.Subsequencias: {qtd}')
            print(f'Pos: {pos + 1}\n')
    except EOFError:
        break
