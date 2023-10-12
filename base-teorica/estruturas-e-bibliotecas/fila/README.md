# Fila

## Motivação

A fila é uma estrutura de dados que funciona que nem uma fila da vida real, com uma pessoa atrás da outra e a primeira pessoa a ser atendida é a que está na frente da fila.

Com isso, as duas operações principais de uma fila, no sentido computacional, são também essas:

* `PUSH`: que adiciona um elemento no final da fila
* `POP`: que remove um elemento da frente da fila

Este comportamento é conhecido como FIFO (_First In, First Out_), ou seja, o primeiro elemento a entrar é o primeiro a sair, o que vemos também na fila de verdade. Do ponto de vista da pessoa que está atendendo às outras na fila, a ela só interessa ali na hora a pessoa que está na frente. Assim também é na estrutura de fila computacionalmente, onde não é possível ver informações sobre qualquer elemento que não seja o da frente.

Apesar do caráter restritivo dessa estrutura de dados, ela se prova bastante valiosa para determinados usos, como na organização de fluxos de mensagens assíncronas. Esta estrutura de dados também é usada devido às duas operações serem muito rápidas, como podemos ver na tabela abaixo:

| Operação | Complexidade de tempo |
| -------- | --------------------- |
| `PUSH`   | $O(1)$                |
| `POP`    | $O(1)$                |

## Implementações

Existem duas maneiras de implementar filas:

* Através de listas encadeadas
* Através de vetores

Para o caso de listas encadeadas, a representação comum envolve uma lista sequencial de todos os elementos até o valor `NULL`. A representação em filas é exatamente a mesma, onde os elementos são adicionados pelo final da lista e removidos pelo começo, a fim de garantir a complexidade das operações.

Para o caso de vetores, 

Para o caso de vetores, é importante que os elementos sejam adicionados ou removidos pelo final do vetor, já que se você remove o primeiro elemento, a própria linguagem se encarrega de "empurrar" todos os elementos da memória para frente e, neste caso, você perde a complexidade constante de $O(1)$ no `POP`.

Vamos conferir então como podemos implementar uma pilha nas linguagens suportadas por esse solucionário.

> A menos que o código mostre o contrário, assuma que as estruturas aqui apresentadas (inclusive as providenciadas por biblioteca) dão erro ao se tentar acessar ou remover um elemento que não existe. Confira se a fila está vazia antes de tentar remover ou acessar o elemento da frente.

### C

Aqui eu implementei a nossa fila como uma _struct_, onde você precisa inicializa-la toda vez que você precisar usá-la. Eu tomei a liberdade de fazer algumas operações extras de acordo com a fila implementada na biblioteca STL do C++ (ver subseção abaixo).

```c
struct filaNo{
    int valor;
    struct filaNo* proximo;
};

struct fila{
    int tamanho;
    struct filaNo *frente, *tras;
};

void push(struct fila* f, int valor){
    f->tamanho += 1;
    struct filaNo* novoNo = (struct filaNo*) malloc(sizeof(struct filaNo));
    novoNo->valor = valor;
    novoNo->proximo = NULL;

    if(f->frente == NULL){
        f->frente = novoNo;
    }else{
        f->tras->proximo = novoNo;
    }
    f->tras = novoNo;
}

void pop(struct fila* f){
    if(f->tamanho > 0){
        f->tamanho -= 1;
        struct filaNo* velhaFrente = f->frente;
        f->frente = velhaFrente->proximo;
        free(velhaFrente);
    }
}

int front(struct fila* f){
    return f->frente->valor;
}

int size(struct fila* f){
    return f->tamanho;
}

int empty(struct fila* f){
    return f->tamanho == 0;
}

void inicializa(struct fila* f){
    f->tamanho = 0;
    f->frente = NULL;
    f->tras = NULL;
}

void destroi(struct fila* f){
    while(!empty(f)){
        pop(f);
    }
}
```

### C++

A biblioteca STL oferece uma implementação de fila `queue<T>` pronta para ser usada. Para mais detalhes sobre como funciona cada operação ou sobre como instanciar uma fila, veja a [documentação](https://cplusplus.com/reference/queue/queue/).

### C#

A classe `Queue<T>` contém a estrutura necessária para usarmos filas em C#. Para mais informações sobre `Queue<T>`, consulte a [documentação](https://learn.microsoft.com/pt-br/dotnet/api/system.collections.generic.queue-1?view=net-7.0).

### Java

A interface `Queue` da biblioteca `java.util` é implementada pela classe `LinkedList`, que você pode usar com as operações permitidas pela fila. Para mais informações sobre `Queue`, consulte a [documentação](https://docs.oracle.com/javase/8/docs/api/java/util/Queue.html).

### JavaScript

A implementação em JavaScript ficou bem parecida com a em C, com nós conectados entre si, inserções pelo fim e remoções pelo começo.

```js
class FilaNo {
    constructor(valor) {
        this.valor = valor;
        this.proximo = null;
    }
}

class Fila {
    constructor() {
        this.tamanho = 0;
        this.frente = null;
        this.tras = null;
    }

    push(valor) {
        this.tamanho += 1;
        let novoNo = new FilaNo(valor);
        if(this.frente === null){
            this.frente = novoNo;
        }else{
            this.tras.proximo = novoNo;
        }
        this.tras = novoNo;
    }

    pop() {
        this.tamanho -= 1;
        this.frente = this.frente.proximo;
    }

    top() {
        return this.frente.valor;
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

Python implementa [fila duplamente encadeada](../deque/README.md) com a biblioteca `collections`, onde você pode usar a classe deque com o mesmo comportamento de uma fila se você usar somente as operações `appendleft` e `pop`. Você pode implementar a função `top` guardando o retorno do `pop` e fazendo um `push` de volta. Mais detalhes sobre essa implementação podem ser encontrados na [documentação](https://docs.python.org/3/library/collections.html#collections.deque).

## Problemas

* [1340 - Eu Posso Adivinhar a Estrutura de Dados!](../../../problemas/estruturas-e-bibliotecas/1340/README.md)