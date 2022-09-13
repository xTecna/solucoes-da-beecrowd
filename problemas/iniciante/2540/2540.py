while True:
    try:
        N = int(input())
        votos = sum([int(x) for x in input().strip().split(' ')])
        print('impeachment' if votos >= 2 * N / 3 else 'acusacao arquivada')
    except EOFError:
        break
