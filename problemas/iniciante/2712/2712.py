import re


def valido(placa):
    return re.search('^([A-Z]{3})-([0-9]{4})$', placa) != None


def diaDaSemana(placa):
    ultimoDigito = int(placa[7])

    if(1 <= ultimoDigito <= 2):
        return 'MONDAY'
    if(3 <= ultimoDigito <= 4):
        return 'TUESDAY'
    if(5 <= ultimoDigito <= 6):
        return 'WEDNESDAY'
    if(7 <= ultimoDigito <= 8):
        return 'THURSDAY'
    return 'FRIDAY'


N = int(input())
for _ in range(N):
    S = input()

    if(not valido(S)):
        print('FAILURE')
    else:
        print(diaDaSemana(S))
