[h_inicial, m_inicial, h_final, m_final] = [
    int(x) for x in input().strip().split(' ')]

inicial = h_inicial * 60 + m_inicial
final = h_final * 60 + m_final

if(final <= inicial):
    final += 24 * 60

print(
    f'O JOGO DUROU {(final - inicial) // 60} HORA(S) E {(final - inicial) % 60} MINUTO(S)')
