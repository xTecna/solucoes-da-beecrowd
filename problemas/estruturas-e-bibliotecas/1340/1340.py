from collections import deque
import heapq

while True:
    try:
        n = int(input())

        pilha = deque()
        fila = deque()
        filaPrioridade = []

        p, f, fp = True, True, True
        for _ in range(n):
            operacao, numero = [int(x) for x in input().strip().split(' ')]

            if(operacao == 1):
                if(p):
                    pilha.append(numero)
                if(f):
                    fila.append(numero)
                if(fp):
                    heapq.heappush(filaPrioridade, -numero)
            else:
                if(p and (len(pilha) == 0 or pilha.pop() != numero)):
                    p = False
                if(f and (len(fila) == 0 or fila.popleft() != numero)):
                    f = False
                if(fp and (len(filaPrioridade) == 0 or -heapq.heappop(filaPrioridade) != numero)):
                    fp = False

        if(p and not f and not fp):
            print('stack')
        elif(not p and f and not fp):
            print('queue')
        elif(not p and not f and fp):
            print('priority queue')
        elif(not p and not f and not fp):
            print('impossible')
        else:
            print('not sure')
    except EOFError:
        break

