import collections
import queue

while True:
    try:
        n = int(input())

        pilha = collections.deque()
        fila = collections.deque()
        filaDePrioridade = queue.PriorityQueue()
        [p, f, fp] = [True, True, True]
        for _ in range(n):
            [opcao, elemento] = [int(x) for x in input().strip().split(' ')]

            if opcao == 1:
                if p:
                    pilha.append(elemento)
                if f:
                    fila.append(elemento)
                if fp:
                    filaDePrioridade.put(-elemento)
            else:
                if p:
                    if len(pilha) == 0 or pilha[-1] != elemento:
                        p = False
                    else:
                        pilha.pop()
                if f:
                    if len(fila) == 0 or fila[0] != elemento:
                        f = False
                    else:
                        fila.popleft()
                if fp and (filaDePrioridade.empty() or filaDePrioridade.get() != -elemento):
                        fp = False

        if p and not f and not fp:
            print('stack')
        elif not p and f and not fp:
            print('queue')
        elif not p and not f and fp:
            print('priority queue')
        elif not p and not f and not fp:
            print('impossible')
        else:
            print('not sure')
    except EOFError:
        break