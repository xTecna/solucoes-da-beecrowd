while True:
    try:
        hora, minuto = [int(x) for x in input().strip().split(':')]
        total = hora * 60 + minuto
        print(f'Atraso maximo: {max(0, total + 60 - 8 * 60)}')
    except EOFError:
        break
