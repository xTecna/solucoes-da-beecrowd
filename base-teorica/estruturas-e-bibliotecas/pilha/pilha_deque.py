from collections import deque

pilha = deque()

pilha.append(10)
pilha.append(20)
pilha.append(30)

while(len(pilha) > 0):
    print(pilha.pop())
