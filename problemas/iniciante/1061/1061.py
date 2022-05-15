def converte(dia, hora, minuto, segundo):
    return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo


d_inicial = int(input().split(' ')[1])
h_inicial, m_inicial, s_inicial = [int(x) for x in input().split(' : ')]
d_final = int(input().split(' ')[1])
h_final, m_final, s_final = [int(x) for x in input().split(' : ')]

inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial)
final = converte(d_final, h_final, m_final, s_final)

duracao = final - inicial

print(f'{duracao//(24 * 60 * 60)} dia(s)')
duracao %= (24 * 60 * 60)
print(f'{duracao//(60 * 60)} hora(s)')
duracao %= (60 * 60)
print(f'{duracao//60} minuto(s)')
duracao %= 60
print(f'{duracao} segundo(s)')
