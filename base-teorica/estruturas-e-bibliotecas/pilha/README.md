# Pilha

## Motivação

A pilha é uma estrutura de dados que funciona que nem uma pilha da vida real.

![Uma pilha de livros. (Foto: George Milton)](../../../assets/pexels-george-milton-7034643.jpg)

Nessa enorme pilha de livros que vemos aqui e considerando que você é uma pessoa cuidadosa, só é possível adicionar ou remover livros no topo. As duas operações principais de uma pilha, no sentido computacional, são também essas:

* `PUSH`: que adiciona um elemento ao topo da pilha
* `POP`: que remove um elemento no topo da pilha

Este comportamento é conhecido como LIFO (_Last In, First Out_), ou seja, o primeiro elemento a entrar é o último a sair, o que vemos também na pilha de livros. Também podemos ver que na pilha de livros, só é possível ver a capa do livro que está no topo, assim também é na estrutura de pilha computacionalmente, onde não é possível ver informações sobre qualquer elemento que não seja o do topo.

Apesar do caráter restritivo dessa estrutura de dados, ela se prova bastante valiosa para determinados usos, como avaliação de expressões matemáticas e gerenciamento de execução em sistemas operacionais e linguagens de programação. Esta estrutura de dados também é usada devido às duas operações serem muito rápidas, como podemos ver na tabela abaixo:

| Operação | Complexidade de tempo |
| -------- | --------------------- |
| `PUSH`   | $O(1)$                |
| `POP`    | $O(1)$                |

## Implementações

Existem duas maneiras de implementar pilhas:

* Através de listas encadeadas
* Através de vetores

Em ambas as abordagens, a ideia é deitarmos essa pilha, mais ou menos como na figura abaixo:

![Pilha de livros deitada, onde agora só colocamos e tiramos por uma das pontas. (Foto: George Milton)](../../../assets/pexels-george-milton-7034504.jpg)

Para o caso de listas encadeadas, a representação comum envolve uma lista sequencial de todos os elementos até o valor `NULL`. A representação em pilhas é exatamente a mesma, onde os elementos são adicionados ou removidos pelo começo da lista, a fim de garantir a complexidade das operações.

Para o caso de vetores, é importante que os elementos sejam adicionados ou removidos pelo final do vetor, já que se você remove o primeiro elemento, a própria linguagem se encarrega de "empurrar" todos os elementos da memória para frente e, neste caso, você perde a complexidade constante de $O(1)$ no `POP`.

Vamos conferir então como podemos implementar uma pilha nas linguagens suportadas por esse solucionário.

> A menos que o código mostre o contrário, assuma que as estruturas aqui apresentadas (inclusive as providenciadas por biblioteca) dão erro ao se tentar acessar ou remover um elemento que não existe. Confira se a pilha está vazia antes de tentar remover ou acessar o elemento do topo.

### C

Aqui eu implementei a nossa pilha como uma _struct_, onde você precisa inicializa-la toda vez que você precisar usá-la. Eu tomei a liberdade de fazer algumas operações extras de acordo com a pilha implementada na biblioteca STL do C++ (ver subseção abaixo).

```c
struct pilhaNo{
    int valor;
    struct PilhaNo* abaixo;
};

struct pilha{
    int tamanho;
    struct pilhaNo* topo;
};

void push(struct pilha* p, int valor){
    p->tamanho += 1;
    struct pilhaNo* novoTopo = (struct pilhaNo*) malloc(sizeof(struct PilhaNo));

    novoTopo->valor = valor;
    novoTopo->abaixo = p->topo;
    p->topo = novoTopo;
}

void pop(struct pilha* p){
    if(p->tamanho > 0){
        p->tamanho -= 1;
        struct PilhaNo* velhoTopo = p->topo;
        p->topo = velhoTopo->abaixo;
        free(velhoTopo);
    }
}

int top(struct pilha* p){
    return p->topo->valor;
}

int size(struct pilha* p){
    return p->tamanho;
}

int empty(struct pilha* p){
    return p->tamanho == 0;
}

void inicializa(struct pilha* p){
    p->tamanho = 0;
    p->topo = NULL;
}

void destroi(struct pilha* p){
    while(!empty(p)){
        pop(p);
    }
}
```

### C++

A biblioteca STL oferece uma implementação de pilha `stack<T>` pronta para ser usada. Para mais detalhes sobre como funciona cada operação ou sobre como instanciar uma pilha, veja a [documentação](https://www.cplusplus.com/reference/stack/stack/).

### C#

A classe `Stack<T>` contém a estrutura necessária para usarmos pilhas em C#. Para mais informações sobre `Stack<T>`, consulte a [documentação](https://learn.microsoft.com/pt-br/dotnet/api/system.collections.generic.stack-1?view=net-7.0).

### Java

A classe `Stack` implementada na biblioteca `java.util` já está implementada e pronta pra usarmos. Para mais informações sobre `Stack`, consulte a [documentação](https://docs.oracle.com/javase/8/docs/api/java/util/Stack.html).

### JavaScript

A implementação em JavaScript é bastante simples, podendo ser feita com o auxílio de um array onde só é permitido acrescentar e remover a partir do último índice. Com isso, fazemos meio que uma pilha deitada, onde inserimos e removemos sempre o elemento mais à direita.

```js
class Pilha {
    constructor() {
        this.pilha = [];
    }

    push(valor) {
        this.pilha.push(valor);
    }

    pop() {
        this.pilha.pop();
    }

    top() {
        return this.pilha[this.pilha.length - 1];
    }

    size() {
        return this.pilha.length;
    }

    empty() {
        return this.pilha.length === 0;
    }
}
```

### Python

Python implementa [fila duplamente encadeada](../deque/README.md) com a biblioteca `collections`, onde você pode usar a classe deque com o mesmo comportamento de uma pilha se você usar somente as operações `append` e `pop`. Você pode implementar a função `top` guardando o retorno do `pop` e fazendo um `push` de volta. Mais detalhes sobre essa implementação podem ser encontrados na [documentação](https://docs.python.org/3/library/collections.html#collections.deque).

## Problemas

* [1062 - Trilhos](../../../problemas/estruturas-e-bibliotecas/1062/README.md)
* [1068 - Balanço de parênteses I](../../../problemas/estruturas-e-bibliotecas/1068/README.md)
* [1069 - Diamantes e areia](../../../problemas/estruturas-e-bibliotecas/1069/README.md)
* [1077 - Infixa para posfixa](../../../problemas/estruturas-e-bibliotecas/1077/README.md)
* [2929 - Menor da pilha](../../../problemas/estruturas-e-bibliotecas/2929/README.md)
* [1340 - Eu Posso Adivinhar a Estrutura de Dados!](../../../problemas/estruturas-e-bibliotecas/1340/README.md)