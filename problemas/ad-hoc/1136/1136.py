while True:
    try:
        N, B = [int(x) for x in input().strip().split(' ')]
        bolas = [int(x) for x in input().strip().split(' ')]

        possibilidades = set()
        possibilidades.add(0)

        for i in range(B):
            for j in range(i + 1, B):
                possibilidades.add(abs(bolas[i] - bolas[j]))
        
        print('Y' if len(possibilidades) == N + 1 else 'N')
    except EOFError:
        break
