porcoes = [300, 1500, 600, 1000, 150]

resposta = 225
for i in range(5):
    quantidade = int(input())
    resposta += quantidade * porcoes[i]

print(resposta)
