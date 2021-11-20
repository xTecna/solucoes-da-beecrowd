# 1893 - Fases da Lua

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1893)

## Solução

O problema consiste em comparar o segundo número e verificar se ele está em algum dos intervalos estabelecidos. Entretanto, olhando apenas o segundo valor, podemos ficar na dúvida em relação a certos intervalos, e é para isso que serve o primeiro número, para desempatar os critérios. Desta maneira, temos

* Se o segundo número estiver entre 0 e 2, temos certeza que é lua nova;
* Se o segundo número estiver entre 97 e 100, temos certeza que é lua cheia;
* Caso contrário, não temos certeza se a lua é minguante ou crescente só com o segundo número:
  * Se o primeiro número for maior que o segundo, então é lua minguante (diminuindo);
  * Caso contrário, é lua crescente (crescendo).

### C99
```c
#include <stdio.h>

int main(){
    int ontem, hoje;

    scanf("%d %d", &ontem, &hoje);

    if(hoje < 3)            printf("nova\n");
    else if(hoje > 96)      printf("cheia\n");
    else if(hoje < ontem)   printf("minguante\n");
    else                    printf("crescente\n");

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int ontem, hoje;

    cin >> ontem >> hoje;

    if(hoje < 3)            cout << "nova" << endl;
    else if(hoje > 96)      cout << "cheia" << endl;
    else if(hoje < ontem)   cout << "minguante" << endl;
    else                    cout << "crescente" << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [ontem, hoje] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if(hoje < 3)            console.log("nova");
else if(hoje > 96)      console.log("cheia");
else if(hoje < ontem)   console.log("minguante");
else                    console.log("crescente");
```

### Python 3.9
```python
[ontem, hoje] = [int(x) for x in input().strip().split(' ')]

if(hoje < 3):
    print("nova")
elif(hoje > 96):
    print("cheia")
elif(hoje < ontem):
    print("minguante")
else:
    print("crescente")
```