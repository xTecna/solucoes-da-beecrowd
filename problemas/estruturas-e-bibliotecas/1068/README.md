# 1068 - Balanço de Parênteses I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1068)

## Solução

Como estamos lidando com apenas um tipo de símbolo, o parênteses, então esse problema é um pouco mais simples do que outras variações do mesmo. A alternativa 1 é extremamente parecida com a alternativa 2 do problema [1245 - Botas Perdidas](../../ad-hoc/1245/README.md#alternativa-2-tratar-a-quantidade-de-sapatos-como-um-acumulado) e a alternativa 2 utiliza-se de uma [pilha](../../../base-teorica/estruturas-e-bibliotecas/pilha/README.md) para guardar quantos parênteses já lemos até então.

Ambas as alternativas seguem o mesmo raciocínio de que quando vemos um parênteses fechado, precisamos avaliar se há algum parênteses aberto anteriormente que pode ser usado como par para esse parênteses fechado. Outro detalhe importante é que ao final da expressão, devemos também ver se não há parênteses abertos sobrando.

### Alternativa 1 - Acumulando a soma dos parênteses

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char expressao[1001];
    int i, tam, parenteses;

    while(scanf("%s\n", &expressao) != EOF){
        parenteses = 0;
        tam = strlen(expressao);

        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                ++parenteses;
            }else if(expressao[i] == ')'){
                if(parenteses > 0)  --parenteses;
                else                break;
            }
        }

        if(i == tam && parenteses == 0) printf("correct\n");
        else                            printf("incorrect\n");
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
    int i, tam, parenteses;

    while(cin >> expressao){
        parenteses = 0;
        tam = expressao.length();
        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                ++parenteses;
            }else if(expressao[i] == ')'){
                if(parenteses > 0)  --parenteses;
                else                break;
            }
        }

        if(i == tam && parenteses == 0){
            cout << "correct" << endl;
        }else{
            cout << "incorrect" << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let expressao = lines.shift().trim();

    let i = 0;
    let parenteses = 0;

    for(i = 0; i < expressao.length; ++i){
        if(expressao[i] === '('){
            parenteses += 1;
        }else if(expressao[i] === ')'){
            if(parenteses > 0)  parenteses -= 1;
            else                break;
        }
    }

    if(i === expressao.length && parenteses === 0){
        console.log("correct");
    }else{
        console.log("incorrect");
    }
}
```

### Python 3.9
```python
while True:
    try:
        expressao = input().strip()

        correct = True
        parenteses = 0

        for letra in expressao:
            if(letra == '('):
                parenteses += 1
            elif(letra == ')'):
                if(parenteses > 0):
                    parenteses -= 1
                else:
                    correct = False
                    break
        
        correct = correct and (parenteses == 0)
        
        print("correct" if correct else "incorrect")
    except EOFError:
        break
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
    int i, tam;
    struct pilha p;
    char expressao[1001];

    while(scanf("%s\n", &expressao) != EOF){
        inicializa(&p);
        tam = strlen(expressao);

        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                push(&p, '(');
            }else if(expressao[i] == ')'){
                if(empty(&p))   break;
                else            pop(&p);
            }
        }

        if(i == tam && empty(&p))   printf("correct\n");
        else                        printf("incorrect\n");

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
    int i, tam;
    string expressao;
    stack<char> pilha;

    while(cin >> expressao){
        while(!pilha.empty()){
            pilha.pop();
        }
        tam = expressao.length();

        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                pilha.push('(');
            }else if(expressao[i] == ')'){
                if(pilha.empty())   break;
                else                pilha.pop();
            }
        }

        if(i == tam && pilha.empty())   cout << "correct" << endl;
        else                            cout << "incorrect" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

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
    let expressao = lines.shift().trim();

    let i = 0;
    const pilha = new Pilha();

    for(i = 0; i < expressao.length; ++i){
        if(expressao[i] === '('){
            pilha.push('(');
        }else if(expressao[i] === ')'){
            if(pilha.empty())   break;
            else                pilha.pop();
        }
    }

    if(i === expressao.length && pilha.empty()){
        console.log("correct");
    }else{
        console.log("incorrect");
    }
}
```

### Python 3.9
```python
from collections import deque

while True:
    try:
        expressao = input().strip()

        correct = True
        pilha = deque()
        for letra in expressao:
            if(letra == '('):
                pilha.append('(')
            elif(letra == ')'):
                if(len(pilha) == 0):
                    correct = False
                    break
                else:
                    pilha.pop()

        correct = correct and len(pilha) == 0
        print("correct" if correct else "incorrect")
    except EOFError:
        break
```