# 1235 - De Dentro para Fora

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1235)

## Solução

O objetivo desse problema é separar a string passada em duas metades e performar a inversão nas duas metades, juntando-as novamente. A primeira metade de uma string de tamanho `N` cobre as letras no intervalo `[0, N/2[` e a segunda as letras no intervalo `[N/2, N[`. Em linguagens de baixo nível, você precisa de fato ir e inverter uma letra de cada vez, o que se torna um processo bem confuso, mas em linguagens de alto nível, tudo se torna muito mais fácil.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int N, n;
    char aux, frase[101];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%[^\n]\n", &frase);

        n = strlen(frase);
        for(int j = 0; j < n/4; ++j){
            aux = frase[j];
            frase[j] = frase[n/2 - j - 1];
            frase[n/2 - j - 1] = aux;

            aux = frase[j + n/2];
            frase[j + n/2] = frase[n - j - 1];
            frase[n - j - 1] = aux;
        }

        printf("%s\n", frase);
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>

using namespace std;

int main(){
    int N;
    string frase;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, frase);

        reverse(frase.begin(), frase.begin() + frase.length()/2);
        reverse(frase.begin() + frase.length()/2, frase.end());

        cout << frase << endl;
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
    let frase = lines.shift();

    let metade1 = frase.substring(0, frase.length/2).split('').reverse().join('');
    let metade2 = frase.substring(frase.length/2).split('').reverse().join('');
    
    console.log(metade1 + metade2);
}
```

### Python 3.9
```python
N = int(input())

for _ in range(N):
    frase = input()

    metade1 = frase[:len(frase)//2]
    metade2 = frase[len(frase)//2:]

    print(metade1[::-1] + metade2[::-1])
```