trocos = [4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52,
          55, 60, 70, 100, 102, 105, 110, 120, 150, 200]

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and M == 0):
            break

        troco = M - N
        possivel = False
        for possivelTroco in trocos:
            if(troco == possivelTroco):
                possivel = True
                break

        prefixo = '' if possivel else 'im'
        print(f'{prefixo}possible')
    except EOFError:
        break
