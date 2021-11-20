# 1217 - Getline Two - Frutas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1217)

## Solução

> Podemos assumir sempre que todas as frutas estão separadas por um único espaço e não há espaços antes nem depois da linha a ser lida.

Com isso em mente, o problema se torna muito mais fácil para linguagens de baixo nível, já que basta contar quantos espaços existem na linha inteira. Para linguagens de alto nível, podemos contar o número de palavras normalmente separando-as pelo caractere do espaço.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char *pos;
    int N, frutas;
    char linha[10000];
    double V, pesoPorDia, gastoPorDia;

    scanf("%d\n", &N);

    pesoPorDia = 0.0;
    gastoPorDia = 0.0;
    
    for(int i = 1; i <= N; ++i){
        scanf("%lf\n", &V);
        scanf("%[^\n]", &linha);

        frutas = 1;
        pos = strchr(linha, ' ');
        while(pos != NULL){
            ++frutas;
            pos = strchr(pos + 1, ' ');
        }

        printf("day %d: %d kg\n", i, frutas);

        pesoPorDia += frutas;
        gastoPorDia += V;
    }

    pesoPorDia /= N;
    gastoPorDia /= N;

    printf("%.2lf kg by day\nR$ %.2lf by day\n", pesoPorDia, gastoPorDia);

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <sstream>
#include <iomanip>
#include <vector>

using namespace std;

int main(){
    int N, frutas;
    stringstream fluxo;
    string linha, fruta;
    double V, pesoPorDia, gastoPorDia;

    cin >> N;

    pesoPorDia = 0.0;
    gastoPorDia = 0.0;

    for(int i = 1; i <= N; ++i){
        cin >> V;
        cin.ignore();
        getline(cin, linha);

        frutas = 0;
        fluxo.clear();
        fluxo << linha;
        while(fluxo >> fruta){
            ++frutas;
        }
        
        cout << "day " << i << ": " << frutas << " kg" << endl;

        pesoPorDia += frutas;
        gastoPorDia += V;
    }

    pesoPorDia /= N;
    gastoPorDia /= N;
    
    cout << setprecision(2) << fixed << pesoPorDia << " kg by day" << endl;
    cout << "R$ " << setprecision(2) << fixed << gastoPorDia << " by day" << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pesoPorDia = 0.0, gastoPorDia = 0.0;

let N = parseInt(lines.shift().trim());

for(let i = 1; i <= N; ++i){
    let V = parseFloat(lines.shift().trim());
    let frutas = lines.shift().trim().split(' ').length;

    console.log(`day ${i}: ${frutas} kg`);

    pesoPorDia += frutas;
    gastoPorDia += V;
}

pesoPorDia /= N;
gastoPorDia /= N;

console.log(`${pesoPorDia.toFixed(2)} kg by day`);
console.log(`R$ ${gastoPorDia.toFixed(2)} by day`);
```

### Python 3.9
```python
pesoPorDia = 0.0
gastoPorDia = 0.0

N = int(input())

for i in range(1, N + 1):
    V = float(input())
    frutas = len(input().strip().split(' '))

    print(f"day {i}: {frutas} kg")

    pesoPorDia += frutas
    gastoPorDia += V

pesoPorDia /= N
gastoPorDia /= N

print(f"{pesoPorDia:.2f} kg by day")
print(f"R$ {gastoPorDia:.2f} by day")
```