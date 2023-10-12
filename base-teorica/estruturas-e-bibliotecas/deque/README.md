# Deque

## Motivação

Os deques são como as [pilhas](../pilha/README.md) e as [filas](../fila/README.md), mas em vez de só poder adicionar e remover de um dos lados especificamente, é permitido adicionar e remover de ambas as pontas, com complexidade constante. Pela semelhança, normalmente são chamados também de filas duplamente terminadas.

Também vale notar que [pilhas](../pilha/README.md) e [filas](../fila/README.md) podem servir como exemplos de deques limitados de alguma maneira e as implementações de deque podem ser usadas tranquilamente para implementação de pilhas e filhas (que é inclusive o que é feito com a solução na biblioteca `collections` em Python).

## Implementações

É possível implementar deques com listas encadeadas, envolvendo uma lista sequencial de todos os elementos até o valor `NULL`` com dois ponteiros: um apontando para o início e outro para o final. A representação em deques é exatamente a mesma, onde os elementos são adicionados ou removidos pelo começo ou pelo final da lista, a fim de garantir a complexidade das operações.

Vamos conferir então como podemos implementar um deque nas linguagens suportadas por esse solucionário.

> A menos que o código mostre o contrário, assuma que as estruturas aqui apresentadas (inclusive as providenciadas por biblioteca) dão erro ao se tentar acessar ou remover um elemento que não existe. Confira se o deque está vazio antes de tentar remover ou acessar o elemento de uma das pontas.

### C

Aqui eu implementei o nosso deque como uma _struct_, onde você precisa inicializa-la toda vez que você precisar usá-la. Eu tomei a liberdade de fazer algumas operações extras de acordo com o deque implementado na biblioteca STL do C++ (ver subseção abaixo).

```c
struct dequeNo{
    int valor;
    struct dequeNo *anterior, *proximo;
};

struct deque{
    int tamanho;
    struct dequeNo *frente, *tras;
};

void push_front(struct deque* d, int valor){
    d->tamanho += 1;
    struct dequeNo* novoNo = (struct dequeNo*) malloc(sizeof(struct dequeNo));
    novoNo->valor = valor;
    novoNo->anterior = NULL;
    novoNo->proximo = d->frente;

    if(d->frente != NULL){
        d->frente->anterior = novoNo;
    }
    d->frente = novoNo;

    if(d->tras == NULL){
        d->tras = novoNo;
    }
}

void push_back(struct deque* d, int valor){
    d->tamanho += 1;
    struct dequeNo* novoNo = (struct dequeNo*) malloc(sizeof(struct dequeNo));
    novoNo->valor = valor;
    novoNo->anterior = d->tras;
    novoNo->proximo = NULL;

    if(d->tras != NULL){
        d->tras->proximo = novoNo;
    }
    d->tras = novoNo;

    if(d->frente == NULL){
        d->frente = novoNo;
    }
}

void pop_front(struct deque* d){
    if(d->tamanho > 0){
        d->tamanho -= 1;
        struct dequeNo* velhaFrente = d->frente;
        d->frente = velhaFrente->proximo;
        free(velhaFrente);
    }
}

void pop_back(struct deque* d){
    if(d->tamanho > 0){
        d->tamanho -= 1;
        struct dequeNo* velhoTras = d->tras;
        d->tras = velhoTras->anterior;
        free(velhoTras);
    }
}

int front(struct deque* d){
    return d->frente->valor;
}

int back(struct deque* d){
    return d->tras->valor;
}

int size(struct deque* d){
    return d->tamanho;
}

int empty(struct deque* d){
    return d->tamanho == 0;
}

void inicializa(struct deque* d){
    d->tamanho = 0;
    d->frente = NULL;
    d->tras = NULL;
}

void destroi(struct deque* d){
    while(!empty(d)){
        pop_front(d);
    }
}
```

### C++

A biblioteca STL oferece uma implementação de deque `deque<T>` pronta para ser usada. Para mais detalhes sobre como funciona cada operação ou sobre como instanciar um deque, veja a [documentação](https://www.cplusplus.com/reference/deque/deque/).

### C#

Não há uma implementação direta de deque em C#, mas entendendo que deques podem ser implementados como listas encadeadas com operações de inserção e remoção em $O(1)$, então podemos usar a classe `LinkedList<T>`, que contém os métodos `AddFirst()`, `AddLast()`, `RemoveFirst()` e `RemoveLast()`, com a mesma complexidade de um deque. Você pode ver mais detalhes sobre essa classe na [documentação](https://learn.microsoft.com/pt-br/dotnet/api/system.collections.generic.linkedlist-1?view=net-7.0).

### Java

Assim como em C#, em Java podemos usar a estrutura `LinkedList` implementada na biblioteca `java.util`. Para mais informações sobre `LinkedList`, consulte a [documentação](https://docs.oracle.com/javase/8/docs/api/java/util/LinkedList.html).

### JavaScript

A implementação em JavaScript é bastante parecida com a de C, mas com a facilidade de se lidar com classes. Embora existam os métodos `shift()` e `unshift()` para manipulação de vetores, não tenho certeza se tais funções são feitas em complexidade $O(1)$ e, portanto, não sei se pode configurar um uso apropriado da estrutura de dados `deque`.

```js
class DequeNo {
    constructor(valor) {
        this.valor = valor;
        this.anterior = null;
        this.proximo = null;
    }
}

class Deque {
    constructor() {
        this.tamanho = 0;
        this.frente = null;
        this.tras = null;
    }

    push_front(valor) {
        this.tamanho += 1;

        let novaFrente = new DequeNo(valor);
        novaFrente.proximo = this.frente;
        if (this.frente)    this.frente.anterior = novaFrente;
        this.frente = novaFrente;
        this.tras = this.tras || novaFrente;
    }

    push_back(valor) {
        this.tamanho += 1;

        let novoTras = new DequeNo(valor);
        novoTras.anterior = this.tras;
        if (this.tras)  this.tras.proximo = novoTras;
        this.tras = novoTras;
        this.frente = this.frente || novoTras;
    }

    pop_front() {
        if(this.frente){
            this.tamanho -= 1;
            this.frente = this.frente.proximo;
        }
    }

    pop_back() {
        if(this.tras){
            this.tamanho -= 1;
            this.tras = this.tras.anterior;
        }
    }

    front() {
        return this.frente.valor;
    }

    back() {
        return this.tras.valor;
    }

    size() {
        return this.tamanho;
    }

    empty() {
        return this.tamanho === 0;
    }
}
```

### Python

Python implementa deque com a biblioteca `collections`. Você pode usar acessores diretamente para ver a posição de frente e a de trás com `[0]` e `[-1]` respectivamente. Mais detalhes sobre essa implementação podem ser encontrados na [documentação](https://docs.python.org/3/library/collections.html#collections.deque).

## Problemas

* [1110 - Jogando Cartas Fora](../../../problemas/estruturas-e-bibliotecas/1110/README.md)