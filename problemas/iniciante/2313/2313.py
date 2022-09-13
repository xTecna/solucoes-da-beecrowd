def testaLado(a, b, c):
    return abs(b - c) < a < b + c


def triangulo(lados):
    return testaLado(lados[0], lados[1], lados[2]) and testaLado(lados[1], lados[0], lados[2]) and testaLado(lados[2], lados[0], lados[1])


def classificacao(lados):
    if(lados[0] == lados[1] == lados[2]):
        return 'Equilatero'
    if(lados[0] == lados[1] or lados[0] == lados[2] or lados[1] == lados[2]):
        return 'Isoceles'
    return 'Escaleno'


def retangulo(lados):
    return lados[0] % 3 == 0 and lados[1] % 4 == 0 and lados[2] % 5 == 0


lados = [int(x) for x in input().strip().split(' ')]
lados.sort()

if(triangulo(lados)):
    print(f'Valido-{classificacao(lados)}')
    ret = 'S' if retangulo(lados) else 'N'
    print(f'Retangulo: {ret}')
else:
    print('Invalido')
