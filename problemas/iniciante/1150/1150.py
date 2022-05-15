X = int(input())

Z = 0
while(True):
    try:
        Z = int(input())

        if(Z > X):
            break
    except EOFError:
        break

resposta, soma = 1, X
while(soma <= Z):
    soma += X + resposta
    resposta += 1

print(resposta)
