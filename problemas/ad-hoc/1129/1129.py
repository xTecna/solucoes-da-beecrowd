while True:
    try:
        N = int(input())

        for _ in range(N):
            cores = [(i, int(x)) for i, x in enumerate(input().strip().split(' '))]
            opcoes = list(filter(lambda x: x[1] <= 127, cores))

            if(len(opcoes) == 1):
                print(chr(65 + opcoes[0][0]))
            else:
                print('*')
    except EOFError:
        break