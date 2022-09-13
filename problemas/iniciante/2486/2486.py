vitaminaC = {
    "suco de laranja": 120,
    "morango fresco": 85,
    "mamao": 85,
    "goiaba vermelha": 70,
    "manga": 56,
    "laranja": 50,
    "brocolis": 34,
}

while True:
    try:
        T = int(input())

        if(T == 0):
            break

        consumo = 0
        for _ in range(T):
            entrada = input().strip().split(' ')
            N = int(entrada[0])
            nome = ' '.join(entrada[1:])

            consumo += N * vitaminaC[nome]

        if (consumo < 110):
            print(f'Mais {110 - consumo} mg')
        elif (consumo > 130):
            print(f'Menos {consumo - 130} mg')
        else:
            print(f'{consumo} mg')
    except EOFError:
        break
