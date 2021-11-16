# Modelos de entrada e saída

## Entrada

### Entrada e saída padrão

Como vimos na página [beecrowd](uri-online-judge.md), o juiz automático só leva em consideração arquivos de texto de entrada e saída, com isso, ler e imprimir no fluxo de entrada/saída é o suficiente para todas as linguagens suportadas até o momento. Em JavaScript, apesar da primeira linha apresentar sintaxe de leitura de arquivo para a entrada, tal arquivo é convertido e entendido como a entrada padrão do seu programa, então tudo certo ainda (embora para todos os efeitos, tal chamada realmente equivale a um acesso em arquivo, trazendo toda a entrada de uma vez).

[Aqui nesta página](https://www.beecrowd.com.br/judge/pt/faqs/about/examples), você encontrará exemplos de códigos em diversas linguagens suportadas pela beecrowd para o problema 1001 - Extremamente Básico.

### Entrada até EOF

EOF é um termo que significa End-Of-File (Final-Do-Arquivo), ou seja, ele lerá a entrada padrão até que não haja mais entrada para ser lida. [Neste link da beecrowd](https://www.beecrowd.com.br/judge/pt/faqs/about/problems), há alguns exemplos para algumas linguagens específicas sobre como lidar com esse tipo de entrada (sessão "O que é um entrada que termina em EOF?").

Aqui completo o exemplo com todas as linguagens suportadas neste site:

#### C99
```c
int N;

while(scanf("%d", &N) != EOF) {
    ...
}
```

#### C++17
```cpp
int N;

while(cin >> N){
    ...
}
```

#### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    var line = lines.shift();
    ...
}
```

#### Python 3.9
```python
while True:
    try:
        ...
    except EOFError:
        break
```



### Entrada de JavaScript

A entrada por JavaScript é feita por um arquivo que simula a entrada padrão, trazendo toda a entrada de uma vez. Com isso, cada linha da entrada fica dentro de um vetor, onde pode-se usar a função `shift()` para retornar cada linha de uma vez, verificando se o vetor está vazio para ver se chegou ao final da leitura da entrada.

A entrada pela beecrowd se dá através de um arquivo em `/dev/stdin`, mas para testes locais, você pode seguir duas alternativas:

1. Criar uma pasta `dev` com um arquivo `stdin` para colocar a entrada de teste do seu programa
2. Mudar o caminho `/dev/stdin` para o caminho onde está a entrada de teste do seu programa, lembrando de mudar de volta para `/dev/stdin` quando for enviar pro URI Online Judge

## Saída

### Saída de vetor com espaço entre valores

Para algumas linguagens específicas, pode ser mais complicado imprimir vetor com espaço entre eles evitando o espaço no final do último elemento. Um jeito de fazer isso de maneira simples entretanto é isolando a impressão do primeiro valor e após isso, imprimir o resto dos valores com um espaço **à frente**.  Em outras linguagens, há o método `join` que pode ser usado com muito mais facilidade.

#### C99
```c
if(n > 0)    printf("%d", vetor[0]);
for(int i = 1; i < n; ++i){
    printf(" %d", vetor[i]);
}
printf("\n");
```

#### C++17
```cpp
if(vetor.size() > 0)    cout << vetor[0];
for(int i = 1; i < vetor.size(); ++i){
    cout << ' ' << vetor[i];
}
cout << endl;
```

#### JavaScript 12.18
```javascript
console.log(vetor.join(' '));
```

#### Python 3.9
```python
print(' '.join(vetor))
```

### Saída com um espaço branco entre casos de teste

Alguns dos problemas vão te pedir para retornar a saída do seu problema com um espaço branco entre casos de teste. Segue um exemplo de uma saída nesse modelo:

```
Caso #1: 4 7 8 1 3

Caso #2: 7 4 1 0

Caso #3: 4 4 5 0 3 6 7 9
```

Perceba que tem um espaço em branco entre os casos 2 e 3, mas não há um espaço em branco após o caso 3. Isso pode ser feito usando uma variável auxiliar para ver se o seu caso de teste é o primeiro e se for, não imprimir uma linha vazia, deixando para imprimir a linha vazia **à frente** de todos os casos após o primeiro.

#### C99
```c
int first = 1;

while(scanf("%d", &N) != EOF){
    if(first)    first = 0;
    else         printf("\n");
    ...
    // imprime a saída para o caso
}
```

#### C++17
```cpp
bool first = true;

while(cin >> N){
    if(first)    first = false;
    else         cout << endl;
    ...
    // imprime a saída para o caso
}
```

#### JavaScript 12.18
```javascript
let first = true;

while(lines.length){
    if(first)    first = false;
    else         console.log('');
    ...
    //imprime a saida para o caso
}
```

#### Python 3.9
```python
first = True

while True:
    try:
        if(first):
            first = False
        else:
            print('')
        ...
        #imprime a saida para o caso
    except EOFError:
        break
```