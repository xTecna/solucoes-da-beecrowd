# 1077 - Infixa para Posfixa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1077)

## Solução

Confira a página [Algoritmo de Shunting-Yard](../base-teorica/algoritmos-raros/algoritmo-de-shunting-yard.md) para entender como resolver esse problema. Lembrando que para este problema específico, todas as expressões são válidas, então o algoritmo sempre consegue executar com sucesso sem nenhuma necessidade de customização.

### C99
```c
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

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

int precedencia(char operador){
    switch(operador){
        case '+':
        case '-':   return 1;
        case '*':
        case '/':   return 2;
    }
}

int main(){
    int N, tam;
    struct pilha p;
    char expressao[301];

    scanf("%d\n", &N);

    for(int k = 0; k < N; ++k){
        scanf("%s\n", &expressao);

        inicializa(&p);

        tam = strlen(expressao);
        for(int i = 0; i < tam; ++i){
            if(isalpha(expressao[i]) || isdigit(expressao[i])){
                printf("%c", expressao[i]);
            }else if(expressao[i] == '(' || expressao[i] == '^'){
                push(&p, expressao[i]);
            }else if(expressao[i] == ')'){
                while(!empty(&p) && top(&p) != '('){
                    printf("%c", top(&p));
                    pop(&p);
                }

                if(!empty(&p))  pop(&p);
            }else{
                while(!empty(&p) && top(&p) != '(' && precedencia(expressao[i]) <= precedencia(top(&p))){
                    printf("%c", top(&p));
                    pop(&p);
                }

                push(&p, expressao[i]);
            }
        }

        while(!empty(&p)){
            printf("%c", top(&p));
            pop(&p);
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>
#include <stack>

using namespace std;

int precedencia(char operador){
    switch(operador){
        case '+':
        case '-':   return 1;
        case '*':
        case '/':   return 2;
    }
}

int main(){
    int N, tam;
    string expressao;
    stack<char> pilha;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> expressao;

        tam = expressao.length();
        for(int i = 0; i < tam; ++i){
            if(isalpha(expressao[i]) || isdigit(expressao[i])){
                cout << expressao[i];
            }else if(expressao[i] == '(' || expressao[i] == '^'){
                pilha.push(expressao[i]);
            }else if(expressao[i] == ')'){
                while(!pilha.empty() && pilha.top() != '('){
                    cout << pilha.top();
                    pilha.pop();
                }

                if(!pilha.empty())  pilha.pop();
            }else{
                while(!pilha.empty() && pilha.top() != '(' && precedencia(expressao[i]) <= precedencia(pilha.top())){
                    cout << pilha.top();
                    pilha.pop();
                }

                pilha.push(expressao[i]);
            }
        }

        while(!pilha.empty()){
            cout << pilha.top();
            pilha.pop();
        }
        cout << endl;
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

const precedencia = (operador) => {
    return (operador === '+' || operador === '-') ? 1 : 2;
};

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let expressao = lines.shift();

    let resposta = '';
    const pilha = new Pilha();
    for(let i = 0; i < expressao.length; ++i){
        if(/[A-Za-z0-9]/.test(expressao[i])){
            resposta += expressao[i];
        }else if(expressao[i] === '(' || expressao[i] === '^'){
            pilha.push(expressao[i]);
        }else if(expressao[i] === ')'){
            while(!pilha.empty() && pilha.top() !== '('){
                resposta += pilha.top();
                pilha.pop();
            }
            if(!pilha.empty())    pilha.pop();
        }else{
            while(!pilha.empty() && pilha.top() !== '(' && precedencia(expressao[i]) <= precedencia(pilha.top())){
                resposta += pilha.top();
                pilha.pop();
            }
            pilha.push(expressao[i]);
        }
    }

    while(!pilha.empty()){
        resposta += pilha.top();
        pilha.pop();
    }

    console.log(resposta);
}
```

### Python 3.9
```python
from collections import deque

def precedencia(operador):
    return 1 if (operador == '+' or operador == '-') else 2

def top(pilha):
    topo = pilha.pop()
    pilha.append(topo)
    return topo

N = int(input())

for _ in range(N):
    resposta = ''
    pilha = deque()
    expressao = input()

    for letra in expressao:
        if(letra.isalpha() or letra.isdigit()):
            resposta += letra
        elif(letra == '(' or letra == '^'):
            pilha.append(letra)
        elif(letra == ')'):
            while(len(pilha) > 0 and top(pilha) != '('):
                resposta += pilha.pop()
            if(len(pilha) > 0):
                pilha.pop()
        else:
            while(len(pilha) > 0 and top(pilha) != '(' and precedencia(letra) <= precedencia(top(pilha))):
                resposta += pilha.pop()
            pilha.append(letra)
    
    while(len(pilha) > 0):
        resposta += pilha.pop()
    
    print(resposta)
```