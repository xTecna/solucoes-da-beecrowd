while True:
    try:
        N, D = [int(x) for x in input().strip().split(' ')]

        melhorData = None
        for i in range(D):
            dados = input().strip().split(' ')
            pessoas = sum([int(x) for x in dados[1:]])

            if(pessoas == N and melhorData == None):
                melhorData = dados[0]

        if(melhorData == None):
            print('Pizza antes de FdI')
        else:
            print(melhorData)
    except EOFError:
        break
