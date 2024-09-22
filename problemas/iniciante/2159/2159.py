import math


def limiteInferior(n):
    return n / math.log(n)


def limiteSuperior(n):
    return 1.25506 * n / math.log(n)


n = int(input())
print(f'{limiteInferior(n):.1f} {limiteSuperior(n):.1f}')
