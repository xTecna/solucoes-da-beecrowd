# Fila de prioridade

## Motivação

A fila de prioridade (ou *heap*) é uma estrutura de dados usada para organizar elementos de forma que o primeiro elemento a ser removido é sempre o de prioridade mais alta da lista. Na implementação mais comum de fila de prioridades, ela é graficamente representada por uma árvore binária, com a seguinte regra: para cada nó, sua prioridade é maior ou igual à prioridade de seus filhos. Com isso, a diferença de uma fila de prioridades para uma fila normal é que os elementos não saem na ordem de entrada e sim por ordem de prioridade. A prioridade pode ser o maior elemento, o menor elemento ou qualquer outro critério estabelecido.

## Implementações

Apesar da representação gráfica ser por árvores, a implementação ainda pode usar vetores. Se representarmos a posição $1$ como a posição do nó raiz, podemos ter a posição $2$ representando o nó esquerdo e a posição $3$ o nó direito. A partir daí, para qualquer posição $i$, seu filho esquerdo está na posição $2i$ e o direito está na posição $2i + 1$. Fazendo assim, teremos uma árvore binária representada em um vetor e podemos percorrê-la como se fosse uma árvore em memória.

Além disso, lembrando da regra de que cada nó precisa ter maior ou mesma prioridade que seus filhos, essa regra precisa ser seguida para todo estado da fila de prioridade, não importa qual elemento é acrescentado ou removido. Para isso, presumindo que temos uma fila de prioridades que já segue a regra, seguiremos os seguintes procedimentos:

### Adicionar um elemento (complexidade $O(\log{n})$)

1. Adiciona o elemento no fim da fila.
2. Se o elemento tiver uma prioridade maior que seu pai, a regra está sendo violada. Nesse caso, troca-se os dois elementos de lugar.
3. Repete o passo 2 até que a regra não esteja mais sendo violada ou não haja mais um elemento pai.

### Remover um elemento (complexidade $O(\log{n})$)

1. Troca-se de lugar o primeiro elemento da fila com o último.
2. Remove o último elemento da fila.
3. Se o elemento do topo tiver menor prioridade que um de seus filhos, a regra está sendo violada. Nesse caso, troca-se com o primeiro filho que tenha maior prioridade.
4. Repetir o passo 3 até que a regra não esteja mais sendo violada ou não haja mais elementos filhos.

As operações que vamos implementar aqui então são:

* `push`: colocar um elemento na fila de prioridades.
* `pop`: remover o elemento com maior prioridade da fila de prioridades.
* `top`: ver qual é o elemento com maior prioridade.
* `size`: ver quantos elementos têm na fila.
* `empty`: se a fila está vazia.

### C

Aqui em C escolhemos implementar de uma maneira um pouco diferente: usando a ideia de listas encadeadas em vez de vetores, já que em C não temos como fazer vetores de tamanho variável. No histórico de mudanças tem uma versão desse algoritmo implementada com um vetor de tamanho fixo, mas isso também limita o tamanho da nossa fila de prioridade, o que pode ser algo desejável ou não.

No caso de uma solução com lista encadeada, os cálculos de índice de pai e filho não fazem mais sentido, já que teremos referência direta a todos eles no próprio nó. Por outro lado, é importante ter um ponteiro apontando para o final da árvore para sempre sabermos onde adicionar novos nós. Com esse ponteiro último entretanto, ainda temos que decidir se o novo nó a adicionar será irmão ou filho dele. Enfim, são umas complicações a mais para não termos que nos preocupar com o tamanho da fila de prioridade.

```c
struct filaDePrioridadeNo
{
    int valor;
    struct filaDePrioridadeNo *pai, *esq, *dir;
};

struct filaDePrioridade
{
    int tamanho;
    struct filaDePrioridadeNo *topo, *ultimo;
};

void inicializa(struct filaDePrioridade *fp){
    fp->tamanho = 0;
    fp->topo = NULL;
    fp->ultimo = NULL;
}

void destroiNo(struct filaDePrioridadeNo *fpn){
    if(fpn->esq != NULL){
        destroiNo(fpn->esq);
    }
    if(fpn->dir != NULL){
        destroiNo(fpn->dir);
    }
    free(fpn);
}

void destroi(struct filaDePrioridade *fp){
    fp->tamanho = 0;
    if(fp->topo != NULL){
        destroiNo(fp->topo);
    }
}

void corrigeSubindo(struct filaDePrioridadeNo *fpn){
    if(fpn->pai == NULL){
        return;
    }
    
    struct filaDePrioridadeNo *pai = fpn->pai;
    if(comp(pai->valor, fpn->valor) < 0){
        int temp = pai->valor;
        pai->valor = fpn->valor;
        fpn->valor = temp;
        corrigeSubindo(pai);
    }
}

void push(struct filaDePrioridade *fp, int valor){
    fp->tamanho += 1;

    struct filaDePrioridadeNo* novoNo = (struct filaDePrioridadeNo*)malloc(sizeof(struct filaDePrioridadeNo));
    novoNo->valor = valor;
    novoNo->esq = NULL;
    novoNo->dir = NULL;

    if(fp->topo == NULL){
    	novoNo->pai = NULL;
        fp->topo = novoNo;
    }else{
    	if(fp->ultimo->pai != NULL && fp->ultimo->pai->dir == NULL){
    		novoNo->pai = fp->ultimo->pai;
    		fp->ultimo->pai->dir = novoNo;
    	}else{
    		novoNo->pai = fp->ultimo;
    		fp->ultimo->esq = novoNo;
    	}
    }
    fp->ultimo = novoNo;
    
    corrigeSubindo(novoNo);
}

void corrigeDescendo(struct filaDePrioridadeNo *fpn){
    if(fpn->esq != NULL){
        struct filaDePrioridadeNo *esq = fpn->esq;
        if(comp(fpn->valor, esq->valor) < 0){
            int temp = fpn->valor;
            fpn->valor = esq->valor;
            esq->valor = temp;
            corrigeDescendo(esq);
        }
    }
    
    if(fpn->dir != NULL){
        struct filaDePrioridadeNo *dir = fpn->dir;
        if(comp(fpn->valor, dir->valor) < 0){
            int temp = fpn->valor;
            fpn->valor = dir->valor;
            dir->valor = temp;
            corrigeDescendo(dir);
        }
    }
}

void pop(struct filaDePrioridade *fp){
    if(fp->tamanho == 0){
        return;
    }
    
    fp->tamanho -= 1;
    
    struct filaDePrioridadeNo* velhoUltimo = fp->ultimo;
	if(velhoUltimo == fp->topo){
		fp->topo = NULL;
	}else{
    	int temp = fp->topo->valor;
    	fp->topo->valor = velhoUltimo->valor;
    	velhoUltimo->valor = temp;
    	
    	if(velhoUltimo->pai != NULL && velhoUltimo->pai->esq != NULL && velhoUltimo->pai->esq != velhoUltimo){
    		velhoUltimo->pai->dir = NULL;
    		fp->ultimo = velhoUltimo->pai->esq;
    	}else{
    		if(velhoUltimo->pai != NULL){
    			velhoUltimo->pai->esq = NULL;
    		}
    		fp->ultimo = velhoUltimo->pai;
    	}
	}
    free(velhoUltimo);
    
    if(fp->topo != NULL){
    	corrigeDescendo(fp->topo);
    }
}

int top(struct filaDePrioridade *fp){
    return fp->topo->valor;
}

int empty(struct filaDePrioridade *fp){
    return fp->tamanho == 0;
}
```

### C++

C++ possui a estrutura `priority_queue` que pode ser usada através da bilioteca `queue`. Mais detalhes podem ser vistos na [documentação](https://en.cppreference.com/w/cpp/container/priority_queue).

> A lista de prioridades em C++ ordena sempre do maior pro menor, então você vai ver em muitos códigos a gente guardando os valores de prioridade com valor negativo como uma forma fácil de ordenar do menor pro maior. Também tem como mudar o comparador, mas mudar pra negativo é só mais fácil.

### C#

C# possui a estrutura `PriorityQueue` que pode ser usada através da biblioteca `System.Collections.Generic`. Mais detalhes podem ser vistos na [documentação](https://learn.microsoft.com/en-us/dotnet/api/system.collections.generic.priorityqueue-2?view=net-7.0).

Entretanto, essa biblioteca não está disponível para os problemas da beecrowd, então você pode usar essa implementação aqui. Lembrando que como a primeira posição da árvore é no índice 1, precisamos acrescentar um sentinela e mudar as verificações dos limites inferior e superior para levar em consideração esse sentinela. Outra alternativa é usar $pai(i) = \lfloor\frac{i}{2}\rfloor$, $filhoEsquerdo(i) = 2i + 1$ e $filhoDireito(i) = 2(i + 1)$ para poder começar a partir do índice 0.

```cs
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
```

### Java

A biblioteca `java.util` tem a estrutura `PriorityQueue` que pode ser usada nesse caso. Mais detalhes na [documentação](https://docs.oracle.com/javase/8/docs/api/java/util/PriorityQueue.html).

### JavaScript

As mesmas observações sobre sentinelas em C# cabe aqui também.

```js
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
```

### Python

A biblioteca `queue` possui a estrutura `ProrityQueue` que você pode usar. Confira a [documentação](https://docs.python.org/3/library/queue.html#queue.PriorityQueue) para entender melhor como ela funciona.

## Problemas

* [1340 - Eu Posso Adivinhar a Estrutura de Dados!](../../../problemas/estruturas-e-bibliotecas/1340/README.md)