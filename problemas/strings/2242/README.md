# 2242 - Huaauhahhuahau

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2242)

## Solução

Você pode tomar dois passos simples para resolver este problema:

1. Tirar todas as consoantes da risada original, ficando agora apenas com as vogais;
2. Comparar esta risada com ela mesma, só que invertida. Neste caso, se as duas risadas, a normal e a invertida, forem iguais, então imprimir `S`, senão imprimir `N`.

Se preferir, você pode fazer o passo 2 fazendo um for que vai do começo até a metade comparando a primeira letra com a última, a segunda com a penúltima, a terceira com a antipenúltima e assim sucessivamente. Na minha implementação em C eu inclusive ignorei o primeiro passo completamente, usando um artifício de que eu só comparo letras se ambas forem vogais e ignorando as consoantes presentes.

### C99
```c
#include <string.h>
#include <stdio.h>

int vogal(char letra){
    switch(letra){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':   return 1;
        default:    return 0;
    }
}

int main(){
    int i, f;
    int engracada;
    char risada[51];

    scanf("%s", &risada);

    i = 0;
    f = strlen(risada) - 1;
    engracada = 1;
    while(i < f){
        if(vogal(risada[i]) && vogal(risada[f])){
            if(risada[i] != risada[f]){
                engracada = 0;
                break;
            }
            ++i;
            --f;
        }else{
            if(!vogal(risada[i]))   ++i;
            if(!vogal(risada[f]))   --f;
        }
    }

    printf("%c\n", engracada ? 'S' : 'N');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

bool vogal(char letra){
    switch(letra){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':   return true;
        default:    return false;
    }
}

int main(){
    int n;
    bool engracada;
    string risada, soVogal;

    cin >> risada;

    soVogal = "";
    for(int i = 0; i < risada.length(); ++i){
        if(vogal(risada[i]))    soVogal += risada[i];
    }

    engracada = true;
    n = soVogal.length();
    for(int i = 0; i < n/2; ++i){
        if(soVogal[i] != soVogal[n - i - 1]){
            engracada = false;
            break;
        }
    }

    cout << (engracada ? 'S' : 'N') << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const vogal = (letra) => ['a', 'e', 'i', 'o', 'u'].includes(letra);

let risada = lines.shift().trim().split('');

let soVogal = risada.filter((x) => vogal(x));
let invertido = [...soVogal];
soVogal = soVogal.join('');
invertido.reverse();
invertido = invertido.join('');

console.log((soVogal === invertido) ? 'S' : 'N');
```

### Python 3.9
```python
def vogal(letra):
    return letra in 'aeiou'


risada = input()

soVogal = ''.join(list(filter(vogal, risada)))
invertido = soVogal[::-1]

print('S' if soVogal == invertido else 'N')
```