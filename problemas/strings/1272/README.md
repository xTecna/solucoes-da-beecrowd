# 1272 - Mensagem Oculta

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1272)

## Solução

Este problema consiste em separar a entrada por palavras e pegar a primeira letra de cada palavra. Se você tem o recurso de separar por palavras, apenas certifique-se de que suas palavras têm um caractere ou mais. Se você não tem esse recurso, você pode percorrer a frase com um booleano para te indicar se você já pegou a primeira letra de alguma palavra ou não.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, p, primeiraLetra;
    char frase[51], resposta[51];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        gets(frase);

        p = 0;
        primeiraLetra = 1;
        memset(resposta, '\0', sizeof(resposta));

        for(int j = 0; j < strlen(frase); ++j){
            if(primeiraLetra && frase[j] != ' '){
                resposta[p++] = frase[j];
                primeiraLetra = 0;
            }else if(!primeiraLetra && frase[j] == ' '){
                primeiraLetra = 1;
            }
        }

        printf("%s\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N;
    bool primeiraLetra;
    string frase, resposta;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, frase);

        resposta = "";
        primeiraLetra = true;

        for(int j = 0; j < frase.length(); ++j){
            if(primeiraLetra && frase[j] != ' '){
                resposta += frase[j];
                primeiraLetra = false;
            }else if(!primeiraLetra && frase[j] == ' '){
                primeiraLetra = true;
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

for(let i = 0; i < N; ++i){
    let frase = lines.shift().trim().split(' ');

    let resposta = frase.map((x) => x[0]).join('');

    console.log(resposta);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    frase = input().strip()

    resposta = ''.join([x[0] if len(x) > 0 else '' for x in frase.split(' ')])

    print(resposta)
```