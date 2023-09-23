# União-busca

## Motivação

A estrutura de dados união-busca é uma estrutura montada para eficientemente particionar diferentes elementos em subconjuntos distintos, providenciando operações de verificar rapidamente se dois elementos estão no mesmo subconjunto ou não e de juntar dois subconjuntos diferentes em um.

Sua aplicação prática mais famosa é no [algoritmo de Kruskal](../../grafos/arvore-geradora-minima/README.md), para auxiliar a encontrar árvores geradoras mínimas de um grafo conexo.

## Detalhes

A estrutura funciona através de dois vetores. O primeiro vetor, que chamaremos que $P$, é esquematizado de uma forma que, para cada elemento, é guardado o subconjunto ao qual o elemento faz parte. Normalmente, esse vetor é inicializado com cada elemento em seu próprio subconjunto, ou seja, tal vetor com $n$ posições seria inicialmente valorado tal que $P[i] = i, \forall{1 \leq i \leq n}$. O segundo vetor, por sua vez, que chamaremos de $ranking$, é esquematizado de forma a manter um $ranking$ dos elementos, dando prioridade de acordo com o uso dos elementos. Inicialmente, ele é zero para todos os elementos, ou seja, $ranking[i] = 0, \forall{1 \leq i \leq n}$.

A partir da inicialização, iremos definir três operações distintas:
1. $encontraConjunto(i)$: Retornar a qual subconjunto o elemento $i$ pertence;
2. $mesmoConjunto(i ,j)$: Checar se os elementos $i$ e $j$ fazem parte do mesmo subconjunto;
3. $uneConjuntos(i, j)$: Unir os dois subconjuntos que possuem $i$ e $j$.

### $encontraConjunto(i)$

Para essa operação, temos a seguindo recorrência:

$$encontraConjunto(i) = \begin{cases}
i, \text{se } P[i] = i \\
encontraConjunto(P[i]), \text{caso contrário}
\end{cases}$$

A ideia aqui é simples. Se $P[i] = i$, então quer dizer que $i$ está em seu próprio subconjunto, mas se $P[i]$ tiver outro valor, isso significa que, na verdade, ele está no mesmo subconjunto de $P[i]$, que precisamos descobrir qual que é. Essa recorrência vai se retornando até que cheguemos a algum elemento, de tal forma que então descobrimos o subconjunto de $i$.

Esta operação tem complexidade $\approx O(1)$, pois normalmente fazemos [memorização](../../paradigmas/memorizacao/README.md) para não precisar fazer a recorrência inteira toda vez.

### $mesmoConjunto(i, j)$

Para checar se dois elementos são do mesmo subconjunto, basta ver se $encontraConjunto(i) = encontraConjunto(j)$, que também tem complexidade $\approx O(1)$.

### $uneConjuntos(i, j)$

Se $mesmoConjunto(i, j)$ for verdadeiro, nada precisa ser feito. Caso contrário, segue-se em frente.

Para unir os dois subconjuntos de $i$ e $j$ no mesmo subconjunto, primeiro devemos saber em que subconjunto cada um dos elementos estão, então precisamos obter valores $x$ e $y$ tal que $x = encontraConjunto(i)$ e $y = encontraConjunto(j)$. A partir daí, precisamos escolher qual subconjunto vai entrar no outro: ou $P[y]$ se torna $x$ ou $P[x]$ se torna $y$. Para decidirmos então, usamos o segundo vetor da estrutura de união-busca, o vetor de $ranking$, decidindo de acordo com o maior _ranking_: $ranking[x]$ ou $ranking[y]$. Em caso de empate, você pode escolher qualquer um e aumentar em um um dos _rankings_ para evitar um futuro empate novamente.

A razão do vetor de _ranking_ existir é tornar o algoritmo mais eficiente, já que com este pode-se convergir mais rapidamente para um número e evitar vários caminhos emaranhados na hora de chamar $encontraConjunto$.

## Implementações

Único detalhe importante na implementação é a escolha de usar [memorização](../../paradigmas/memorizacao/README.md) na recursão do $encontraConjunto$ para poder atualizar os subconjuntos dos elementos à medida que for precisando. Essa parte é essencial para manter a complexidade do algoritmo o mais baixa possível.

### C
```c
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
```

### C++
```cpp
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
```

### C#
```cs
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
```

### Java
```java
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
```

### JavaScript
```js
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
```

### Python
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
```