hora_inicial, hora_final = [int(x) for x in input().split(' ')]

if(hora_final <= hora_inicial):
    hora_final += 24

print(f'O JOGO DUROU {hora_final - hora_inicial} HORA(S)')
