# 1110 - Jogando Cartas Fora

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1110)

## Solução

Usando [deques](../../../base-teorica/estruturas-e-bibliotecas/deque/README.md), uma estrutura de dados que permite operações de inserção e remoção nas duas pontas, podemos ir simulando o processo até que o deque tenha apenas um elemento, que no caso é o elemento que precisa ser retornado como o elemento que sobrou.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

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

int main()
{
    int n, first;
    struct deque cartas;

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        inicializa(&cartas);

        for (int i = 1; i <= n; ++i)
        {
            push_back(&cartas, i);
        }

        first = 1;
        printf("Discarded cards: ");
        while (size(&cartas) > 1)
        {
            if (!first)
                printf(", ");
            else
                first = 0;

            printf("%d", front(&cartas));

            pop_front(&cartas);
            push_back(&cartas, front(&cartas));
            pop_front(&cartas);
        }
        printf("\nRemaining card: %d\n", front(&cartas));

        destroi(&cartas);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <deque>

using namespace std;

int main(){
    deque<int> cartas;
    int N;

    while(cin >> N){
        if (!N) break;

        for(int i = 1; i <= N; ++i){
            cartas.push_back(i);
        }

        bool first = true;
        cout << "Discarded cards: ";
        while(cartas.size() > 1){
            int topo = cartas.front();
            cartas.pop_front();

            if (first)  first = false;
            else        cout << ", ";
            cout << topo;

            topo = cartas.front();
            cartas.pop_front();
            cartas.push_back(topo);
        }
        cout << endl;

        cout << "Remaining card: " << cartas.front() << endl;
        cartas.pop_front();
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            if(N == 0){
                break;
            }

            LinkedList<int> cartas = new LinkedList<int>();
            for(int i = 1; i <= N; ++i){
                cartas.AddFirst(i);
            }

            List<string> descartadas = new List<string>();
            while(cartas.Count > 1){
                descartadas.Add(cartas.First.Value);
                cartas.RemoveFirst();

                int topo = cartas.First.Value;
                cartas.RemoveFirst();
                cartas.AddLast(topo);
            }

            Console.WriteLine($"Discarded cards: {string.Join(", ", descartadas)}");
            Console.WriteLine($"Remaining card: {cartas.First.Value}");
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

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

lines.pop();

while(lines.length){
    let n = parseInt(lines.shift());

    let deque = new Deque();
    for(let i = 1; i <= n; ++i){
        deque.push_back(i);
    }

    let discarded = [];
    while(deque.size() > 1){
        discarded.push(deque.front());

        deque.pop_front();
        deque.push_back(deque.front());
        deque.pop_front();
    }

    console.log(`Discarded cards: ${discarded.join(', ')}`);
    console.log(`Remaining card: ${deque.front()}`);
}
```

### Python 3.9
```python
from collections import deque

while True:
    try:
        n = int(input())

        if(n == 0):
            break

        d = deque()
        for i in range(1, n + 1):
            d.append(i)

        discarded = []
        while(len(d) > 1):
            discarded.append(str(d[0]))

            d.popleft()
            d.append(d[0])
            d.popleft()

        print(f'Discarded cards: {", ".join(discarded)}')
        print(f'Remaining card: {d[0]}')
    except EOFError:
        break
```