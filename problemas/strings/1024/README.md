# 1024 - Criptografia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1024)

## Solução

Apenas seguir cada um dos processos separadamente e procurar não colocar um passo na frente do outro. Saber como acessar o [código ASCII](../../../base-teorica/strings/ascii/README.md) de um caractere ajuda demais com esse problema, então procure como fazer isso na sua linguagem de programação.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int N, n;
    char aux, M[1001];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%[^\n]\n", &M);

        n = strlen(M);
        for(int j = 0; j < n; ++j){
            if(isalpha(M[j])){
                M[j] += 3;
            }
        }
        for(int j = 0; j < n/2; ++j){
            aux = M[j];
            M[j] = M[n - 1 - j];
            M[n - 1 - j] = aux;
        }
        for(int j = n/2; j < n; ++j){
            --M[j];
        }

        printf("%s\n", M);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>

using namespace std;

int main(){
    int N, n;
    char aux;
    string M;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, M);

        n = M.length();
        for(int j = 0; j < n; ++j){
            if(isalpha(M[j])){
                M[j] += 3;
            }
        }
        for(int j = 0; j < n/2; ++j){
            aux = M[j];
            M[j] = M[M.length() - 1 - j];
            M[M.length() - 1 - j] = aux;
        }
        for(int j = n/2; j < n; ++j){
            --M[j];
        }

        cout << M << endl;
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
    let M = lines.shift().trim().split('');

    M = M.map((x) => x.match(/[A-Za-z]/i) ? String.fromCharCode(x.charCodeAt(0) + 3) : x);
    M.reverse();
    let metade = parseInt(Math.floor(M.length/2));
    M = M.map((x, i) => i < metade ? x : String.fromCharCode(x.charCodeAt(0) - 1));

    let resposta = M.join('');

    console.log(resposta);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    M = input()

    novoM = ""
    for letra in M:
        novoM += chr(ord(letra) + 3) if letra.isalpha() else letra
    M = novoM[::-1]
    M = M[:len(M)//2] + ''.join([chr(ord(letra) - 1) for letra in M[len(M)//2:]])

    print(M)
```