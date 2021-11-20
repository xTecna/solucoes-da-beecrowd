jogo = [[2048 for _ in range(6)] for _ in range(6)]

direcoes = [("DOWN", (1, 0)), ("LEFT", (0, -1)), ("RIGHT", (0, 1)), ("UP", (-1, 0))]
possibilidades = []
numero2048 = False
first = True

def podeDirecao(p, i, j):
    x = direcoes[p][1][0]
    y = direcoes[p][1][1]
    return (jogo[i + x][j + y] == jogo[i][j] or jogo[i + x][j + y] == 0)

def imprime(direcao):
    global first
    if(possibilidades[direcao]):
        if(first):
            first = False
        else:
            print(' ', end='')
        print(direcoes[direcao][0], end='')

n = int(input())

for _ in range(n):
    first = True
    numero2048 = False
    possibilidades = [False for _ in range(4)]

    for i in range(1, 5):
        jogo[i] = [2048] + [int(x) for x in input().strip().split(' ')] + [2048]
        for j in range(1, 5):
            if(jogo[i][j] == 2048):
                numero2048 = True
    
    if(numero2048):
        print("NONE")
        continue
    
    for i in range(1, 5):
        for j in range(1, 5):
            if(jogo[i][j] != 0):
                for k in range(4):
                    possibilidades[k] |= podeDirecao(k, i, j)
    
    for i in range(4):
        imprime(i)
    
    if(first):
        print("NONE")
    else:
        print()
    

