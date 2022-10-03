def imprimeLinha():
    print('-' * 39)


def imprimeMeio(texto, indice):
    print(
        f'|{" " * (indice - 2)}{texto}{" " * (37 - max(0, indice - 2) - len(texto))}|')


imprimeLinha()
imprimeMeio('x = 35', 1)
imprimeMeio('', 1)
imprimeMeio('x = 35', 17)
imprimeMeio('', 1)
imprimeMeio('x = 35', 33)
imprimeLinha()
