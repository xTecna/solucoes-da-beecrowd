def valor(simbolo):
    if simbolo.isalpha():
        return ord(simbolo) - ord('a') + 10
    else:
        return ord(simbolo) - ord('0')

def simbolo(valor):
    if valor > 9:
        return chr(valor - 10 + ord('a'))
    else:
        return chr(valor + ord('0'))

def converteParaDecimal(numero, base):
    potencia, resposta = 1, 0

    for digito in numero[::-1]:
        resposta += valor(digito) * potencia
        potencia *= base

    return resposta

def converteDeDecimal(decimal, base):
    resposta = ''

    while (decimal > 0):
        resposta = simbolo(decimal % base) + resposta
        decimal //= base

    return resposta

N = int(input())

for i in range(1, N + 1):
    numero, base = input().strip().split(' ')

    print(f'Case {i}:')
    if (base == 'bin'):
        dec = converteParaDecimal(numero, 2)
        print(f'{dec} dec')
        print(f'{converteDeDecimal(dec, 16)} hex')
    elif (base == 'dec'):
        dec = converteParaDecimal(numero, 10)
        print(f'{converteDeDecimal(dec, 16)} hex')
        print(f'{converteDeDecimal(dec, 2)} bin')
    elif (base == 'hex'):
        dec = converteParaDecimal(numero, 16)
        print(f'{dec} dec')
        print(f'{converteDeDecimal(dec, 2)} bin')
    print('')