# 1062 - Trilhos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1062)

## Solução

Para este problema, precisaremos do auxílio de três [pilhas](../../../base-teorica/estruturas-e-bibliotecas/pilha/README.md) diferentes:

* Uma pilha representando a direção A;
* Uma pilha representando a estação;
* Uma pilha representando a direção B.

A pilha da direção A vai começar com os valores na ordem em que estão sendo lidos, ou seja, na ordem que os vagões vão vir. Perceba que se você for colocando os elementos na ordem que o enunciado pede, então a pilha da direção A vai representar corretamente os vagões vindo, ou seja, os vagões virão de trás para frente.

A pilha da estação vai ser utilizada caso nós não consigamos passar o vagão direto da direção A para a direção B, então ela começa vazia.

A pilha da direção B vai começar com os valores na ordem em que desejamos que os vagões saiam, ou seja, na ordem inversa: primeiro saindo o vagão `N`, depois o `N - 1`, e assim por diante até o `1`. Podemos fazer isso colocando os números de `1` a `N` na pilha de forma a representar a ordem desejada dos vagões corretamente.

Com essas três pilhas arrumadas, vamos então seguir o seguinte algoritmo:

* Se os topos das pilhas A e B são iguais, retirar os elementos de ambas as pilhas;
  * Neste caso, temos um vagão que está na direção A que pode ir direto para a direção B.
* Se os topos das pilhas da estação e B são iguais, retirar os elementos de ambas as pilhas;
  * Neste caso, temos um vagão na estação que pode ir para a direção B.
* Se os dois casos acima não acontecerem, então não tem como o vagão atual nem da direção A nem da estação irem para direção B. Neste caso, precisamos levar o vagão da direção A para a estação.

Se tudo der certo, vamos repetir esses passos até que todas as pilhas se esvaziem, caso em que é possível arrumar os vagões de forma a produzir a ordem desejada na direção B. Porém, pode acontecer duas coisas:

* Não tem vagão na pilha A e o topo da pilha da estação é diferente do topo da pilha B;
* Não tem vagão nem na pilha A nem na pilha da estação, mas ainda tem vagão na pilha B.

Estes dois casos são casos onde é  impossível organizar os vagões na ordem pedida.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

struct pilhaNo{
    int valor;
    struct pilhaNo* abaixo;
};

struct pilha{
    int tamanho;
    struct pilhaNo* topo;
};

void push(struct pilha* p, int valor){
    p->tamanho += 1;
    struct pilhaNo* novoTopo = (struct pilhaNo*) malloc(sizeof(struct pilhaNo));

    novoTopo->valor = valor;
    novoTopo->abaixo = p->topo;
    p->topo = novoTopo;
}

void pop(struct pilha* p){
    if(p->tamanho > 0){
        p->tamanho -= 1;
        struct pilhaNo* velhoTopo = p->topo;
        p->topo = p->topo->abaixo;
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

int main(){
    int N, x;
    struct pilha A, estacao, B;

    while(scanf("%d", &N) != EOF){
        if(!N)  break;

        while(scanf("%d", &x)){
            if(!x){
                printf("\n");
                break;
            }

            inicializa(&A);
            inicializa(&estacao);
            inicializa(&B);

            push(&A, x);
            push(&B, 1);
            for(int i = 2; i <= N; ++i){
                scanf("%d", &x);
                push(&A, x);
                push(&B, i);
            }

            while(!empty(&A) || !empty(&estacao) || !empty(&B)){
                if(!empty(&A) && !empty(&B) && top(&A) == top(&B)){
                    pop(&A);
                    pop(&B);
                }else if(!empty(&estacao) && !empty(&B) && top(&estacao) == top(&B)){
                    pop(&estacao);
                    pop(&B);
                }else if(!empty(&A)){
                    push(&estacao, top(&A));
                    pop(&A);
                }else{
                    break;
                }
            }

            if(empty(&A) && empty(&estacao) && empty(&B)){
                printf("Yes\n");
            }else{
                printf("No\n");
            }

            destroi(&A);
            destroi(&estacao);
            destroi(&B);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <stack>

using namespace std;

int main(){
    int N, x;
    stack<int> A, estacao, B;

    while(cin >> N){
        if(!N)  break;

        while(cin >> x){
            if(!x){
                cout << endl;
                break;
            }

            while(!A.empty())       A.pop();
            while(!estacao.empty()) estacao.pop();
            while(!B.empty())       B.pop();

            A.push(x);
            B.push(1);
            for(int i = 2; i <= N; ++i){
                cin >> x;

                A.push(x);
                B.push(i);
            }

            while(!A.empty() || !estacao.empty() || !B.empty()){
                if(!A.empty() && !B.empty() && A.top() == B.top()){
                    A.pop();
                    B.pop();
                }else if(!estacao.empty() && !B.empty() && estacao.top() == B.top()){
                    estacao.pop();
                    B.pop();
                }else if(!A.empty()){
                    estacao.push(A.top());
                    A.pop();
                }else{
                    break;
                }
            }

            if(A.empty() && estacao.empty() && B.empty()){
                cout << "Yes" << endl;
            }else{
                cout << "No" << endl;
            }
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

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

while(lines.length){
    let N = parseInt(lines.shift());

    if(!N)  break;

    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    while(numeros.length > 1 || numeros[0] !== 0){
        let A = new Pilha();
        let estacao = new Pilha();
        let B = new Pilha();

        for(let i = 0; i < numeros.length; ++i){
            A.push(numeros[i]);
            B.push(i + 1);
        }

        while(!A.empty() || !estacao.empty() || !B.empty()){
            if(!A.empty() && !B.empty() && A.top() === B.top()){
                A.pop();
                B.pop();
            }else if(!estacao.empty() && !B.empty() && estacao.top() === B.top()){
                estacao.pop();
                B.pop();
            }else if(!A.empty()){
                estacao.push(A.top());
                A.pop();
            }else{
                break;
            }
        }

        if(A.empty() && estacao.empty() && B.empty()){
            console.log("Yes");
        }else{
            console.log("No");
        }

        numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    }
    console.log("");
}
```

### Python 3.9
```python
from collections import deque

def top(pilha):
    elemento = pilha.pop()
    pilha.append(elemento)
    
    return elemento

while True:
    try:
        N = int(input())

        if(N == 0):
            break

        numeros = [int(x) for x in input().strip().split(' ')]

        while(len(numeros) > 1 or numeros[0] != 0):
            A = deque()
            estacao = deque()
            B = deque()

            for i in range(N):
                A.append(numeros[i])
                B.append(i + 1)
            
            while(len(A) > 0 or len(estacao) > 0 or len(B) > 0):
                if(len(A) > 0 and len(B) > 0 and top(A) == top(B)):
                    A.pop()
                    B.pop()
                elif(len(estacao) > 0 and len(B) > 0 and top(estacao) == top(B)):
                    estacao.pop()
                    B.pop()
                elif(len(A) > 0):
                    estacao.append(A.pop())
                else:
                    break
            
            if(len(A) == 0 and len(estacao) == 0 and len(B) == 0):
                print("Yes")
            else:
                print("No")

            numeros = [int(x) for x in input().strip().split(' ')]

        print("")
    except EOFError:
        break
```