from collections import deque

def top(pilha):
    elemento = pilha.pop()
    pilha.append(elemento)
    
    return elemento

while True:
    try:
        N = int(input())

        if(N == 0):
            break

        numeros = [int(x) for x in input().strip().split(' ')]

        while(len(numeros) > 1 or numeros[0] != 0):
            A = deque()
            estacao = deque()
            B = deque()

            for i in range(N):
                A.append(numeros[i])
                B.append(i + 1)
            
            while(len(A) > 0 or len(estacao) > 0 or len(B) > 0):
                if(len(A) > 0 and len(B) > 0 and top(A) == top(B)):
                    A.pop()
                    B.pop()
                elif(len(estacao) > 0 and len(B) > 0 and top(estacao) == top(B)):
                    estacao.pop()
                    B.pop()
                elif(len(A) > 0):
                    estacao.append(A.pop())
                else:
                    break
            
            if(len(A) == 0 and len(estacao) == 0 and len(B) == 0):
                print("Yes")
            else:
                print("No")

            numeros = [int(x) for x in input().strip().split(' ')]

        print("")
    except EOFError:
        break
