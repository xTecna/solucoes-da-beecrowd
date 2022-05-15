def valido(x):
    return (x >= 0.0 and x <= 10.0)


def novoCalculo():
    print('novo calculo (1-sim 2-nao)')
    while True:
        try:
            codigo = int(input())
            if(codigo == 1):
                return True
            elif(codigo == 2):
                return False
            print('novo calculo (1-sim 2-nao)')
        except EOFError:
            break
    return False


X = -1.0
while True:
    try:
        Y = float(input())

        if(valido(Y)):
            if(X == -1.0):
                X = Y
            else:
                print(f'media = {(X + Y)/2:.2f}')
                X = -1.0

                if(not novoCalculo()):
                    break
        else:
            print('nota invalida')
    except EOFError:
        break
