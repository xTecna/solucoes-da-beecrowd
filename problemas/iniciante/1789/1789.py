while True:
    try:
        N = int(input())
        numeros = [int(x) for x in input().strip().split(' ')]
        maior = max(numeros)

        if(maior < 10):
            print(1)
        elif(maior < 20):
            print(2)
        else:
            print(3)
    except EOFError:
        break
