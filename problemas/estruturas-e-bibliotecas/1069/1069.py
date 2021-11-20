N = int(input())

for _ in range(N):
    expressao = input().strip()

    resposta = 0
    parenteses = 0
    for letra in expressao:
        if(letra == '<'):
            parenteses += 1
        elif(letra == '>' and parenteses > 0):
            parenteses -= 1
            resposta += 1
    
    print(resposta)
