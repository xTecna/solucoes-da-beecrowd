def soma(expressao):
    return expressao[0] + expressao[1] == expressao[2]


def subtracao(expressao):
    return expressao[0] - expressao[1] == expressao[2]


def multiplicacao(expressao):
    return expressao[0] * expressao[1] == expressao[2]


while True:
    try:
        T = int(input())

        expressoes = []
        for _ in range(T):
            X, YZ = input().strip().split(' ')
            YZ = [int(x) for x in YZ.strip().split('=')]
            expressoes.append([int(X), YZ[0], YZ[1]])

        errados = []
        for _ in range(T):
            nome, E, operador = input().strip().split(' ')
            E = int(E)

            if(operador == '+' and not soma(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == '-' and not subtracao(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == '*' and not multiplicacao(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == 'I' and (soma(expressoes[E - 1]) or subtracao(expressoes[E - 1]) or multiplicacao(expressoes[E - 1]))):
                errados.append(nome)

        if(len(errados) == 0):
            print('You Shall All Pass!')
        elif(len(errados) == T):
            print('None Shall Pass!')
        else:
            errados.sort()
            print(' '.join(errados))
    except EOFError:
        break
