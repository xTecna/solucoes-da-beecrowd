while True:
    try:
        N = int(input())

        for _ in range(N):
            K = int(input())

            tiros = [int(x) for x in input().strip().split(' ')]
            pulos = input().strip()

            atingido = 0
            for i in range(K):
                if((pulos[i] == 'S' and tiros[i] < 3) or (pulos[i] == 'J' and tiros[i] > 2)):
                    atingido += 1
            
            print(atingido)
    except EOFError:
        break
