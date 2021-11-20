# 1069 - Diamantes e Areia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1069)

## Solução

Problema muito parecido com o [1068 - Balanço de Parênteses I](../1068/README.md), que também pode ser resolvido com a ajuda tanto de uma variável acumuladora quanto de uma [pilha](../../../base-teorica/estruturas-e-bibliotecas/pilha/README.md).

A diferença entre os dois problemas é que agora não existem entradas inválidas, tudo o que importa agora são quantos pareamentos diferentes podemos fazer.

### Alternativa 1 - Usando uma variável para acumular

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char expressao[1001];
    int N, tam, resposta, parenteses;

    scanf("%d\n", &N);
    
    for(int k = 0; k < N; ++k){
        scanf("%s\n", &expressao);

        resposta = 0;
        parenteses = 0;
        tam = strlen(expressao);
        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                ++parenteses;
            }else if(expressao[i] == '>' && parenteses > 0){
                --parenteses;
                ++resposta;
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    string expressao;
    int N, tam, resposta, parenteses;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> expressao;

        resposta = 0;
        parenteses = 0;
        tam = expressao.length();
        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                ++parenteses;
            }else if(expressao[i] == '>' && parenteses > 0){
                --parenteses;
                ++resposta;
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let expressao = lines.shift().trim();

    let resposta = 0;
    let parenteses = 0;
    for(let i = 0; i < expressao.length; ++i){
        if(expressao[i] == '<'){
            parenteses += 1;
        }else if(expressao[i] == '>' && parenteses > 0){
            parenteses -= 1;
            resposta += 1;
        }
    }

    console.log(resposta);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    expressao = input().strip()

    resposta = 0
    parenteses = 0
    for letra in expressao:
        if(letra == '<'):
            parenteses += 1
        elif(letra == '>' and parenteses > 0):
            parenteses -= 1
            resposta += 1
    
    print(resposta)
```

### Alternativa 2 - Usando pilha

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

struct pilhaNo{
    char valor;
    struct pilhaNo* abaixo;
};

struct pilha{
    int tamanho;
    struct pilhaNo* topo;
};

void push(struct pilha* p, char valor){
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

char top(struct pilha* p){
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
    struct pilha p;
    int N, tam, resposta;
    char expressao[1001];

    scanf("%d\n", &N);

    for(int k = 0; k < N; ++k){
        scanf("%s\n", &expressao);

        resposta = 0;
        inicializa(&p);
        tam = strlen(expressao);

        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                push(&p, '<');
            }else if(expressao[i] == '>'){
                if(!empty(&p)){
                    ++resposta;
                    pop(&p);
                }
            }
        }

        printf("%d\n", resposta);

        destroi(&p);
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
    string expressao;
    stack<char> pilha;
    int N, tam, resposta;

    cin >> N;

    for(int k = 0; k < N; ++k){
        while(!pilha.empty()){
            pilha.pop();
        }

        cin >> expressao;

        resposta = 0;
        tam = expressao.length();
        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                pilha.push('<');
            }else if(expressao[i] == '>' && !pilha.empty()){
                ++resposta;
                pilha.pop();
            }
        }

        cout << resposta << endl;
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

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let expressao = lines.shift();

    let resposta = 0;
    const pilha = new Pilha();
    for(let i = 0; i < expressao.length; ++i){
        if(expressao[i] === '<'){
            pilha.push('<');
        }else if(expressao[i] === '>' && !pilha.empty()){
            resposta += 1;
            pilha.pop();
        }
    }

    console.log(resposta);
}
```

### Python 3.9
```python
from collections import deque

N = int(input())

for _ in range(N):
    expressao = input().strip()

    resposta = 0
    pilha = deque()
    for letra in expressao:
        if(letra == '<'):
            pilha.append('<')
        elif(letra == '>' and len(pilha) > 0):
            resposta += 1
            pilha.pop()
    
    print(resposta)
```