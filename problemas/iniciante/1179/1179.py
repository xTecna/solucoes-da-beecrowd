def imprime(nome, vetor):
    for i, valor in enumerate(vetor):
        print(f'{nome}[{i}] = {valor}')


impar = []
par = []
for _ in range(15):
    valor = int(input())

    if(abs(valor) % 2 == 1):
        impar.append(valor)

        if(len(impar) == 5):
            imprime("impar", impar)
            impar = []
    else:
        par.append(valor)

        if(len(par) == 5):
            imprime("par", par)
            par = []

imprime("impar", impar)
imprime("par", par)
