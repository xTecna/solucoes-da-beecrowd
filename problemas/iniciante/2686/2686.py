def converte(angulo):
    return int(angulo * 240)


def tempoDecorrido(angulo):
    return (converte(angulo) + converte(90)) % converte(360)


while True:
    try:
        M = float(input())

        if(M < 90.0 or M == 360.0):
            print('Bom Dia!!')
        elif(M < 180.0):
            print('Boa Tarde!!')
        elif(M < 270.0):
            print('Boa Noite!!')
        else:
            print('De Madrugada!!')

        tempo = tempoDecorrido(M)
        horas = tempo // 3600
        tempo %= 3600
        minutos = tempo // 60
        segundos = tempo % 60

        print(f'{horas:02d}:{minutos:02d}:{segundos:02d}')
    except EOFError:
        break
