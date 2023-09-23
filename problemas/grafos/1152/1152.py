class UniaoBusca:
    def __init__(self, n):
        self.ranking = [0 for _ in range(n)]
        self.P = list(range(n))
    
    def encontraConjunto(self, i):
        if(self.P[i] == i):
            return i
        self.P[i] = self.encontraConjunto(self.P[i])
        return self.P[i]
    
    def mesmoConjunto(self, i, j):
        return self.encontraConjunto(i) == self.encontraConjunto(j)
    
    def uneConjuntos(self, i, j):
        if(not self.mesmoConjunto(i, j)):
            x, y = self.encontraConjunto(i), self.encontraConjunto(j)
            if(self.ranking[x] == self.ranking[y]):
                self.P[y] = x
            else:
                self.P[x] = y
                if(self.ranking[x] == self.ranking[y]):
                    self.ranking[y] += 1

def comp(aresta):
    return aresta[2]

def Kruskal(grafo, n):
    resposta = 0
    grafo.sort(key=comp)

    ub = UniaoBusca(n)
    for aresta in grafo:
        if(not ub.mesmoConjunto(aresta[0], aresta[1])):
            resposta += aresta[2]
            ub.uneConjuntos(aresta[0], aresta[1])
    
    return resposta

while True:
    try:
        n, m = [int(x) for x in input().strip().split(' ')]

        if(n == 0 and m == 0):
            break

        grafo = []
        for _ in range(m):
            grafo.append([int(x) for x in input().strip().split(' ')])
        resposta = sum([aresta[2] for aresta in grafo])

        resposta -= Kruskal(grafo, n)

        print(resposta)
    except EOFError:
        break