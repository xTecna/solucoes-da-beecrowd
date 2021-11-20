import math

T = 0
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(T):
            print('')

        totalX, totalY = 0, 0
        consumos = {}
        for _ in range(N):
            X, Y = map(int, input().split(' '))

            totalX += X
            totalY += Y

            if (Y//X in consumos):
                consumos[Y//X] += X
            else:
                consumos[Y//X] = X

        consumo_total = ((100 * totalY)/totalX)/100

        T += 1
        print(f'Cidade# {T}:')

        output = []
        keys = sorted(list(consumos.keys()))
        for key in keys:
            output.append(f'{consumos[key]}-{key}')

        print(f'{" ".join(output)}')

        consumo_medio = math.floor((100 * totalY)/totalX)/100

        print(f'Consumo medio: {consumo_medio:.2f} m3.')
    except EOFError:
        break
