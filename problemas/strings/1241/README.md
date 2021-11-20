# 1241 - Encaixa ou Não II

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1241)

## Solução

Aqui vemos números de 1000 dígitos, números impossíveis de serem representados por variáveis numéricas nas linguagens atuais. Entretanto, ainda podemos e devemos tratar tais números como strings. Com isso, o problema fica bem mais tranquilo, afinal de contas, podemos tirar a substring com os últimos dígitos de A e conferir se são iguais a B. Lembrando que só podemos fazer isso se B não for maior que A, então confira esse caso para seu programa não dar Runtime Error.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N;
    char A[1001], B[1001];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s %s\n", &A, &B);

        if(strlen(B) > strlen(A))   printf("nao encaixa\n");
        else{
            strcpy(A, A + (strlen(A) - strlen(B)));
            if(!strcmp(A, B))       printf("encaixa\n");
            else                    printf("nao encaixa\n");
        }
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
    string A, B;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> A >> B;

        if(B.length() > A.length()) cout << "nao encaixa" << endl;
        else{
            A = A.substr(A.length() - B.length());
            if(A == B)              cout << "encaixa" << endl;
            else                    cout << "nao encaixa" << endl;
        }
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
    let [A, B] = lines.shift().trim().split(' ');

    if(B.length > A.length) console.log("nao encaixa");
    else{
        A = A.substring(A.length - B.length);
        if(A === B)         console.log("encaixa");
        else                console.log("nao encaixa");
    }
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')

    if(len(B) > len(A)):
        print('nao encaixa')
    else:
        A = A[(len(A) - len(B)):]
        print('encaixa' if A == B else 'nao encaixa')
```