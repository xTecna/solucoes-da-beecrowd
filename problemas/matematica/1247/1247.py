import math

while True:
    try:
        D, VF, VG = [int(x) for x in input().strip().split(' ')]

        tempoFugitivo = 12/VF
        distanciaGuarda = math.sqrt(144 + D * D)
        tempoGuarda = distanciaGuarda/VG

        print('N' if tempoFugitivo < tempoGuarda else 'S')
    except EOFError:
        break
