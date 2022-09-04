def valorGolpe(ataque, defesa, nivel, bonus):
    return (ataque + defesa)/2 + bonus * (1 - (nivel % 2))


T = int(input())
for _ in range(T):
    B = int(input())

    Ai, Di, Li = [int(x) for x in input().strip().split(' ')]
    golpeDabriel = valorGolpe(Ai, Di, Li, B)

    Ai, Di, Li = [int(x) for x in input().strip().split(' ')]
    golpeGuarte = valorGolpe(Ai, Di, Li, B)

    if(golpeDabriel > golpeGuarte):
        print('Dabriel')
    elif(golpeGuarte > golpeDabriel):
        print('Guarte')
    else:
        print('Empate')
