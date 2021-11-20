N = int(input())

palavras = input().strip().split(' ')

resposta = []
for palavra in palavras:
    if(len(palavra) == 3):
        if(palavra.startswith("OB")):
            resposta.append("OBI")
        elif(palavra.startswith("UR")):
            resposta.append("URI")
        else:
            resposta.append(palavra)
    else:
        resposta.append(palavra)

print(' '.join(resposta))
