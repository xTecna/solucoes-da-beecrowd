# 1216 - Getline One

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1216)

## Solução

Para algumas linguagens, tal problema é trivial. Mas até em Python tem algumas diferenças, um pensamento fora da caixa, quando normalmente o programa inteiro fica dentro do while.

Na linguagem C, é possível usar o `scanf` para ler linhas inteiras usando a máscara apresentada no código abaixo.

Na linguagem C++, é possível usar o `getline`, mas esse comando usa o mesmo buffer que o `cin`, logo, toda vez que se usa o comando de `cin`, é necessário após isso dar o comando `cin.ignore()` para garantir que o `getline` sempre irá funcionar.

Na linguagem JavaScript, podemos fazer um `reduce` somando apenas os elementos nas posições ímpares e ignorar completamente os nomes.

### C99
```c
#include <stdio.h>

int main(){
    char nome[100];
    int media, pessoas, distancia;

    media = 0, pessoas = 0;
    while(scanf("%[^\n]", &nome) != EOF){
        scanf("%d\n", &distancia);

        media += distancia;
        ++pessoas;
    }

    printf("%.1lf\n", (double) media/pessoas);

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    string nome;
    int media, pessoas, distancia;

    media = 0, pessoas = 0;
    while(getline(cin, nome)){
        cin >> distancia;
        cin.ignore();

        media += distancia;
        ++pessoas;
    }

    cout << setprecision(1) << fixed << (double) media/pessoas << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let media = lines.reduce((acc, cur, i) => (i % 2) ? acc + parseInt(cur) : acc, 0);
let resultado = media/(lines.length/2);

console.log(resultado.toFixed(1));
```

### Python 3.9
```python
media, pessoas = 0, 0

while True:
    try:
        nome = input()
        distancia = int(input())

        media += distancia
        pessoas += 1
    except EOFError:
        break

resultado = media/pessoas

print(f"{resultado:.1f}")
```