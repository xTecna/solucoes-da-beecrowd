teste = 1
while True:
    n = int(input())

    if n == -1:
        break
    
    print(f'Experiment {teste}: {n // 2} full cycle(s)')
    teste += 1