def precedencia(operador):
    return 1 if (operador == '+' or operador == '-') else 2


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
        if(len(pilha) > 0 and top(pilha) != '(' and precedencia(letra) <= precedencia(top(pilha))):
            resposta += pilha.pop()
        pilha.append(letra)

while(len(pilha) > 0):
    resposta += pilha.pop()

print(resposta)
