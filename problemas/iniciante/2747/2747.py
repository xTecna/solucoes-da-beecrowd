def imprimeLinha():
    print('-' * 39)


def imprimeMeio():
    print(f'|{" " * 37}|')


imprimeLinha()
for _ in range(5):
    imprimeMeio()
imprimeLinha()
