def potencia(base, expoente):
    if(expoente == 0):
        return 1
    if(expoente % 2 == 1):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p


R = int(input())
print(potencia(3, R))
