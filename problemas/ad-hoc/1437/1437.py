direcoes = ['N', 'L', 'S', 'O']

while True:
    try:
        N = int(input())

        if(not N):
            break

        comandos = input()

        direcao = 0
        for comando in comandos:
            if comando == 'D':
                direcao = (direcao + 1) % 4
            else:
                direcao = ((direcao - 1) + 4) % 4

        print(direcoes[direcao])
    except EOFError:
        break
