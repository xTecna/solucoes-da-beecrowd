def binToDec(b):
    dec, potencia = 0, 1

    for digito in b[::-1]:
        dec += int(digito) * potencia
        potencia *= 2

    return dec


def decToBin(dec):
    b = ''

    while(dec):
        b = chr(ord('0') + (dec % 2)) + b
        dec //= 2

    return b


def decToHex(dec):
    h = ''

    while(dec):
        if(dec % 16 > 9):
            h = chr(ord('a') + (dec % 16 - 10)) + h
        else:
            h = chr(ord('0') + (dec % 16)) + h
        dec //= 16

    return h


def hexToDec(h):
    dec, potencia = 0, 1

    for digito in h[::-1]:
        if('a' <= digito <= 'f'):
            dec += (ord(digito) - ord('a') + 10) * potencia
        else:
            dec += int(digito) * potencia
        potencia *= 16

    return dec


def binToHex(b):
    return decToHex(binToDec(b))


def hexToBin(h):
    return decToBin(hexToDec(h))


N = int(input())

for i in range(N):
    numero, base = input().strip().split(' ')

    print(f'Case {i + 1}:')
    if(base == 'bin'):
        print(f'{binToDec(numero)} dec')
        print(f'{binToHex(numero)} hex')
    elif(base == 'dec'):
        numero = int(numero)
        print(f'{decToHex(numero)} hex')
        print(f'{decToBin(numero)} bin')
    else:
        print(f'{hexToDec(numero)} dec')
        print(f'{hexToBin(numero)} bin')
    print('')
