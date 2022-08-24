def somaPA(an):
    return (an * (an + 1))//2


k = 1

while True:
    try:
        N = int(input())

        numero = 'numero' if N == 0 else 'numeros'
        print(f'Caso {k}: {somaPA(N) + 1} {numero}')
        k += 1

        resposta = '0'
        for i in range(1, N + 1):
            resposta += f' {i}' * i

        print(resposta)
        print('')
    except EOFError:
        break
