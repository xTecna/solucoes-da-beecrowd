while True:
    try:
        N, R = [int(x) for x in input().strip().split(' ')]

        voluntarios = [False for i in range(N + 1)]

        for mergulhador in [int(x) for x in input().strip().split(' ')]:
            voluntarios[mergulhador] = True

        if(N == R):
            print('*')
        else:
            for i in range(1, N + 1):
                if(not voluntarios[i]):
                    print(f'{i} ', end='')
            print()
    except EOFError:
        break
