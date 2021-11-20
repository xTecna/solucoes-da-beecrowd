import re

while True:
    try:
        D, N = input().strip().split(' ')

        if(D == '0' and N == '0'):
            break

        resposta = ''
        for letra in N:
            if(letra != D):
                resposta += letra
        
        resultado = re.findall(r'^(0+)', resposta)

        if(len(resultado) > 0):
            resposta = resposta.replace(resultado[0], '', 1)

        if(len(resposta) == 0):
            print('0')
        else:
            print(resposta)
    except EOFError:
        break
