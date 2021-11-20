while True:
    try:
        cpf = [int(x) for x in input().replace(
            '-', '').replace('.', '')]

        soma = 0
        for i in range(9):
            soma += (i + 1) * cpf[i]

        soma %= 11
        if(soma == 10):
            soma = 0

        if(soma == cpf[9]):
            soma = 0
            for i in range(9):
                soma += (9 - i) * cpf[i]

            soma %= 11
            if(soma == 10):
                soma = 0

            if(soma == cpf[10]):
                print('CPF valido')
            else:
                print('CPF invalido')
        else:
            print('CPF invalido')
    except EOFError:
        break
