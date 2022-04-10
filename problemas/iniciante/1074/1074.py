N = int(input())

for _ in range(N):
    X = int(input())

    retorno = ''
    if(X == 0):
        retorno += 'NULL'
    elif(X > 0):
        if(X % 2):
            retorno += 'ODD'
        else:
            retorno += 'EVEN'
        retorno += ' POSITIVE'
    else:
        if(X % 2):
            retorno += 'ODD'
        else:
            retorno += 'EVEN'
        retorno += ' NEGATIVE'

    print(retorno)
