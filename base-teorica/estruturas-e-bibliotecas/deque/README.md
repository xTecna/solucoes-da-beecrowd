# Deque

## Motivação

Os deques são como as [pilhas](../pilha/README.md) e as filas, mas em vez de só poder adicionar e remover de um dos lados especificamente, é permitido adicionar e remover de ambas as pontas, com complexidade constante. Pela semelhança, normalmente são chamados também de filas duplamente terminadas.

Também vale notar que [pilhas](../pilha/README.md) e filas podem servir como exemplos de deques limitados de alguma maneira e as implementações de deque podem ser usadas tranquilamente para implementação de pilhas e filhas (que é inclusive o que é feito com a solução na biblioteca `collections` em Python).

## Implementações

É possível implementar deques com listas encadeadas, envolvendo uma lista sequencial de todos os elementos até o valor NULL com dois ponteiros apontando para o início e para o final. A representação em deques é exatamente a mesma, onde os elementos são adicionados ou removidos pelo começo ou pelo final da lista, a fim de garantir a complexidade das operações.

Vamos conferir então como podemos implementar um deque nas linguagens suportadas por esse solucionário.

> Todos os códigos aqui apresentados (inclusive os providenciados por biblioteca) dão erro ao se tentar acessar ou remover um elemento que não existe. Confira se o deque está vazio antes de tentar remover ou acessar algum elemento.

### C

Aqui eu implementei a nossa pilha como uma struct, onde você precisa inicializa-la toda vez que você precisar usá-la. Eu tomei a liberdade de fazer algumas operações extras de acordo com o deque implementado na biblioteca STL do C++ (ver subseção abaixo).

```c
struct dequeNo
{
    int valor;
    struct dequeNo *anterior, *proximo;
};

struct deque
{
    int tamanho;
    struct dequeNo *frente, *tras;
};

void push_front(struct deque *d, int valor)
{
    d->tamanho += 1;
    struct dequeNo *novaFrente = (struct dequeNo *)malloc(sizeof(struct dequeNo));

    novaFrente->valor = valor;
    novaFrente->proximo = d->frente;
    if (d->frente != NULL)
        d->frente->anterior = novaFrente;
    d->frente = novaFrente;
    if (d->tras == NULL)
        d->tras = d->frente;
}

void push_back(struct deque *d, int valor)
{
    d->tamanho += 1;
    struct dequeNo *novoTras = (struct dequeNo *)malloc(sizeof(struct dequeNo));

    novoTras->valor = valor;
    novoTras->anterior = d->tras;
    if (d->tras != NULL)
        d->tras->proximo = novoTras;
    d->tras = novoTras;
    if (d->frente == NULL)
        d->frente = d->tras;
}

void pop_front(struct deque *d)
{
    if (d->tamanho > 0)
    {
        d->tamanho -= 1;
        struct dequeNo *velhaFrente = d->frente;
        d->frente = d->frente->proximo;
        free(velhaFrente);
    }
}

void pop_back(struct deque *d)
{
    if (d->tamanho > 0)
    {
        d->tamanho -= 1;
        struct dequeNo *velhoTras = d->tras;
        d->tras = d->tras->anterior;
        free(velhoTras);
    }
}

int front(struct deque *d)
{
    return d->frente->valor;
}

int back(struct deque *d)
{
    return d->tras->valor;
}

int size(struct deque *d)
{
    return d->tamanho;
}

int empty(struct deque *d)
{
    return d->tamanho == 0;
}

void inicializa(struct deque *d)
{
    d->tamanho = 0;
    d->frente = NULL;
    d->tras = NULL;
}

void destroi(struct deque *d)
{
    while (!empty(d))
    {
        pop_front(d);
    }
}
```

### C++

A biblioteca STL oferece uma implementação de deque `deque<T>` pronta para ser usada, com as seguintes operações:

* `push_front`: insere um elemento na frente do deque
* `push_back`: insere um elemento atrás do deque
* `pop_front`: remove o elemento da frente do deque
* `pop_back`: remove o elemento de trás do deque
* `front`: retorna o elemento que está na frente do deque
* `back`: retorna o elemento que está atrás do deque
* `size`: retorna quantos elementos tem no deque
* `empty`: retorna se o deque está vazio

Para mais detalhes sobre como funciona cada operação ou sobre como instanciar um deque, veja a [documentação](https://www.cplusplus.com/reference/deque/deque/).

```cpp
#include <iostream>
#include <deque>

using namespace std;

int main(){
    deque<int> d;
    
    d.push_front(10);
    d.push_front(20);
    d.push_back(30);
    
    while(!d.empty()){
        cout << d.front() << ' ';
        d.pop_front();
    }
    cout << endl;
    
    return 0;
}
```

> A saída do programa acima será: `20 10 30`

### JavaScript

A implementação em JavaScript é bastante parecida com a de C, mas com a facilidade de se lidar com classes. Embora existam os métodos `shift()` e `unshift()` para manipulação de vetores, não tenho certeza se tais funções são feitas em complexidade O(1) e, portanto, não sei se pode configurar um uso apropriado da estrutura de dados deque.

```javascript
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
            this.tras -= 1;
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

Python implementa o deque com a biblioteca collections com todas as seguintes operações:

* `appendleft`: insere um elemento na frente do deque
* `append`: insere um elemento atrás do deque
* `popleft`: remove o elemento da frente do deque
* `pop`: remove o elemento de trás do deque

Pode-se usar acessores diretamente para avaliar a posição da frente e a de trás com \[0] e \[-1] respectivamente. Você também pode implementar as funções `front` e `back` guardando o retorno do respectivo `pop` e fazendo o `push` equivalente de volta.

Para mais detalhes sobre como funciona cada operação ou sobre como instanciar um deque, veja a [documentação](https://docs.python.org/3/library/collections.html#collections.deque).

```python
from collections import deque

d = deque()

d.appendleft(10)
d.appendleft(20)
d.append(30)

while(len(d) > 0):
    print(d.pop())
```

> A saída do programa acima será: `30 10 20`

## Problemas

* [1110 - Jogando cartas fora](../../../estruturas-e-bibliotecas/1110/README.md)