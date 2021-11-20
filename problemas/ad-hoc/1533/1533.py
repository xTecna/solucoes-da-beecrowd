while True:
    try:
        N = int(input())

        if(not N):
            break

        suspeitos = [[int(x), i + 1]
                     for i, x in enumerate(input().strip().split(' '))]

        suspeitos.sort(key=lambda a: a[0], reverse=True)

        print(suspeitos[1][1])
    except EOFError:
        break
