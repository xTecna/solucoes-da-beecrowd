k = 1
while True:
    N = int(input())

    if N == 0:
        break
    
    numeros = [int(x) for x in input().strip().split(' ')]

    resposta = -1
    for i in range(len(numeros)):
        if numeros[i] == i + 1:
            resposta = i + 1
    
    print(f'Teste {k}')
    print(resposta)
    print('')

    k += 1