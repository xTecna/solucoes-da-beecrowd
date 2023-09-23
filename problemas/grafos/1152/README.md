# 1152 - Estradas Escuras

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1152)

## Solução

Essa é uma aplicação direta do algoritmo de geração de [árvore geradora mínima](../../../base-teorica/grafos/arvore-geradora-minima/README.md). Após aplicar o algoritmo, basta remover a soma de todos os graus com a soma dos graus da árvore geradora mínima.

### Alternativa 1 - Algoritmo de Kruskal

#### C99
```c
#include <stdio.h>
#include <stdlib.h>

struct UniaoBusca
{
    int n;
    int *P, *ranking;
};

void inicializa(struct UniaoBusca *UB, int n){
    UB->n = n;
    UB->P = (int*)malloc(n * sizeof(int));
    UB->ranking = (int*)malloc(n * sizeof(int));
    for(int i = 0; i < n; ++i){
        UB->P[i] = i;
    }
}

void destroi(struct UniaoBusca *UB){
    UB->n = 0;
    free(UB->P);
    free(UB->ranking);
}

int encontraConjunto(struct UniaoBusca *UB, int i){
    if(UB->P[i] == i){
        return i;
    }
    UB->P[i] = encontraConjunto(UB, UB->P[i]);
    return UB->P[i];
}

int mesmoConjunto(struct UniaoBusca *UB, int i, int j){
    return encontraConjunto(UB, i) == encontraConjunto(UB, j);
}

void uneConjuntos(struct UniaoBusca *UB, int i, int j){
    if (!mesmoConjunto(UB, i, j)){
        int x = encontraConjunto(UB, i), y = encontraConjunto(UB, j);
        if(UB->ranking[x] > UB->ranking[y]){
            UB->P[y] = x;
        }else{
            UB->P[x] = y;
            if(UB->ranking[x] == UB->ranking[y]){
                UB->ranking[y]++;
            }
        }
    }
}

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

int main() {
    int i, n, m, u, v, p;
    struct Aresta *grafo;

    while(scanf("%d %d\n", &n, &m) != EOF){
        if(n == 0 && m == 0){
            break;
        }
        
        struct Aresta *grafo = (struct Aresta *)malloc(m * sizeof(struct Aresta));

        int resposta = 0;
        for(i = 0; i < m; ++i){
            scanf("%d %d %d\n", &u, &v, &p);
            grafo[i].u = u;
            grafo[i].v = v;
            grafo[i].peso = p;
            resposta += grafo[i].peso;
        }
        resposta -= Kruskal(grafo, n, m);

        printf("%d\n", resposta);

        free(grafo);
    }

    return 0;
}
```

#### C++20
```cpp
#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

class UniaoBusca
{
    private:
    vector<int> P, ranking;
    
    public:
    UniaoBusca(int n){
        ranking.assign(n, 0);
        P.assign(n, 0);
        for(int i = 0; i < n; ++i){
            P[i] = i;
        }
    }
    
    int encontraConjunto(int i){
        if(P[i] == i){
            return i;
        }
        P[i] = encontraConjunto(P[i]);
        return P[i];
    }
    
    bool mesmoConjunto(int i, int j){
        return encontraConjunto(i) == encontraConjunto(j);
    }
    
    void uneConjuntos(int i, int j){
        if(!mesmoConjunto(i, j)){
            int x = encontraConjunto(i), y = encontraConjunto(j);
            if(ranking[x] > ranking[y]){
                P[y] = x;
            }else{
                P[x] = y;
                if(ranking[x] == ranking[y]){
                    ranking[y]++;
                }
            }
        }
    }
};

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

int main() {
    int n, m, u, v, p;
    vector<pair<int, pair<int, int>>> grafo;

    while(cin >> n >> m){
        if(n == 0 && m == 0){
            break;
        }

        grafo.assign(m, pair<int, pair<int, int>>(0, pair<int, int>(0, 0)));
        int resposta = 0;
        for(int i = 0; i < m; ++i){
            cin >> grafo[i].second.first >> grafo[i].second.second >> grafo[i].first;
            resposta += grafo[i].first;
        }

        resposta -= Kruskal(grafo, n, m);

        cout << resposta << endl;
    }

    return 0;
}
```

#### C#
```cs
using System;
using System.Collections.Generic;
using System.Runtime;
using System.Linq;

class UniaoBusca {
    private int[] P, ranking;
    
    public UniaoBusca(int n){
        this.ranking = new int[n];
        this.P = new int[n];
        for(int i = 0; i < n; ++i){
            this.P[i] = i;
        }
    }
    
    public int encontraConjunto(int i){
        if(this.P[i] == i){
            return i;
        }
        this.P[i] = this.encontraConjunto(this.P[i]);
        return this.P[i];
    }
    
    public bool mesmoConjunto(int i, int j){
        return this.encontraConjunto(i) == this.encontraConjunto(j);
    }
    
    public void uneConjuntos(int i, int j){
        if(!mesmoConjunto(i, j)){
            int x = this.encontraConjunto(i), y = this.encontraConjunto(j);
            if(this.ranking[x] > this.ranking[y]){
                this.P[y] = x;
            }else{
                this.P[x] = y;
                if(this.ranking[x] == this.ranking[y]){
                    this.ranking[y]++;
                }
            }
        }
    }
}

class URI {
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

    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int n = numeros[0], m = numeros[1];
            if(n == 0 && m == 0){
                break;
            }
            
            int resposta = 0;
            List<Tuple<int, int, int>> grafo = new List<Tuple<int, int, int>>();
            for(int i = 0; i < m; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                grafo.Add(new Tuple<int, int, int>(numeros[2], numeros[0], numeros[1]));
                resposta += grafo[i].Item1;
            }
            
            resposta -= Kruskal(ref grafo, n, m);
            
            Console.WriteLine(resposta);
        }
    }
}
```

#### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static class UniaoBusca {
        private int[] P, ranking;
        
        public UniaoBusca(int n){
            this.ranking = new int[n];
            this.P = new int[n];
            for(int i = 0; i < n; ++i){
                this.P[i] = i;
            }
        }
        
        public int encontraConjunto(int i){
            if(this.P[i] == i){
                return i;
            }
            this.P[i] = this.encontraConjunto(this.P[i]);
            return this.P[i];
        }
        
        public boolean mesmoConjunto(int i, int j){
            return this.encontraConjunto(i) == this.encontraConjunto(j);
        }
        
        public void uneConjuntos(int i, int j){
            if(!this.mesmoConjunto(i, j)){
                int x = this.encontraConjunto(i), y = this.encontraConjunto(j);
                if(this.ranking[x] > this.ranking[y]){
                    this.P[y] = x;
                }else{
                    this.P[x] = y;
                    if(this.ranking[x] == this.ranking[y]){
                        this.ranking[y]++;
                    }
                }
            }
        }
    }

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

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int n = Integer.parseInt(entrada[0]);
            int m = Integer.parseInt(entrada[1]);

            if(n == 0 && m == 0){
                break;
            }

            int resposta = 0;
            Aresta[] grafo = new Aresta[m];
            for(int i = 0; i < m; ++i){
                entrada = in.readLine().trim().split(" ");
                grafo[i] = new Aresta(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]), Integer.parseInt(entrada[2]));
                resposta += grafo[i].peso;
            }

            resposta -= Kruskal(grafo, n, m);

            System.out.println(resposta);
        }
    }
}
```

#### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class UniaoBusca {
    constructor(n) {
        this.ranking = [];
        this.P = [];
        for(let i = 0; i < n; ++i){
            this.ranking.push(0);
            this.P.push(i);
        }
    }
    
    encontraConjunto(i){
        if(this.P[i] === i){
            return i;
        }
        this.P[i] = this.encontraConjunto(this.P[i]);
        return this.P[i];
    }
    
    mesmoConjunto(i, j){
        return this.encontraConjunto(i) === this.encontraConjunto(j);
    }
    
    uneConjuntos(i, j){
        if(!this.mesmoConjunto(i, j)){
            let [x, y] = [this.encontraConjunto(i), this.encontraConjunto(j)];
            if(this.ranking[x] > this.ranking[y]){
                this.P[y] = x;
            }else{
                this.P[x] = y;
                if(this.ranking[x] == this.ranking[y]){
                    this.ranking[y]++;
                }
            }
        }
    }
}

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

let p = 0;
while(p < lines.length){
    let [n, m] = lines[p++].trim().split(' ').map(x => parseInt(x));

    if(n === 0 && m === 0){
        break;
    }

    let grafo = [];
    for(let i = 0; i < m; ++i){
        grafo.push(lines[p++].trim().split(' ').map(x => parseInt(x)));
    }
    let resposta = grafo.reduce((acc, cur) => acc + cur[2], 0);

    resposta -= Kruskal(grafo, n, m);

    console.log(resposta);
}
```

#### Python 3.9
```py
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
```

### Alternativa 2 - Algoritmo de Prim

#### C99
```c
#include <stdio.h>
#include <stdlib.h>

struct ListaNo{
    int chave, valor;
    struct ListaNo *anterior, *proximo;
};

void inicializaListaNo(struct ListaNo *ln){
    ln->chave = 0;
    ln->valor = 0;
    ln->anterior = NULL;
    ln->proximo = NULL;
}

void destroiListaNo(struct ListaNo *ln){
    ln->chave = 0;
    ln->valor = 0;
    ln->anterior = NULL;
    ln->proximo = NULL;
}

struct ListaEncadeada{
    struct ListaNo *comeco, *final;
};

void inicializaListaEncadeada(struct ListaEncadeada *le){
    le->comeco = NULL;
    le->final = NULL;
}

void destroiListaEncadeada(struct ListaEncadeada *le){
    struct ListaNo *no = le->comeco;
    while(no != NULL){
        struct ListaNo *removido = no;
        no = no->proximo;
        destroiListaNo(removido);
        free(removido);
    }
    le->comeco = NULL;
    le->final = NULL;
}

void adicionaListaEncadeada(struct ListaEncadeada *le, int chave, int valor){
    struct ListaNo *no = (struct ListaNo *)malloc(sizeof(struct ListaNo));
    inicializaListaNo(no);
    no->chave = chave;
    no->valor = valor;

    if(le->comeco == NULL){
        le->comeco = no;
        le->final = no;
    }else{
        no->anterior = le->final;
        le->final->proximo = no;
        le->final = no;
    }
}

struct Grafo
{
    struct ListaEncadeada *arestas;
};

void inicializaGrafo(struct Grafo *g, int n){
    int i;
    g->arestas = (struct ListaNo *)malloc(n * sizeof(struct ListaEncadeada));
    for(i = 0; i < n; ++i){
        inicializaListaEncadeada(&(g->arestas[i]));
    }
}

void destroiGrafo(struct Grafo *g, int n){
    int i;
    for(i = 0; i < n; ++i){
        destroiListaEncadeada(&(g->arestas[i]));
    }
    free(g->arestas);
}

void adicionaAresta(struct Grafo *g, int u, int v, int peso){
    adicionaListaEncadeada(&(g->arestas[u]), v, peso);
    adicionaListaEncadeada(&(g->arestas[v]), u, peso);
}

struct Aresta
{
    int u, v, peso;
};

int comp(struct Aresta a, struct Aresta b){
    return b.peso - a.peso;
}

struct FilaDePrioridade
{
    int tamanho;
    struct Aresta *arvore;
};

void inicializaFilaDePrioridade(struct FilaDePrioridade *fp, int capacidade){
    fp->tamanho = 0;
    fp->arvore = (struct Aresta*)malloc(capacidade * sizeof(struct Aresta));
}

void destroiFilaDePrioridade(struct FilaDePrioridade *fp){
    fp->tamanho = 0;
    free(fp->arvore);
}

int pai(int i){
    return i/2;
}

int filhoEsquerdo(int i){
    return 2*i;
}

int filhoDireito(int i){
    return 2*i + 1;
}

void corrigeSubindo(struct FilaDePrioridade *fp, int indice){
    if(indice == 1){
        return;
    }
    
    int acima = pai(indice);
    if(comp(fp->arvore[acima], fp->arvore[indice]) < 0){
        struct Aresta temp = fp->arvore[acima];
        fp->arvore[acima] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeSubindo(fp, acima);
    }
}

void push(struct FilaDePrioridade *fp, struct Aresta valor){
    fp->tamanho += 1;
    fp->arvore[fp->tamanho] = valor;
    corrigeSubindo(fp, fp->tamanho);
}

void corrigeDescendo(struct FilaDePrioridade *fp, int indice){
    int abaixo = filhoEsquerdo(indice);
    if(abaixo > fp->tamanho){
        return;
    }
    if(comp(fp->arvore[indice], fp->arvore[abaixo]) < 0){
        struct Aresta temp = fp->arvore[abaixo];
        fp->arvore[abaixo] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeDescendo(fp, abaixo);
    }
    
    abaixo = filhoDireito(indice);
    if(abaixo > fp->tamanho){
        return;
    }
    if(comp(fp->arvore[indice], fp->arvore[abaixo]) < 0){
        struct Aresta temp = fp->arvore[abaixo];
        fp->arvore[abaixo] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeDescendo(fp, abaixo);
    }
}

void pop(struct FilaDePrioridade *fp){
    if(fp->tamanho == 0){
        return;
    }
    
    struct Aresta temp = fp->arvore[1];
    fp->arvore[1] = fp->arvore[fp->tamanho];
    fp->arvore[fp->tamanho] = temp;
    fp->tamanho -= 1;
    
    corrigeDescendo(fp, 1);
}

struct Aresta top(struct FilaDePrioridade *fp){
    return fp->arvore[1];
}

int empty(struct FilaDePrioridade *fp){
    return fp->tamanho == 0;
}

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

int main() {
    int n, m, u, v, peso;
    struct Grafo grafo;

    while(scanf("%d %d\n", &n, &m) != EOF){
        if(n == 0 && m == 0){
            break;
        }

        int resposta = 0;
        inicializaGrafo(&grafo, n);
        for(int i = 0; i < m; ++i){
            scanf("%d %d %d\n", &u, &v, &peso);
            adicionaAresta(&grafo, u, v, peso);
            resposta += peso;
        }

        resposta -= Prim(&grafo, n, m);

        printf("%d\n", resposta);

        destroiGrafo(&grafo, n);
    }

    return 0;
}
```

#### C++20
```cpp
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

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

int main() {
    int n, m, u, v, p;
    vector<vector<pair<int, int>>> grafo;

    while(cin >> n >> m){
        if(n == 0 && m == 0){
            break;
        }

        grafo.assign(n, vector<pair<int, int>>());
        int resposta = 0;
        for(int i = 0; i < m; ++i){
            cin >> u >> v >> p;
            resposta += p;
            grafo[u].push_back(pair<int, int>(v, p));
            grafo[v].push_back(pair<int, int>(u, p));
        }

        resposta -= Prim(grafo, n);

        cout << resposta << endl;

        for(int i = 0; i < n; ++i){
            grafo[i].clear();
        }
        grafo.clear();
    }

    return 0;
}
```

#### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class FilaDePrioridade {
    private List<Tuple<int, int>> arvore;

    public FilaDePrioridade(){
        this.arvore = new List<Tuple<int, int>>();
        this.arvore.Add(new Tuple<int, int>(0, 0));
    }

    private int pai(int i){
        return i/2;
    }

    private int filhoEsquerdo(int i){
        return 2*i;
    }

    private int filhoDireito(int i){
        return 2*i + 1;
    }

    private int comp(Tuple<int, int> a, Tuple<int, int> b){
        return b.Item2 - a.Item2;
    }

    private void corrigeSubindo(int indice){
        if(indice == 1){
            return;
        }

        int acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            Tuple<int, int> temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    public void push(Tuple<int, int> valor){
        this.arvore.Add(valor);
        this.corrigeSubindo(this.arvore.Count - 1);
    }

    private void corrigeDescendo(int indice){
        int abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    public void pop(){
        if(this.arvore.Count <= 1){
            return;
        }

        Tuple<int, int> temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.Count - 1];
        this.arvore[this.arvore.Count - 1] = temp;
        this.arvore.RemoveAt(this.arvore.Count - 1);
        this.corrigeDescendo(1);
    }

    public Tuple<int, int> top(){
        return this.arvore[1];
    }

    public bool empty(){
        return this.arvore.Count == 1;
    }
}

class URI {
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

    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int n = numeros[0], m = numeros[1];
            if(n == 0 && m == 0){
                break;
            }
            
            int resposta = 0;
            List<List<Tuple<int, int>>> grafo = new List<List<Tuple<int, int>>>();
            for(int i = 0; i < n; ++i){
                grafo.Add(new List<Tuple<int, int>>());
            }
            for(int i = 0; i < m; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                grafo[numeros[0]].Add(new Tuple<int, int>(numeros[1], numeros[2]));
                grafo[numeros[1]].Add(new Tuple<int, int>(numeros[0], numeros[2]));
                resposta += numeros[2];
            }
            
            resposta -= Prim(ref grafo, n);
            
            Console.WriteLine(resposta);
        }
    }
}
```

#### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.PriorityQueue;

public class Main {

    public static class Aresta implements Comparable {
        public int u, v, peso;

        public Aresta(){
            this.u = 0;
            this.v = 0;
            this.peso = 0;
        }

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

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int n = Integer.parseInt(entrada[0]);
            int m = Integer.parseInt(entrada[1]);

            if(n == 0 && m == 0){
                break;
            }

            int resposta = 0;
            ArrayList<ArrayList<Aresta>> grafo = new ArrayList<ArrayList<Aresta>>();
            for(int i = 0; i < n; ++i){
                grafo.add(new ArrayList<Aresta>());
            }
            for(int i = 0; i < m; ++i){
                entrada = in.readLine().trim().split(" ");
                int u = Integer.parseInt(entrada[0]);
                int v = Integer.parseInt(entrada[1]);
                int peso = Integer.parseInt(entrada[2]);
                grafo.get(u).add(new Aresta(u, v, peso));
                grafo.get(v).add(new Aresta(v, u, peso));
                resposta += peso;
            }

            resposta -= Prim(grafo, n);

            System.out.println(resposta);
        }
    }
}
```

#### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class FilaDePrioridade {
    constructor() {
        this.arvore = [[0, 0]];
    }

    pai(i) {
        return Math.floor(i/2);
    }

    filhoEsquerdo(i){
        return 2*i;
    }

    filhoDireito(i){
        return 2*i + 1;
    }

    comp(a, b){
        return b[1] - a[1];
    }

    corrigeSubindo(indice){
        if(indice === 1){
            return;
        }

        let acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            let temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    push(valor){
        this.arvore.push(valor);
        this.corrigeSubindo(this.arvore.length - 1);
    }

    corrigeDescendo(indice){
        let abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    pop(){
        if(this.arvore.length <= 1){
            return;
        }

        let temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.length - 1];
        this.arvore[this.arvore.length - 1] = temp;
        this.arvore.pop();
        this.corrigeDescendo(1);
    }

    top(){
        return this.arvore[1];
    }

    empty(){
        return this.arvore.length === 1;
    }
}

const visitaVertice = (visitados, grafo, fila, u) => {
    visitados[u] = true;

    for(let i = 0; i < grafo[u].length; ++i){
        let aresta = grafo[u][i];
        if(!visitados[aresta[0]]){
            fila.push(aresta);
        }
    }
}

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

let p = 0;
while(p < lines.length){
    let [n, m] = lines[p++].trim().split(' ').map(x => parseInt(x));

    if(n === 0 && m === 0){
        break;
    }

    let grafo = [];
    for(let i = 0; i < n; ++i){
        grafo.push([]);
    }
    let resposta = 0;
    for(let i = 0; i < m; ++i){
        let aresta = lines[p++].trim().split(' ').map(x => parseInt(x));
        grafo[aresta[0]].push([aresta[1], aresta[2]]);
        grafo[aresta[1]].push([aresta[0], aresta[2]]);
        resposta += aresta[2];
    }

    resposta -= Prim(grafo, n);

    console.log(resposta);
}
```

#### Python 3.9
```py
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
```