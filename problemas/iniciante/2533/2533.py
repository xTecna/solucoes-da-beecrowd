while True:
    try:
        M = int(input())

        numerador, denominador = 0, 0
        for _ in range(M):
            N, C = [int(x) for x in input().strip().split(' ')]
            numerador += N * C
            denominador += C

        print(f'{(numerador/(100 * denominador)):.4f}')
    except EOFError:
        break
