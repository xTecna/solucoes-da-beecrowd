# Árvore binária de busca

## Motivação

O enunciado do problema [1195 - Árvore Binária de Busca](../../../problemas/grafos/1195/README.md) é muito bom em explicar o que é uma árvore binária de busca e sua utilidade. A única observação que deixo é que os elementos têm valores únicos, ou seja, não é possível adicionar duas vezes o mesmo valor na árvore. Dito isso, aqui temos uma explicação de como inserir, buscar e remover elementos da árvore binária de busca com as seguintes complexidades:

| Operação | Melhor caso | Pior caso |
| -------- | ----------- | --------- |
| Inserção | $O(\log{n})$| $O(n)$    |
| Busca    | $O(\log{n})$| $O(n)$    |
| Remoção  | $O(\log{n})$| $O(n)$    |

Essas complexidades têm a ver com o formato que a árvore pode assumir, pois pode ser que pela ordem de inserção dos elementos ou tenhamos uma árvore toda completa ou uma lista encadeada em forma de árvore.

Aqui também vamos apresentar alguns algoritmos para percorrer todos os elementos da árvore dependendo da ordem em que se visita os nós, todos com complexidade $O(n)$.

## Operações principais

### Inserção

Dada uma árvore binária de busca, o processo de inserção de um valor $x$ é o seguinte, começando do topo:

1. Se não há um elemento na posição que queremos inserir o valor, o inserimos ali e o algoritmo acaba;
2. Se há um elemento $y$ na posição que queremos inserir o valor, o comparamos com esse elemento;
  1. Se $x < y$, vamos para a subárvore à esquerda;
  2. Se $x > y$, vamos para a subárvore à direita;
  3. Se $x = y$, então este elemento já está na árvore e podemos parar o algoritmo.
3. Volta ao passo 1.

### Busca

A árvore binária de busca tem esse nome por conta do processo de buscar elementos nela ser bastante parecido com a [pesquisa binária](../../estruturas-e-bibliotecas/pesquisa-binaria/README.md), já que a árvore está sempre organizada de modo aos menores estarem à esquerda e os maiores à direita. Começando do topo, temos então o seguinte algoritmo para tentar encontrar um determinado valor $x$:

1. Se não há um elemento na posição que estamos visitando, podemos parar o algoritmo, sabendeo que o valor $x$ não está na árvore binária;
2. Se há um elemento $y$ na posição que estamos visitando, o comparamos com esse elemento;
  1. Se $x < y$, vamos para a subárvore à esquerda;
  2. Se $x > y$, vamos para a subárvore à direita;
  3. Se $x = y$, então encontramos o valor $x$ e podemos parar o algoritmo.
3. Volta ao passo 1.

### Remoção

O processo de remoção de um elemento em uma árvore binária de busca depende de três casos.

1. O nó que vamos remover é uma folha;
2. O nó que vamos remover tem um filho;
3. O nó que vamos remover tem dois filhos.

No caso 1 basta apenas remover o nó normalmente.

No caso 2, ao remover o nó, precisamos passar seu filho para o nó pai. As propriedades da árvore binária de busca continuarão sendo mantidas porque se o filho estava à esquerda, então todas suas subárvores são também menores que o valor do pai e, de forma análoga, se o filho estava à direita, então todas suas subárvores são também maiores que o valor do pai.

O caso 3 é um pouco mais complicado, mas nem tanto. Se o nó tem dois filhos, isso significa que existe um valor $y$ que é o primeiro elemento maior que $x$ (já que ele tem uma subárvore direita). Com isso, fazemos o seguinte:

1. Encontrar o primeiro nó $y$ que é maior que $x$;
  1. Para encontrar esse nó, primeiro começamos pela subárvore direita de $x$ e depois repetidamente pela subárvore esquerda até encontrarmos um nó sem subárvore esquerda.
2. Como este nó $y$ não tem subárvore esquerda, então ele tem 0 ou 1 filho. Logo, seguimos com o processo de remoção do nó $y$ para seu caso;
3. Substituir o valor do nó de $x$ de $x$ para $y$.

### Percursos

A árvore binária de busca (ou qualquer árvore binária, de fato) pode ser percorrida de três maneiras diferentes: prefixa, infixa ou posfixa. A única diferença entre esses percusos é a ordem em que se decide visitar os nós.

* **Prefixa**: visita primeiro a raiz, depois a subárvore esquerda e depois a subárvore direita.
* **Infixa**: visita primeiro a subárvore esquerda, depois a raiz e depois a subárvore direita.
* **Posfixa**: visita primeiro a subárvore esquerda, depois a subárvore direita e depois a raiz.

Nas implementações você consegue ver pela recorrência que a única coisa que muda é a ordem das operações.

## Implementações

### C
```c
struct No
{
    int valor;
    struct No *pai, *esq, *dir;
};

struct ArvoreBinaria
{
    struct No* topo;
};

void inicializaNo(struct No *no){
    no->valor = 0;
    no->pai = NULL;
    no->esq = NULL;
    no->dir = NULL;
}

void destroiNo(struct No *no){
    if(no == NULL){
        return;
    }
    no->valor = 0;
    no->pai = NULL;
    destroiNo(no->esq);
    destroiNo(no->dir);
    free(no);
}

void inicializaArvoreBinaria(struct ArvoreBinaria *ab){
    ab->topo = NULL;
}

void destroiArvoreBinaria(struct ArvoreBinaria *ab){
    destroiNo(ab->topo);
}

struct No* adicionaNo(struct No *no, int valor){
    if(no == NULL){
        no = (struct No*)malloc(sizeof(struct No));
        inicializaNo(no);
        no->valor = valor;
    }else{
        if(valor < no->valor){
            no->esq = adicionaNo(no->esq, valor);
            if(no->esq != NULL){
                no->esq->pai = no;
            }
        }else if(valor > no->valor){
            no->dir = adicionaNo(no->dir, valor);
            if(no->dir != NULL){
                no->dir->pai = no;
            }
        }
    }
    
    return no;
}

void adicionaArvoreBinaria(struct ArvoreBinaria *ab, int valor){
    ab->topo = adicionaNo(ab->topo, valor);
}

struct No* buscaNo(struct No *no, int valor){
    if(no == NULL){
        return NULL;
    }else if(valor < no->valor){
        return buscaNo(no->esq, valor);
    }else if(valor == no->valor){
        return no;
    }else{
        return buscaNo(no->dir, valor);
    }
}

int buscaArvoreBinaria(struct ArvoreBinaria *ab, int valor){
    return buscaNo(ab->topo, valor) != NULL;
}

void removeNo(struct No *no){
    if(no == NULL){
        return;
    }
    
    struct No* pai = no->pai;
    if(no->esq == NULL && no->dir == NULL){
        if(pai != NULL){
            if(pai->esq == no){
                pai->esq = NULL;
            }else{
                pai->dir = NULL;
            }
        }
        destroiNo(no);
    }else if(no->esq == NULL || no->dir == NULL){
        struct No *filho = no->esq != NULL ? no->esq : no->dir;
        if(pai != NULL){
            if(pai->esq == no){
                pai->esq = filho;
            }else{
                pai->dir = filho;
            }
        }
        destroiNo(no);
    }else{
        struct No* sucessor = no->dir;
        while(sucessor->esq != NULL){
            sucessor = sucessor->esq;
        }
        no->valor = sucessor->valor;
        removeNo(sucessor);
    }
}

void removeArvoreBinaria(struct ArvoreBinaria* ab, int valor){
    struct No* no = buscaNo(ab->topo, valor);

    if(no != NULL && no->pai == NULL){
        if(no->esq == NULL && no->dir == NULL){
            ab->topo = NULL;
        }else if(no->esq == NULL || no->dir == NULL){
            ab->topo = no->esq != NULL ? no->esq : no->dir;
        }
    }
    removeNo(no);
}

void prefixaNo(struct No* no){
    if(no == NULL){
        return;
    }

    printf(" %d", no->valor);
    prefixaNo(no->esq);
    prefixaNo(no->dir);
}

void prefixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("Pre.:");
    prefixaNo(ab->topo);
    printf("\n");
}

void infixaNo(struct No* no){
    if(no == NULL){
        return;
    }
    
    infixaNo(no->esq);
    printf(" %d", no->valor);
    infixaNo(no->dir);
}

void infixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("In..:");
    infixaNo(ab->topo);
    printf("\n");
}

void posfixaNo(struct No* no){
    if(no == NULL){
        return;
    }
    
    posfixaNo(no->esq);
    posfixaNo(no->dir);
    printf(" %d", no->valor);
}

void posfixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("Post:");
    posfixaNo(ab->topo);
    printf("\n");
}
```

### C++
```cpp
class No
{
    private:
    int valor;

    public:
    No *pai, *esq, *dir;

    No(int valor, No *pai){
        this->valor = valor;
        this->pai = pai;
        this->esq = NULL;
        this->dir = NULL;
    }

    void adiciona(int valor){
        if(valor < this->valor){
            if(this->esq == NULL){
                this->esq = new No(valor, this);
            }else{
                this->esq->adiciona(valor);
            }
        }else if(valor > this->valor){
            if(this->dir == NULL){
                this->dir = new No(valor, this);
            }else{
                this->dir->adiciona(valor);
            }
        }
    }

    No* busca(int valor){
        if(this->valor == valor){
            return this;
        }
        if(valor < this->valor){
            if(this->esq == NULL){
                return NULL;
            }else{
                return this->esq->busca(valor);
            }
        }else{
            if(this->dir == NULL){
                return NULL;
            }else{
                return this->dir->busca(valor);
            }
        }
    }

    void remove(){
        if(this->esq == NULL && this->dir == NULL){
            if(this->pai != NULL){
                if(this->pai->esq == this){
                    this->pai->esq = NULL;
                }else{
                    this->pai->dir = NULL;
                }
            }
            delete this;
        }else if(this->esq == NULL || this->dir == NULL){
            No *filho = this->esq != NULL ? this->esq : this->dir;
            if(this->pai != NULL){
                if(this->pai->esq == this){
                    this->pai->esq = filho;
                }else{
                    this->pai->dir = filho;
                }
            }
            delete this;
        }else{
            No *sucessor = this->dir;
            while(sucessor->esq != NULL){
                sucessor = sucessor->esq;
            }
            this->valor = sucessor->valor;
            sucessor->remove();
        }
    }

    void prefixa(){
        cout << " " << this->valor;
        if(this->esq != NULL){
            this->esq->prefixa();
        }
        if(this->dir != NULL){
            this->dir->prefixa();
        }
    }

    void infixa(){
        if(this->esq != NULL){
            this->esq->infixa();
        }
        cout << " " << this->valor;
        if(this->dir != NULL){
            this->dir->infixa();
        }
    }

    void posfixa(){
        if(this->esq != NULL){
            this->esq->posfixa();
        }
        if(this->dir != NULL){
            this->dir->posfixa();
        }
        cout << " " << this->valor;
    }
};

class ArvoreBinaria
{
    private:
    No *topo;

    public:
    ArvoreBinaria(){
        this->topo = NULL;
    }

    void adiciona(int valor){
        if(this->topo == NULL){
            this->topo = new No(valor, NULL);
        }else{
            this->topo->adiciona(valor);
        }
    }

    bool busca(int valor){
        if(this->topo == NULL){
            return false;
        }
        return this->topo->busca(valor) != NULL;
    }

    void remove(int valor){
        No *no = this->topo->busca(valor);

        if(no != NULL && no->pai == NULL){
            if(no->esq == NULL && no->dir == NULL){
                this->topo = NULL;
            }else if(no->esq == NULL || no->dir == NULL){
                this->topo = no->esq != NULL ? no->esq : no->dir;
            }
        }
        if(no != NULL){
            no->remove();
        }
    }

    void prefixa(){
        if(this->topo != NULL){
            cout << "Pre.:";
            this->topo->prefixa();
            cout << endl;
        }
    }

    void infixa(){
        if(this->topo != NULL){
            cout << "In..:";
            this->topo->infixa();
            cout << endl;
        }
    }

    void posfixa(){
        if(this->topo != NULL){
            cout << "Post:";
            this->topo->posfixa();
            cout << endl;
        }
    }
};
```

### C#
```cs
class No {
    private int valor { get; set; }
    public No pai { get; set; }
    public No esq { get; set; }
    public No dir { get; set; }

    public No(int valor, No pai = null){
        this.valor = valor;
        this.pai = pai;
        this.esq = null;
        this.dir = null;
    }

    public void adiciona(int valor){
        if(valor == this.valor){
            return;
        }
        if(valor < this.valor){
            if(this.esq == null){
                this.esq = new No(valor, this);
            }else{
                this.esq.adiciona(valor);
            }
        }else{
            if(this.dir == null){
                this.dir = new No(valor, this);
            }else{
                this.dir.adiciona(valor);
            }
        }
    }

    public No busca(int valor){
        if(valor == this.valor){
            return this;
        }else if(valor < this.valor){
            if(this.esq == null){
                return null;
            }
            return this.esq.busca(valor);
        }else{
            if(this.dir == null){
                return null;
            }
            return this.dir.busca(valor);
        }
    }

    public void remove(){
        if(this.esq == null && this.dir == null){
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = null;
                }else{
                    this.pai.dir = null;
                }
            }
        }else if(this.esq == null || this.dir == null){
            No filho = this.esq ?? this.dir;
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = filho;
                }else{
                    this.pai.dir = filho;
                }
            }
        }else{
            No sucessor = this.dir;
            while(sucessor.esq != null){
                sucessor = sucessor.esq;
            }
            this.valor = sucessor.valor;
            sucessor.remove();
        }
    }

    public void prefixa(StringBuilder sb){
        sb.Append($" {this.valor}");
        if(this.esq != null){
            this.esq.prefixa(sb);
        }
        if(this.dir != null){
            this.dir.prefixa(sb);
        }
    }

    public void infixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.infixa(sb);
        }
        sb.Append($" {this.valor}");
        if(this.dir != null){
            this.dir.infixa(sb);
        }
    }

    public void posfixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.posfixa(sb);
        }
        if(this.dir != null){
            this.dir.posfixa(sb);
        }
        sb.Append($" {this.valor}");
    }
}

class ArvoreBinaria {
    public No topo { get; set; }

    public ArvoreBinaria(){
        this.topo = null;
    }

    public void adiciona(int valor){
        if(this.topo == null){
            this.topo = new No(valor);
        }else{
            this.topo.adiciona(valor);
        }
    }

    public bool busca(int valor){
        if(this.topo == null){
            return false;
        }
        return this.topo.busca(valor) != null;
    }

    public void remove(int valor){
        No no = this.topo.busca(valor);

        if(no != null && no.pai == null){
            if(no.esq == null && no.dir == null){
                this.topo = null;
            }else if(no.esq != null || no.dir != null){
                this.topo = no.esq ?? no.dir;
            }
        }
        no.remove();
    }

    public void prefixa(StringBuilder sb){
        sb.Append("Pre.:");
        this.topo.prefixa(sb);
        sb.Append("\n");
    }

    public void infixa(StringBuilder sb){
        sb.Append("In..:");
        this.topo.infixa(sb);
        sb.Append("\n");
    }

    public void posfixa(StringBuilder sb){
        sb.Append("Post:");
        this.topo.posfixa(sb);
        sb.Append("\n");
    }
}
```

### Java
```java
public static class No {
    private int valor;
    public No pai;
    public No esq;
    public No dir;

    public No(int valor, No pai){
        this.valor = valor;
        this.pai = pai;
        this.esq = null;
        this.dir = null;
    }

    public void adiciona(int valor){
        if(valor == this.valor){
            return;
        }
        if(valor < this.valor){
            if(this.esq == null){
                this.esq = new No(valor, this);
            }else{
                this.esq.adiciona(valor);
            }
        }else{
            if(this.dir == null){
                this.dir = new No(valor, this);
            }else{
                this.dir.adiciona(valor);
            }
        }
    }

    public No busca(int valor){
        if(valor == this.valor){
            return this;
        }else if(valor < this.valor){
            if(this.esq == null){
                return null;
            }
            return this.esq.busca(valor);
        }else{
            if(this.dir == null){
                return null;
            }
            return this.dir.busca(valor);
        }
    }

    public void remove(){
        if(this.esq == null && this.dir == null){
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = null;
                }else{
                    this.pai.dir = null;
                }
            }
        }else if(this.esq == null || this.dir == null){
            No filho = this.esq != null ? this.esq : this.dir;
            if(this.pai != null){
                if(this.pai.esq == this){
                    this.pai.esq = filho;
                }else{
                    this.pai.dir = filho;
                }
            }
        }else{
            No sucessor = this.dir;
            while(sucessor != null){
                sucessor = sucessor.esq;
            }
            this.valor = sucessor.valor;
            sucessor.remove();
        }
    }

    public void prefixa(StringBuilder sb){
        sb.append(String.format(" %d", this.valor));
        if(this.esq != null){
            this.esq.prefixa(sb);
        }
        if(this.dir != null){
            this.dir.prefixa(sb);
        }
    }

    public void infixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.infixa(sb);
        }
        sb.append(String.format(" %d", this.valor));
        if(this.dir != null){
            this.dir.infixa(sb);
        }
    }

    public void posfixa(StringBuilder sb){
        if(this.esq != null){
            this.esq.posfixa(sb);
        }
        if(this.dir != null){
            this.dir.posfixa(sb);
        }
        sb.append(String.format(" %d", this.valor));
    }
}

public static class ArvoreBinaria {
    public No topo;

    public ArvoreBinaria(){
        this.topo = null;
    }

    public void adiciona(int valor){
        if(this.topo == null){
            this.topo = new No(valor, null);
        }else{
            this.topo.adiciona(valor);
        }
    }

    public boolean busca(int valor){
        if(this.topo == null){
            return false;
        }
        return this.topo.busca(valor) != null;
    }

    public void remove(int valor){
        No no = this.topo.busca(valor);

        if(no != null && no.pai == null){
            if(no.esq == null && no.dir == null){
                this.topo = null;
            }else if(no.esq != null || no.dir != null){
                this.topo = no.esq != null ? no.esq : no.dir;
            }
        }
        no.remove();
    }

    public void prefixa(StringBuilder sb){
        sb.append("Pre.:");
        this.topo.prefixa(sb);
        sb.append("\n");
    }

    public void infixa(StringBuilder sb){
        sb.append("In..:");
        this.topo.infixa(sb);
        sb.append("\n");
    }

    public void posfixa(StringBuilder sb){
        sb.append("Post:");
        this.topo.posfixa(sb);
        sb.append("\n");
    }
}
```

### JavaScript
```js
class No {
    constructor(valor, pai){
        this.valor = valor;
        this.pai = pai;
        this.esq = null;
        this.dir = null;
    }

    adiciona(valor){
        if(valor === this.valor){
            return;
        }
        if(valor < this.valor){
            if(this.esq === null){
                this.esq = new No(valor, this);
            }else{
                this.esq.adiciona(valor);
            }
        }else{
            if(this.dir === null){
                this.dir = new No(valor, this);
            }else{
                this.dir.adiciona(valor);
            }
        }
    }

    busca(valor){
        if(valor === this.valor){
            return this;
        }
        if(valor < this.valor){
            if(this.esq === null){
                return null;
            }
            return this.esq.busca(valor);
        }else{
            if(this.dir === null){
                return null;
            }
            return this.dir.busca(valor);
        }
    }

    remove(){
        if(this.esq === null && this.dir === null){
            if(this.pai !== null){
                if(this.pai.esq === this){
                    this.pai.esq = null;
                }else{
                    this.pai.dir = null;
                }
            }
        }else if(this.esq === null || this.dir === null){
            let filho = this.esq !== null ? this.esq : this.dir;
            if(this.pai !== null){
                if(this.pai.esq === this){
                    this.pai.esq = filho;
                }else{
                    this.pai.dir = filho;
                }
            }
        }else{
            let sucessor = this.dir;
            while(sucessor !== null){
                sucessor = sucessor.esq;
            }
            this.valor = sucessor.valor;
            sucessor.remove();
        }
    }

    prefixa(){
        sb += ` ${this.valor}`;
        if(this.esq !== null){
            this.esq.prefixa();
        }
        if(this.dir !== null){
            this.dir.prefixa();
        }
    }

    infixa(){
        if(this.esq !== null){
            this.esq.infixa();
        }
        sb += ` ${this.valor}`;
        if(this.dir !== null){
            this.dir.infixa();
        }
    }

    posfixa(){
        if(this.esq !== null){
            this.esq.posfixa();
        }
        if(this.dir !== null){
            this.dir.posfixa();
        }
        sb += ` ${this.valor}`;
    }
}

class ArvoreBinaria {
    constructor(){
        this.topo = null;
    }

    adiciona(valor){
        if(this.topo === null){
            this.topo = new No(valor);
        }else{
            this.topo.adiciona(valor);
        }
    }

    busca(valor){
        if(this.topo === null){
            return false;
        }
        return this.topo.busca(valor) !== null;
    }

    remove(valor){
        let no = this.topo.busca(valor);

        if(no !== null && no.pai === null){
            if(no.esq === null && no.dir === null){
                this.topo = null;
            }else if(no.esq !== null || no.dir !== null){
                this.topo = no.esq !== null ? no.esq : no.dir;
            }
        }
        no.remove();
    }

    prefixa(){
        sb += "Pre.:";
        this.topo.prefixa();
        sb += "\n";
    }

    infixa(){
        sb += "In..:";
        this.topo.infixa();
        sb += "\n";
    }

    posfixa(){
        sb += "Post:";
        this.topo.posfixa();
        sb += "\n";
    }
}
```

### Python
```py
class No:
    def __init__(self, valor, pai = None):
        self.valor = valor
        self.pai = pai
        self.esq = None
        self.dir = None

    def adiciona(self, valor):
        if valor == self.valor:
            return
        if valor < self.valor:
            if self.esq == None:
                self.esq = No(valor, self)
            else:
                self.esq.adiciona(valor)
        else:
            if self.dir == None:
                self.dir = No(valor, self)
            else:
                self.dir.adiciona(valor)
    
    def busca(self, valor):
        if valor == self.valor:
            return self
        if valor < self.valor:
            if self.esq == None:
                return None
            return self.esq.busca(valor)
        else:
            if self.dir == None:
                return None
            return self.dir.busca(valor)
    
    def remove(self):
        if self.esq == None and self.dir == None:
            if self.pai != None:
                if self.pai.esq == None:
                    self.pai.esq = None
                else:
                    self.pai.dir = None
        elif self.esq == None or self.dir == None:
            filho = self.esq if self.esq != None else self.dir
            if self.pai != None:
                if self.pai.esq == self:
                    self.pai.esq = filho
                else:
                    self.pai.dir = filho
        else:
            sucessor = self.dir
            while sucessor.esq != None:
                sucessor = sucessor.esq
            self.valor = sucessor.valor
            sucessor.remove()
    
    def prefixa(self):
        global sb
        sb += f' {self.valor}'
        if self.esq != None:
            self.esq.prefixa()
        if self.dir != None:
            self.dir.prefixa()
    
    def infixa(self):
        global sb
        if self.esq != None:
            self.esq.infixa()
        sb += f' {self.valor}'
        if self.dir != None:
            self.dir.infixa()
    
    def posfixa(self):
        global sb
        if self.esq != None:
            self.esq.posfixa()
        if self.dir != None:
            self.dir.posfixa()
        sb += f' {self.valor}'

class ArvoreBinaria:
    def __init__(self):
        self.topo = None
    
    def adiciona(self, valor):
        if self.topo == None:
            self.topo = No(valor)
        else:
            self.topo.adiciona(valor)
    
    def busca(self, valor):
        if self.topo == None:
            return False
        return self.topo.busca(valor) != None
    
    def remove(self, valor):
        no = self.topo.busca(valor)

        if no != None and no.pai == None:
            if no.esq == None and no.dir == None:
                self.topo = None
            elif no.esq != None or no.dir != None:
                self.topo = no.esq if no.esq != None else no.dir
        no.remove()
    
    def prefixa(self):
        global sb
        sb += 'Pre.:'
        self.topo.prefixa()
        sb += '\n'
    
    def infixa(self):
        global sb
        sb += 'In..:'
        self.topo.infixa()
        sb += '\n'
    
    def posfixa(self):
        global sb
        sb += 'Post:'
        self.topo.posfixa()
        sb += '\n'
```

## Problemas

* [1195 - Árvore Binária de Busca](../../../problemas/grafos/1195/README.md)