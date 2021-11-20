teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"
posicoes = {}
for i, tecla in enumerate(teclado):
    posicoes[tecla] = i

while True:
    try:
        frase = input()

        resposta = ''.join(
            [teclado[posicoes[x] - 1] if x != ' ' else ' ' for x in frase])
        print(resposta)
    except EOFError:
        break
