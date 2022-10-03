def imprimeLinha():
    print('-' * 39)


def imprimeMeio(texto, indice):
    print(
        f'|{" " * (indice - 2)}{texto}{" " * (37 - max(0, indice - 2) - len(texto))}|')


imprimeLinha()
imprimeMeio('Roberto', 10)
imprimeMeio('', 1)
imprimeMeio('5786', 10)
imprimeMeio('', 1)
imprimeMeio('UNIFEI', 10)
imprimeLinha()
