while True:
    try:
        B, N = [int(x) for x in input().strip().split(' ')]

        saldos = [int(x) for x in input().strip().split(' ')]
        saldos.insert(0, 0)

        for _ in range(N):
            devedor, credor, valor = [int(x)
                                      for x in input().strip().split(' ')]

            saldos[devedor] -= valor
            saldos[credor] += valor

        possivel = len([saldo for saldo in saldos if saldo < 0]) == 0

        print('S' if possivel else 'N')
    except EOFError:
        break
