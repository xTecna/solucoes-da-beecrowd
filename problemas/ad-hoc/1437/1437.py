direcoes = ['N', 'L', 'S', 'O']

while True:
    try:
        N = int(input())

        if(not N):
            break

        comandos = input()

        direcao = 0
        for comando in comandos:
            direcao += 1 if comando == 'D' else -1
            direcao = (direcao + 4) % 4

        print(direcoes[direcao])
    except EOFError:
        break
