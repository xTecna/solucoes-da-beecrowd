# 1195 - Árvore Binária de Busca

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1195)

## Solução

Vide página [árvore binária de busca](../../../base-teorica/grafos/arvore-binaria-de-busca/README.md).

> Sem soluções em Java 19 e Python 3.9 por enquanto.

### C99
```c
#include <stdio.h>
#include <stdlib.h>

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

int main()
{
    int i, k, C, N, x;
    struct ArvoreBinaria ab;
    
    scanf("%d\n", &C);
    for(k = 1; k <= C; ++k){
        scanf("%d\n", &N);
        
        inicializaArvoreBinaria(&ab);
        for(i = 0; i < N; ++i){
            scanf("%d", &x);
            adicionaArvoreBinaria(&ab, x);
        }
        
        printf("Case %d:\n", k);
        prefixaArvoreBinaria(&ab);
        infixaArvoreBinaria(&ab);
        posfixaArvoreBinaria(&ab);
        printf("\n");
        
        destroiArvoreBinaria(&ab);
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

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

int main() {
    int C, N, x;

    cin >> C;
    for(int k = 1; k <= C; ++k){
        cin >> N;
        
        ArvoreBinaria ab = ArvoreBinaria();
        for(int i = 0; i < N; ++i){
            cin >> x;
            ab.adiciona(x);
        }

        cout << "Case " << k << ":" << endl;
        ab.prefixa();
        ab.infixa();
        ab.posfixa();
        cout << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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

class URI {    
    static void Main(string[] args) {
        StringBuilder sb = new StringBuilder();
        int C = int.Parse(Console.ReadLine());

        for(int k = 1; k <= C; ++k){
            int N = int.Parse(Console.ReadLine());
            List<int> v = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            ArvoreBinaria ab = new ArvoreBinaria();
            for(int i = 0; i < v.Count; ++i){
                ab.adiciona(v[i]);
            }

            sb.Append($"Case {k}:\n");
            ab.prefixa(sb);
            ab.infixa(sb);
            ab.posfixa(sb);
            sb.Append("\n");
        }

        Console.Write(sb.ToString());
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

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

let p = 0;
let sb = "";
let C = parseInt(lines[p++]);
for(let k = 1; k <= C; ++k){
    let N = parseInt(lines[p++]);
    let v = lines[p++].trim().split(" ").map(x => parseInt(x));

    let ab = new ArvoreBinaria();
    for(let i = 0; i < N; ++i){
        ab.adiciona(v[i]);
    }

    sb += `Case ${k}:\n`;
    ab.prefixa();
    ab.infixa();
    ab.posfixa();
    sb += "\n";
}

sb = sb.substring(0, sb.length - 1);
console.log(sb);
```