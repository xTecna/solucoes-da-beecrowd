def valor(simbolo):
    if simbolo == '-':
        return 0
    if simbolo == '*':
        return 1

def converte(numero):
    potencia, resposta = 1, 0
    
    for digito in numero[::-1]:
        resposta += valor(digito) * potencia
        potencia *= 2
        
    return resposta

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