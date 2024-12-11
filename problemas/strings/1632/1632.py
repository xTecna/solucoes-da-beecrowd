def variacoes(letra):
    if letra == 'A' or letra == 'E' or letra == 'I' or letra == 'O' or letra == 'S':
        return 3
    else:
        return 2

N = int(input())

for _ in range(N):
    senha = input().upper()

    resposta = 1
    for letra in senha:
        resposta *= variacoes(letra)
    print(resposta)