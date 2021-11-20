# 1120 - Revisão de Contrato

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1120)

## Solução

Podemos dividir esse problema em dois passos:

1. Criar uma nova string com os mesmos caracteres que a string passada, só que sem o caractere ignorado;
2. Retirar os zeros à frente da string resultante, seja manualmente ou usando a expressão regular `/^(0+)/`, que checa se há um ou mais zeros à frente da string formada.

> É muito importante manter a string o tempo todo sem converter para inteiro porque não vai caber.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int n, p;
    char D, N[101], resposta[101];

    while(scanf("%c %s\n", &D, &N) != EOF){
        if(D == '0' && !strcmp(N, "0"))    break;

        p = 0;
        n = strlen(N);
        memset(resposta, '\0', sizeof(resposta));

        for(int i = 0; i < n; ++i){
            if(N[i] != D)   resposta[p++] = N[i];
        }

        p = 0;
        n = strlen(resposta);
        while(p < n){
            if(resposta[p] != '0')  break;
            ++p;
        }

        if(p == n){
            printf("0\n");
        }else{
            strcpy(resposta, resposta + p);
            printf("%s\n", resposta);
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
    int p;
    char D;
    string N, resposta;

    while(cin >> D >> N){
        if(D == '0' && N == "0")    break;

        p = 0;
        resposta = "";
        for(int i = 0; i < N.length(); ++i){
            if(N[i] != D)   resposta += N[i];
        }

        p = 0;
        while(p < resposta.length()){
            if(resposta[p] != '0')  break;
            ++p;
        }

        if(p == resposta.length())  cout << 0 << endl;
        else{
            resposta = resposta.substr(p);
            cout << resposta << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [D, N] = lines.shift().trim().split(' ');

    if(D === '0' && N === '0')  break;

    N = N.split('').filter((x) => x != D).join('');

    let re = /^(0+)/i;
    let resultado = N.match(re);
    if(resultado)   N = N.replace(resultado[0], '');

    if(N.length === 0)   console.log('0');
    else                console.log(N);
}
```

### Python 3.9
```python
import re

while True:
    try:
        D, N = input().strip().split(' ')

        if(D == '0' and N == '0'):
            break

        resposta = ''
        for letra in N:
            if(letra != D):
                resposta += letra
        
        resultado = re.findall(r'^(0+)', resposta)

        if(len(resultado) > 0):
            resposta = resposta.replace(resultado[0], '', 1)

        if(len(resposta) == 0):
            print('0')
        else:
            print(resposta)
    except EOFError:
        break
```