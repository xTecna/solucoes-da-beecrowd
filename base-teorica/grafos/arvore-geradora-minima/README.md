# Árvore geradora mínima

## Motivação

Dado um grafo conexo $G = (V, E)$ com pesos em suas arestas, a árvore geradora mínima desse grafo é um subgrafo conexo com o menor peso em arestas possível. Na imagem abaixo, temos um grafo conexo com pesos em arestas e sua respectiva árvore geradora mínima.

![Grafo conexo com pesos em arestas (Fonte: Algorithms for Competitive Programming)](https://cp-algorithms.com/graph/MST_before.png)

![Sua respectiva árvore geradora mínima, onde o peso das arestas é o menor possível (Fonte: Algorithms for Competitive Programming)](https://cp-algorithms.com/graph/MST_before.png)

Esse problema é normalmente visto quando queremos economizar recursos, construindo o menor número de conexões possíveis com o menor custo de forma que ainda dê para um vértice alcançar qualquer outro, o que é garantindo para qualquer árvore.

Dois dos algoritmos mais famosos para resolver este problema são o algoritmo de Kruskal e o de Prim, cada um com diferentes abordagens, mas mesma complexidade de $O(|E|\log{|V|})$.

## Algoritmo de Kruskal

Esse algoritmo é baseado em uma abordagem gulosa, onde iremos ordenar as arestas por seus pesos e ir selecionando as menores arestas, onde é possível adicionar uma nova aresta à árvore caso sua adição não forme ciclos. A forma mais fácil de checar se uma aresta formaria ciclo com as já adicionadas é usando uma união-busca, que nesse caso aqui seria usado para separar cada vértice em um subconjunto onde vértices de subconjuntos iguais pertencem à mesma árvore (ou seja, faria um ciclo). Mais informações sobre esse tipo de estrutura específica podem ser encontradas na página [união-busca](../../estruturas-e-bibliotecas/union-find/README.md).

### Implementações

#### C
```c
struct Aresta
{
    int u, v, peso;
};

int comp(const void *a, const void *b){
    return ((const struct Aresta*)a)->peso - ((const struct Aresta*)b)->peso;
}

int Kruskal(struct Aresta *grafo, int n, int m){
    int i, resposta = 0;
    qsort(grafo, m, sizeof(struct Aresta), comp);

    struct UniaoBusca ub;
    inicializa(&ub, n);
    for(i = 0; i < m; ++i){
        struct Aresta atual = grafo[i];
        if(!mesmoConjunto(&ub, atual.u, atual.v)){
            resposta += atual.peso;
            uneConjuntos(&ub, atual.u, atual.v);
        }
    }
    destroi(&ub);

    return resposta;
}
```

#### C++
```cpp
int Kruskal(vector<pair<int, pair<int, int>>> &grafo, int n, int m){
    int resposta = 0;
    sort(grafo.begin(), grafo.end());

    UniaoBusca ub = UniaoBusca(n);
    for(int i = 0; i < m; ++i){
        pair<int, pair<int, int>> atual = grafo[i];
        if(!ub.mesmoConjunto(atual.second.first, atual.second.second)){
            resposta += atual.first;
            ub.uneConjuntos(atual.second.first, atual.second.second);
        }
    }

    return resposta;
}
```

#### C#
```cs
static int Kruskal(ref List<Tuple<int, int, int>> grafo, int n, int m){
    int resposta = 0;
    grafo.Sort();

    UniaoBusca ub = new UniaoBusca(n);
    for(int i = 0; i < m; ++i){
        Tuple<int, int, int> atual = grafo[i];
        if(!ub.mesmoConjunto(atual.Item2, atual.Item3)){
            resposta += atual.Item1;
            ub.uneConjuntos(atual.Item2, atual.Item3);
        }
    }

    return resposta;
}
```

#### Java
```java
public static class Aresta implements Comparable {
    public int u, v, peso;

    public Aresta(int u, int v, int peso){
        this.u = u;
        this.v = v;
        this.peso = peso;
    }

    @Override
    public boolean equals(Object obj){
        return ((Aresta)obj).u == this.u && ((Aresta)obj).v == this.v;
    }

    @Override
    public int compareTo(Object obj){
        return this.peso - ((Aresta)obj).peso;
    }
} 

public static int Kruskal(Aresta[] grafo, int n, int m){
    int resposta = 0;
    Arrays.sort(grafo);

    UniaoBusca ub = new UniaoBusca(n);
    for(int i = 0; i < m; ++i){
        Aresta atual = grafo[i];
        if(!ub.mesmoConjunto(atual.u, atual.v)){
            resposta += atual.peso;
            ub.uneConjuntos(atual.u, atual.v);
        }
    }

    return resposta;
}
```

#### JavaScript
```js
const comp = (a, b) => a[2] - b[2];

const Kruskal = (grafo, n, m) => {
    let resposta = 0;
    grafo.sort(comp);

    let ub = new UniaoBusca(n);
    for(let i = 0; i < m; ++i){
        let atual = grafo[i];
        if(!ub.mesmoConjunto(atual[0], atual[1])){
            resposta += atual[2];
            ub.uneConjuntos(atual[0], atual[1]);
        }
    }

    return resposta;
};
```

#### Python
```py
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
```

## Algoritmo de Prim

Enquanto o algoritmo de Kruskal é focado nas arestas, o algoritmo de Prim é focado nos vértices. Começando a partir de um vértice inicial $u$, o algoritmo enfileira as arestas incidentes a esse vértice em uma [fila de prioridades](../../estruturas-e-bibliotecas/fila-de-prioridade/README.md) e marca o vértice $u$ como visitado. A partir daí, para cada aresta $uv$, verifica-se se o outro vértice incidente $v$ já foi visitado e, se não for, adiciona a aresta $uv$ à árvore geradora mínima, coloca todos as outras arestas incidentes à $v$ na fila e marca $v$ como visitado.

O processo de ir colocando as arestas em uma [fila de prioridade](../../estruturas-e-bibliotecas/fila-de-prioridade/README.md) nos garante que as arestas estão sempre ordenadas das de menor para as de maior peso e o fato de estarmos verificando se o vértice já foi visitado ou não também nos garante que não teremos ciclos, já que se os dois vértices já foram visitados, significa que já temos arestas incidindo sobre ambos na árvore, ou seja, eles já estão se conectando de alguma forma.

### Implementações

#### C
```c
void visitaVertice(int *visitados, struct Grafo *g, struct FilaDePrioridade *fp, int u){
    visitados[u] = 1;

    struct ListaNo *no = g->arestas[u].comeco;
    while(no != NULL){
        int v = no->chave, peso = no->valor;
        if(!visitados[v]){
            struct Aresta aresta;
            aresta.u = u;
            aresta.v = v;
            aresta.peso = peso;
            push(fp, aresta);
        }
        no = no->proximo;
    }
}

int Prim(struct Grafo *g, int n, int m){
    int i;
    int *visitados = (int*)malloc(n * sizeof(int));
    for(i = 0; i < n; ++i){
        visitados[i] = 0;
    }
    struct FilaDePrioridade fp;
    inicializaFilaDePrioridade(&fp, m);

    visitaVertice(visitados, g, &fp, 0);

    int resposta = 0;
    while(!empty(&fp)){
        struct Aresta atual = top(&fp);
        pop(&fp);
        int u = atual.u, v = atual.v, peso = atual.peso;
        if(!visitados[v]){
            resposta += peso;
            visitaVertice(visitados, g, &fp, v);
        }
    }

    destroiFilaDePrioridade(&fp);
    free(visitados);

    return resposta;
}
```

#### C++
```cpp
void visitaVertice(vector<bool> &visitados, vector<vector<pair<int, int>>> &grafo, priority_queue<pair<int, int>> &fila, int u){
    visitados[u] = true;

    for(int i = 0; i < grafo[u].size(); ++i){
        pair<int, int> aresta = grafo[u][i];
        if(!visitados[aresta.first]){
            fila.push(pair<int, int>(-aresta.second, aresta.first));
        }
    }
}

int Prim(vector<vector<pair<int, int>>> &grafo, int n){
    int resposta = 0;
    vector<bool> visitados = vector<bool>(n, false);
    priority_queue<pair<int, int>> fila;

    visitaVertice(visitados, grafo, fila, 0);

    while(!fila.empty()){
        pair<int, int> atual = fila.top();
        fila.pop();

        int peso = atual.first, v = atual.second;
        if(!visitados[v]){
            resposta -= peso;
            visitaVertice(visitados, grafo, fila, v);
        }
    }

    return resposta;
}
```

#### C#

> Aqui a classe `URI` representa a classe principal do seu programa.

```cs
static void visitaVertice(ref List<bool> visitados, ref List<List<Tuple<int, int>>> grafo, ref FilaDePrioridade fila, int u){
    visitados[u] = true;

    for(int i = 0; i < grafo[u].Count; ++i){
        Tuple<int, int> aresta = grafo[u][i];

        if(!visitados[aresta.Item1]){
            fila.push(aresta);
        }
    }
}

static int Prim(ref List<List<Tuple<int, int>>> grafo, int n){
    List<bool> visitados = new List<bool>();
    for(int i = 0; i < n; ++i){
        visitados.Add(false);
    }

    FilaDePrioridade fila = new FilaDePrioridade();

    visitaVertice(ref visitados, ref grafo, ref fila, 0);

    int resposta = 0;
    while(!fila.empty()){
        Tuple<int, int> atual = fila.top();
        fila.pop();
        if(!visitados[atual.Item1]){
            resposta += atual.Item2;
            visitaVertice(ref visitados, ref grafo, ref fila, atual.Item1);
        }
    }

    return resposta;
}
```

#### Java
```java
public static void visitaVertice(ArrayList<Boolean> visitados, ArrayList<ArrayList<Aresta>> grafo, PriorityQueue<Aresta> fila, int u) {
    visitados.set(u, true);

    for(int i = 0; i < grafo.get(u).size(); ++i){
        Aresta aresta = grafo.get(u).get(i);
        if(!visitados.get(aresta.v))
        {
            fila.add(aresta);
        }
    }
}

public static int Prim(ArrayList<ArrayList<Aresta>> grafo, int n) {
    ArrayList<Boolean> visitados = new ArrayList<Boolean>();
    for(int i = 0; i < n; ++i){
        visitados.add(false);
    }

    PriorityQueue<Aresta> fila = new PriorityQueue<Aresta>();
    visitaVertice(visitados, grafo, fila, 0);

    int resposta = 0;
    while(!fila.isEmpty()){
        Aresta atual = fila.peek();
        fila.remove();

        if(!visitados.get(atual.v)){
            resposta += atual.peso;
            visitaVertice(visitados, grafo, fila, atual.v);
        }
    }

    return resposta;
}
```

#### JavaScript
```js
const visitaVertice = (visitados, grafo, fila, u) => {
    visitados[u] = true;

    for(let i = 0; i < grafo[u].length; ++i){
        let aresta = grafo[u][i];
        if(!visitados[aresta[0]]){
            fila.push(aresta);
        }
    }
};

const Prim = (grafo, n) => {
    let visitados = [];
    for(let i = 0; i < n; ++i){
        visitados.push(false);
    }

    let fila = new FilaDePrioridade();

    visitaVertice(visitados, grafo, fila, 0);

    let resposta = 0;
    while(!fila.empty()){
        let atual = fila.top();
        fila.pop();

        let [v, peso] = atual;
        if(!visitados[v]){
            resposta += peso;
            visitaVertice(visitados, grafo, fila, v);
        }
    }

    return resposta;
};
```

#### Python
```py
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
```