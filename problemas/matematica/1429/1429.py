def acmToDec(acm):
    resposta, potencia, p = 0, 1, 2

    for digit in acm[::-1]:
        resposta += int(digit) * potencia
        potencia *= p
        p += 1

    return resposta


while True:
    try:
        acm = input()

        if(acm == '0'):
            break

        print(acmToDec(acm))
    except EOFError:
        break
