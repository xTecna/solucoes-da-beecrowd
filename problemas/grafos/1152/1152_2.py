import queue

def visitaVertice(visitados, grafo, fila, u):
    visitados[u] = True

    for aresta in grafo[u]:
        if(not visitados[aresta[1]]):
            fila.put(aresta)

def Prim(grafo, n):
    visitados = [0 for _ in range(n)]

    fila = queue.PriorityQueue()
    visitaVertice(visitados, grafo, fila, 0)

    resposta = 0
    while(not fila.empty()):
        peso, v = fila.get()
        if(not visitados[v]):
            resposta += peso
            visitaVertice(visitados, grafo, fila, v)

    return resposta

while True:
    try:
        n, m = [int(x) for x in input().strip().split(' ')]

        if(n == 0 and m == 0):
            break

        grafo = [[] for _ in range(n)]
        resposta = 0
        for _ in range(m):
            aresta = [int(x) for x in input().strip().split(' ')]
            grafo[aresta[0]].append((aresta[2], aresta[1]))
            grafo[aresta[1]].append((aresta[2], aresta[0]))
            resposta += aresta[2]

        resposta -= Prim(grafo, n)

        print(resposta)
    except EOFError:
        break