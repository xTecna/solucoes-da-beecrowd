import math

T = int(input())
for _ in range(T):
    PA, PB, G1, G2 = input().strip().split(' ')
    PA, PB = int(PA), int(PB)
    G1, G2 = float(G1)/100, float(G2)/100

    anos = 1
    while(PA <= PB and anos < 101):
        PA += math.floor(PA * G1)
        PB += math.floor(PB * G2)
        anos += 1

    if(PA <= PB):
        print('Mais de 1 seculo.')
    else:
        print(f'{anos - 1} anos.')
