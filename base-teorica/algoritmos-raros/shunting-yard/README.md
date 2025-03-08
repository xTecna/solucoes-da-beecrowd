# Algoritmo de Shunting-Yard

## Motivação

| Expressão infixa  | Expressão posfixa |
| ----------------- | ----------------- |
| `A*2`             | `A2*`             |
| `(A*2+c-d)/2`     | `A2*c+d-2/`       |
| `(2*4/a^b)/(2*c)` | `24*ab^/2c*/`     |

A tarefa de transformar expressões matemáticas infixas para posfixas é bastante útil por dar um formato mais fácil ao computador para calcular as expressões da forma como escrevemos, removendo algumas das ambiguidades que suscetivelmente escrevemos. Repare que na forma posfixa sempre temos primeiro os operandos e depois o operador, fazendo com que o cálculo seja muito mais simples, num processo onde se vai acumulando os operandos numa pilha e toda vez que ler um operador, retirar os dois operandos que estão mais no topo, fazer a conta e retornar o resultado para o topo da pilha, assim sucessivamente até que se acabe a expressão e o resultado esteja no topo da pilha restante.

Para a explicação deste algoritmo, vamos considerar quatro tipos diferentes de símbolos possíveis na nossa expressão matemática:

* Operandos: representados na entrada como caracteres alfanuméricos
* Operadores: representados na entrada como os caracteres `+`, `-`, `*`, `/` e `^`
* Parênteses aberto: representando o começo de uma subexpressão
* Parênteses fechado: representando o final de uma subespressão

Também vamos precisar considerar a precedência dos operadores, ou seja, a ordem em que precisamos fazer as contas. A fim de permanecer em caráter computacional, vamos entender precedência como números, onde um número maior significa maior precedência.

| Operador | Precedência |
| -------- | ----------- |
| `+`      | 1           |
| `-`      | 1           |
| `*`      | 2           |
| `/`      | 2           |
| `^`      | 3           |

Para traduzirmos corretamente a expressão infixa para posfixa, o algoritmo utiliza uma [pilha](../../estruturas-e-bibliotecas/pilha/README.md) para guardar os operadores e os parênteses à medida que formos lendo cada um deles. Com isso, vamos lendo a expressão um caractere por vez, tomando medidas diferentes dependendo de qual caractere estamos lendo no momento:

* Se o caractere é um operando, escrever tal caractere direto na resposta.
* Se o caractere é um parênteses aberto, colocar um parênteses aberto na pilha.
* Se o caractere é um parênteses fechado, ir tirando operadores da pilha, escrevendo-os na resposta, até encontrarmos um parênteses aberto na pilha, caso em que vamos retirá-lo da pilha, mas não vamos escrevê-lo na resposta.
* Se o caractere é um operador, ir tirando operadores da pilha, escrevendo-os na resposta, até uma dessas três possibilidades acontecer. Quando algo abaixo acontecer, coloque o operador na pilha e passe para o próximo caractere.
  * A pilha estar vazia;
  * Encontrarmos um parênteses aberto;
  * Encontrarmos um operador com precedência menor do que a do operador que lemos naquele momento.
    * Seria inteligente aqui separarmos o caso em que lemos `^` para ir direto colocar na pilha, já que qualquer operador que encontrássemos na pilha teria precedência menor que `^`.

> É possível com esse mesmo algoritmo detectar erros na expressão infixa caso isso seja necessário. Repare que dependendo que como a expressão é escrita, podemos nos deparar com alguns casos indesejáveis:

> * Podemos ter dois ou mais operandos sucessivos.
> * Podemos ter parênteses sobrando ou faltando, caso em que teremos ou parênteses sobrando na pilha no final da operação ou o parêntese fechado sendo incapaz de desempilhar um parêntese aberto.

> Nestes casos, é possível acrescentar facilmente algumas verificações para evitar que estes casos ocorram, se seguirmos usando este algoritmo.

## Implementação

Para as implementações de pilha usadas neste algoritmo, confira nossa página de [pilhas](../../estruturas-e-bibliotecas/pilha/README.md).

#### C99

```c
int precedencia(char operador){
    switch(operador){
        case '+':
        case '-':   return 1;
        case '*':
        case '/':   return 2;
    }
}

struct pilha p;
char expressao[301];

inicializa(&p);

tam = strlen(expressao);
for(int i = 0; i < strlen(expressao); ++i){
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
```

#### C++17

```cpp
int precedencia(char operador){
    switch(operador){
        case '+':
        case '-':   return 1;
        case '*':
        case '/':   return 2;
    }
}

string expressao;
stack<char> pilha;

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
```

#### JavaScript 12.18

```javascript
const precedencia = (operador) => {
    return (operador === '+' || operador === '-') ? 1 : 2;
};

let expressao = input.nextLine();

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
```

#### Python 3.9

```python
def precedencia(operador):
    return 1 if (operador == '+' or operador == '-') else 2
 
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
        if(len(pilha) > 0 and top(pilha) != '(' and precedencia(letra) <= precedencia(top(pilha))):
            resposta += pilha.pop()
        pilha.append(letra)

while(len(pilha) > 0):
    resposta += pilha.pop()

print(resposta)
```

## Problemas

* [1077 - Infixa para Posfixa](../../../estruturas-e-bibliotecas/1077/README.md)