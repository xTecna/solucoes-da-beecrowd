N = int(input())
for _ in range(N):
    X = int(input())

    resposta, contador = 0, 0
    while(X > 0):
        if(X % 2 == 1):
            contador += 1
        else:
            resposta = max(resposta, contador)
            contador = 0
        X //= 2
    resposta = max(resposta, contador)

    print(resposta)
