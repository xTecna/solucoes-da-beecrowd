def converte(linha):
    return sum([1 << (len(linha) - i - 1) for i in range(len(linha)) if linha[i] == '*'])


soma = 0
while True:
    try:
        linha = input().strip()

        if(linha == 'caw caw'):
            print(soma)
            soma = 0
        else:
            soma += converte(linha)
    except EOFError:
        break
