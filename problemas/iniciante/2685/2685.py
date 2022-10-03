while True:
    try:
        M = int(input())

        M %= 360

        if(M < 90):
            print('Bom Dia!!')
        elif(M < 180):
            print('Boa Tarde!!')
        elif(M < 270):
            print('Boa Noite!!')
        else:
            print('De Madrugada!!')
    except EOFError:
        break
