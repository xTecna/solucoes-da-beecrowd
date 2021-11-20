from collections import deque

def precedencia(operador):
    return 1 if (operador == '+' or operador == '-') else 2

def top(pilha):
    topo = pilha.pop()
    pilha.append(topo)
    return topo

N = int(input())

for _ in range(N):
    resposta = ''
    pilha = deque()
    expressao = input()

    for letra in expressao:
        if(letra.isalpha() or letra.isdigit()):
            resposta += letra
        elif(letra == '(' or letra == '^'):
            pilha.append(letra)
        elif(letra == ')'):
            while(len(pilha) > 0 and top(pilha) != '('):
                resposta += pilha.pop()
            if(len(pilha) > 0):
                pilha.pop()
        else:
            while(len(pilha) > 0 and top(pilha) != '(' and precedencia(letra) <= precedencia(top(pilha))):
                resposta += pilha.pop()
            pilha.append(letra)
    
    while(len(pilha) > 0):
        resposta += pilha.pop()
    
    print(resposta)
