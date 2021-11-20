# 1743 - Máquina de Verificação Automatizada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1743)

## Solução

Independente da alternativa que você escolher para resolver o problema, é importante notar que duas posições do conector só podem ser compatíveis se em uma delas tiver um plugue e em outra uma tomada. Isso é a cara do ou exclusivo, onde dá verdadeiro se um e somente um dos valores é 1.

### Alternativa 1 - Simulação

Para fazer a simulação, basta representar os conectores como um vetor e depois verificar cada posição, no primeiro caso de conectores iguais pode-se descartar a pesquisa e apresentar o veredito.

#### C99
```c
#include <stdio.h>

int main(){
    int X[5], Y[5];
    int compativel;

    for(int i = 0; i < 5; ++i){
        scanf("%d", &X[i]);
    }
    for(int i = 0; i < 5; ++i){
        scanf("%d", &Y[i]);
    }

    compativel = 1;
    for(int i = 0; i < 5; ++i){
        if(X[i] == Y[i]){
            compativel = 0;
            break;
        }
    }

    printf("%c\n", compativel ? 'Y' : 'N');

    return 0;
}
```

#### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int X[5], Y[5];
    bool compativel;

    for(int i = 0; i < 5; ++i){
        cin >> X[i];
    }
    for(int i = 0; i < 5; ++i){
        cin >> Y[i];
    }

    compativel = true;
    for(int i = 0; i < 5; ++i){
        if(X[i] == Y[i]){
            compativel = false;
            break;
        }
    }

    cout << (compativel ? 'Y' : 'N') << endl;

    return 0;
}
```

#### JavaScript 12.18
```javascript
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let X = lines.shift().trim().split(' ').map((x) => parseInt(x));
let Y = lines.shift().trim().split(' ').map((x) => parseInt(x));

let conectores = [];
for(let i = 0; i < 5; ++i){
    conectores.push([X[i], Y[i]]);
}

console.log(conectores.every((x) => x[0] !== x[1]) ? 'Y' : 'N');
```

#### Python 3.9
```python
X = [int(x) for x in input().strip().split(' ')]
Y = [int(x) for x in input().strip().split(' ')]

compativel = True
for i in range(5):
    if(X[i] == Y[i]):
        compativel = False
        break

print('Y' if compativel else 'N')
```

### Alternativa 2 - Mexer com números binários

Nessa alternativa, acreditamos ser mais interessante transformar os dois conectores em números binários e fazer a comparação apenas uma vez, onde o objetivo é que a operação ou exclusivo dê verdadeiro nas cinco posições. Com isso, o resultado procurado é 11111, que na base 10 é igual a 31.

#### C99
```c
#include <stdio.h>

int main(){
    int X, Y, a;

    X = 0;
    for(int i = 0; i < 5; ++i){
        scanf("%d", &a);
        X *= 2;
        X += a;
    }

    Y = 0;
    for(int i = 0; i < 5; ++i){
        scanf("%d", &a);
        Y *= 2;
        Y += a;
    }

    printf("%c\n", (X ^ Y) == 31 ? 'Y' : 'N');

    return 0;
}
```

#### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int X, Y, a;

    X = 0;
    for(int i = 0; i < 5; ++i){
        cin >> a;
        X *= 2;
        X += a;
    }

    Y = 0;
    for(int i = 0; i < 5; ++i){
        cin >> a;
        Y *= 2;
        Y += a;
    }

    cout << ((X ^ Y) == 31 ? 'Y' : 'N') << endl;

    return 0;
}
```

#### JavaScript 12.18
```javascript
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

X = parseInt(lines[0].trim().split(' ').join(''), 2);
Y = parseInt(lines[1].trim().split(' ').join(''), 2);

console.log(`${(X ^ Y) == 31 ? 'Y' : 'N'}`);
```

#### Python 3.9
```python
X = int(''.join(input().strip().split(' ')), 2)
Y = int(''.join(input().strip().split(' ')), 2)

print('Y' if (X ^ Y) == 31 else 'N')
```