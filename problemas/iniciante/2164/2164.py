import math


def potencia(base, expoente):
    if(expoente == 1):
        return base
    if(expoente % 2):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p


def Fibonacci(n):
    return (potencia((1 + math.sqrt(5)) / 2, n) - potencia((1 - math.sqrt(5)) / 2, n)) / math.sqrt(5)


n = int(input())
print(f'{Fibonacci(n):.1f}')
