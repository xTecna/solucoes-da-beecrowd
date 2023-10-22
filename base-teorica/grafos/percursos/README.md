# Percursos em grafos

## Motivação

Existem algumas maneiras conhecidas de percorrer grafos que nos ajudam a resolver sistematicamente diversos tipos de problemas. As duas mais famosas são a busca em profundidade (_Depth-First Search_) e a busca em largura (_Breadth-First Search_). O nome "busca em" não necessariamente significa busca de elemento no grafo, mas outras formas de busca como, por exemplo, menores percursos e outras informações que podem ser obtidas em forma de grafo.

O [VisuAlgo](https://visualgo.net) é um _site_ muito bacana para ver códigos e algoritmos funcionando em tempo real. Confira a sessão deles de [percursos em grafos](https://visualgo.net/en/dfsbfs) para entender iterativamente como os algoritmos apresentados aqui funcionam (_site_ em inglês).

## Busca em profundidade

A busca em profundidade, também conhecida por _Depth-First Search_ (e por isso abreviada por DFS), parte da ideia natural que normalmente teríamos seria de começar a partir de um determinado vértice e ir percorrendo seus vizinhos, caso eles já não tenham sido percorridos.

### C
```c
void DFS(int *visitado, int **grafo, int n, int u) {
    int v;
    visitado[u] = 1;

    printf("%d\n", u);

    for (v = 0; v < n; ++v) {
        if (grafo[u][v] > 0 && visitado[v] == 0) {
            DFS(visitado, grafo, n, v);
        }
    }
}

// Externamente
int i;
for(i = 0; i < n; ++i){
    if(visitado[i] == 0){
        DFS(i);
    }
}
```

### C++
```cpp
void DFS(vector<bool> &visitado, vector<vector<int>> &grafo, int u) {
    visitado[u] = true;

    cout << u << endl;

    for (int i = 0; i < grafo[u].size(); i++) {
        int v = grafo[u][i];

        if (!visitado[v]) {
            DFS(visitado, grafo, v);
        }
    }
}

// Externamente
for(int i = 0; i < n; ++i){
    if(!visitado[i]){
        DFS(i);
    }
}
```

### C#
```cs
static void DFS(ref List<bool> visitado, ref List<List<int>> grafo, int u){
    visitado[u] = true;

    Console.WriteLine(u);

    for(int i = 0; i < grafo[u].Count; ++i){
        int v = grafo[u][i];
        
        if(!visitado[v]){
            DFS(ref visitado, ref grafo, v);
        }
    }
}

// Externamente
for(int i = 0; i < n; ++i){
    if(!visitado[n]){
        DFS(i);
    }
}
```

### Java
```java
public static void DFS(ArrayList<Boolean> visitado, ArrayList<ArrayList<Integer>> grafo, int u){
    visitado.set(u, true);

    System.out.println(u);

    for(int i = 0; i < grafo.get(u).size(); ++i){
        int v = grafo.get(u).get(i);
        
        if(!visitado.get(v)){
            DFS(visitado, grafo, v);
        }
    }
}

// Externamente
for(int i = 0; i < n; ++i){
    if(!visitado[i]){
        DFS(i);
    }
}
```

### JavaScript
```js
const DFS = (visitado, grafo, u) => {
    visitado[u] = true;

    console.log(u);

    for (let i = 0; i < grafo[u].length; ++i) {
        let v = grafo[u][i];

        if (!visitado[v]) {
            DFS(visitado, grafo, v);
        }
    }
}

// Externamente
for(let i = 0; i < n; ++i){
    if(!visitado[i]){
        DFS(i);
    }
}
```

### Python
```py
def DFS(visitado, grafo, u):
    visitado[u] = True

    print(u)

    for i in range(len(grafo[u])):
        v = grafo[u][i]

        if(not visitado[v]):
            DFS(visitado, grafo, v)

# Externamente
for i in range(n):
    if not visitado[i]:
        DFS(i)
```

## Busca em largura

A busca em largura, também conhecida por _Breadth-First Search_ (e por isso abreviada por BFS), por sua vez, parte da ideia de buscar a árvore em níveis, olhando cada nível da árvore um por vez. Esse tipo de busca é comumente usada para determinar o caminho mínimo de um grafo ou minimizar o custo de algo, já que naturalmente esse algoritmo tenta fazer o menos número de passos possíveis.

### C
```c
void BFS(int *visitado, int **grafo, int n, int u) {
    int v;
    struct fila f;

    inicializa(&f);

    push(&f, u);

    while (!empty(&f)) {
        int v = front(&f);
        pop(&f);

        visitado[v] = 1;

        printf("%d\n", v);

        for (int i = 0; i < n; ++i) {
            if (grafo[v][i] > 0 && visitado[i] == 0) {
                push(&f, i);
            }
        }
    }

    destroi(&f);
}

// Externamente
for (int i = 0; i < n; ++i) {
    if (!visitado[i]) {
        BFS(visitado, grafo, n, 0);
    }
}
```

### C++
```cpp
void BFS(vector<bool> &visitado, vector<vector<int>> &grafo, int u) {
    queue<int> fila;

    fila.push(u);

    while (!fila.empty()) {
        int v = fila.front();
        fila.pop();

        visitado[v] = true;

        cout << v << endl;

        for (int i = 0; i < grafo[v].size(); ++i) {
            int w = grafo[v][i];

            if (!visitado[w]) {
                fila.push(w);
            }
        }
    }
}

// Externamente
for (int i = 0; i < n; ++i) {
    if (!visitado[i]) {
        BFS(visitado, grafo, i);
    }
}
```

### C#
```cs
static void BFS(ref List<bool> visitado, ref List<List<int>> grafo, int u){
    Queue<int> fila = new Queue<int>();

    fila.Enqueue(u);

    while(fila.Count > 0){
        int v = fila.Peek();
        fila.Dequeue();

        visitado[v] = true;

        Console.WriteLine(v);

        for(int i = 0; i < grafo[v].Count; ++i){
            int w = grafo[v][i];

            if(!visitado[w]){
                fila.Enqueue(w);
            }
        }
    }
}

// Externamente
for(int i = 0; i < n; ++i){
    if(!visitados[i]){
        BFS(ref visitados, ref grafo, i);
    }
}
```

### Java
```java
public static void DFS(ArrayList<Boolean> visitado, ArrayList<ArrayList<Integer>> grafo, int u){
    LinkedList<Integer> fila = new LinkedList<Integer>();

    fila.add(u);

    while(!fila.isEmpty()){
        int v = fila.remove();

        visitado.set(v, true);

        System.out.println(v);

        for(int i = 0; i < grafo.get(v).size(); ++i){
            int w = grafo.get(v).get(i);

            if(!visitado.get(w)){
                fila.add(w);
            }
        }
    }
}

// Externamente
for(int i = 0; i < n; ++i){
    if(!visitado.get(i)){
        BFS(visitado, grafo, i);
    }
}
```

### JavaScript
```js
const BFS = (visitado, grafo, u) => {
    let fila = new Fila();

    fila.push(u);

    while(!fila.empty()){
        let v = fila.front();
        fila.pop();

        visitado[v] = true;

        console.log(v);

        for(let i = 0; i < grafo[v].length; i++){
            let w = grafo[v][i];
            
            if(!visitado[w]){
                fila.push(w);
            }
        }
    }
}

// Externamente
for(let i = 0; i < n; ++i){
    if(!visitado[i]){
        BFS(visitado, grafo, i);
    }
}
```

### Python
```py
def BFS(visitado, grafo, u):
    fila = collections.deque()

    fila.appendleft(u)

    while (len(fila) > 0):
        v = fila.pop()

        visitado[v] = True

        print(v)

        for i in range(len(grafo[v])):
            w = grafo[v][i]

            if not visitado[w]:
                fila.appendleft(w)

# Externamente
for i in range(n):
    if not visitado[i]:
        BFS(visitado, grafo, i)
```

## Problemas

* [1076 - Desenhando Labirintos](../../../problemas/grafos/1076/README.md)