def comp(a):
    return a


n = int(input())

pares = []
impares = []
for _ in range(n):
    numero = int(input())

    if (numero % 2 == 0):
        pares.append(numero)
    else:
        impares.append(numero)

pares.sort(key=comp)
impares.sort(key=comp, reverse=True)

for numero in pares:
    print(numero)
for numero in impares:
    print(numero)

