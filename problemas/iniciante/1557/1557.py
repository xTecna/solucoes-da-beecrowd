import math


def digitos(numero):
    return math.floor(math.log10(numero)) + 1


def espaco(numero, limite):
    return ' ' * (limite - len(str(numero))) + str(numero)


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        limite = digitos(1 << (2 * N - 2))

        for i in range(N):
            print(espaco(1 << i, limite), end='')
            for j in range(1, N):
                print(f' {espaco(1 << (i + j), limite)}', end='')
            print('')
        print('')
    except EOFError:
        break
