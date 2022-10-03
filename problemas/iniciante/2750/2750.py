def imprimeLinhaHorizontal():
    print('-' * 39)


def imprimeCabecalho():
    imprimeLinhaHorizontal()
    print('|  decimal  |  octal  |  Hexadecimal  |')
    imprimeLinhaHorizontal()


def imprimeLinha(numero):
    print(f'|{numero:7d}    |{numero:5o}    |{numero:8X}       |')


imprimeCabecalho()
for i in range(16):
    imprimeLinha(i)
imprimeLinhaHorizontal()
