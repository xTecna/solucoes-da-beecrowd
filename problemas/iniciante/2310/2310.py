saquesTotais, bloqueiosTotais, ataquesTotais = 0, 0, 0
saquesSucedidos, bloqueiosSucedidos, ataquesSucedidos = 0, 0, 0

T = int(input())
for _ in range(T):
    nome = input()

    S, B, A = [int(x) for x in input().strip().split(' ')]
    saquesTotais += S
    bloqueiosTotais += B
    ataquesTotais += A

    S1, B1, A1 = [int(x) for x in input().strip().split(' ')]
    saquesSucedidos += S1
    bloqueiosSucedidos += B1
    ataquesSucedidos += A1

print(f'Pontos de Saque: {100 * saquesSucedidos/saquesTotais:.2f} %.')
print(f'Pontos de Bloqueio: {100 * bloqueiosSucedidos/bloqueiosTotais:.2f} %.')
print(f'Pontos de Ataque: {100 * ataquesSucedidos/ataquesTotais:.2f} %.')