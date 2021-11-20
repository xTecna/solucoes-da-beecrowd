# 1273 - Justificador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1273)

## Solução

Este problema se resume a imprimir cada palavra do texto gastando o mesmo espaço que a maior palavra. Linhas que tem menos letras que a maior palavra precisam apenas exibir espaços à esquerda.

Na linguagem C++, temos um jeito muito elegante de resolver esse problema usando a biblioteca `iomanip`, onde podemos definir o espaço de cada palavra e que elas podem ser alinhadas à direita. Para outras linguagens, podemos inserir os espaços manualmente.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char linhas[50][51];
    int N, n, maior, first;

    first = 1;
    while(scanf("%d\n", &N)){
        if(!N)  break;

        if(first)   first = 0;
        else        printf("\n");

        maior = 0;
        for(int i = 0; i < N; ++i){
            scanf("%s\n", &linhas[i]);
            maior = maior < strlen(linhas[i]) ? strlen(linhas[i]) : maior;
        }

        for(int i = 0; i < N; ++i){
            n = strlen(linhas[i]);
            for(int j = 0; j < maior - n; ++j)  printf(" ");
            printf("%s\n", linhas[i]);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    bool first;
    int N, maior;
    string linhas[51];

    first = true;
    while(cin >> N){
        if(!N)  break;

        if(first)   first = false;
        else        cout << endl;

        maior = 0;
        for(int i = 0; i < N; ++i){
            cin >> linhas[i];
            maior = maior < linhas[i].length() ? linhas[i].length() : maior;
        }

        for(int i = 0; i < N; ++i){
            cout << setw(maior) << setfill(' ') << right << linhas[i] << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let first = true;
while(lines.length){
    let N = parseInt(lines.shift());

    if(!N)  break;

    if(first)   first = false;
    else        console.log('');

    let frases = [];
    for(let i = 0; i < N; ++i){
        frases.push(lines.shift().trim());
    }

    let maior = frases.reduce((acc, cur) => acc < cur.length ? cur.length : acc, 0);

    for(let i = 0; i < N; ++i){
        let retorno = '';
        for(let j = 0; j < maior - frases[i].length; ++j)   retorno += ' ';
        retorno += frases[i];
        console.log(retorno);
    }
}
```

### Python 3.9
```python
first = True
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(first):
            first = False
        else:
            print('')
        
        maior = 0
        linhas = []
        for _ in range(N):
            frase = input()
            maior = len(frase) if maior < len(frase) else maior
            linhas.append(frase)
        
        for frase in linhas:
            print(f"{(maior - len(frase)) * ' '}{frase}")
    except EOFError:
        break
```