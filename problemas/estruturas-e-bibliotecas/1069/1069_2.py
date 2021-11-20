from collections import deque

N = int(input())

for _ in range(N):
    expressao = input().strip()

    resposta = 0
    pilha = deque()
    for letra in expressao:
        if(letra == '<'):
            pilha.append('<')
        elif(letra == '>' and len(pilha) > 0):
            resposta += 1
            pilha.pop()

    print(resposta)
