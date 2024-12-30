n = int(input())
letras = [int(x, 16) for x in input().strip().split(' ')]

resposta = ''
for letra in letras:
    resposta += chr(letra)

print(resposta)