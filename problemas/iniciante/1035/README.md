# 1035 - Teste de Seleção 1

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1035)

## Solução

Para verificar se um número é par, basta verificar se o resto da divisão do número por 2 é 0.

> Independente de você considerar 0 como um número positivo ou um número não-negativo, é possível dar Accepted com as duas abordagens (testando positivo se número > -1 ou número > 0).

### C99

```c
#include <stdio.h>

int main(){
    int A, B, C, D;

    scanf("%d %d %d %d", &A, &B, &C, &D);
    
    if((B > C) && (D > A) && (C + D > A + B) && (C > 0) && (D > 0) && (A % 2 == 0)){
        printf("Valores aceitos\n");
    }else{
        printf("Valores nao aceitos\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B, C, D;

    cin >> A >> B >> C >> D;

    if((B > C) && (D > A) && (C + D > A + B) && (C > 0) && (D > 0) && (A % 2 == 0)){
        cout << "Valores aceitos" << endl;
    }else{
        cout << "Valores nao aceitos" << endl;
    }

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [A, B, C, D] = lines.shift().trim().split(" ").map((x) => parseInt(x));

if (B > C && D > A && C + D > A + B && C > 0 && D > 0 && A % 2 === 0) {
  console.log("Valores aceitos");
} else {
  console.log("Valores nao aceitos");
}
```

### Python 3.9

```python
A, B, C, D = [int(x) for x in input().strip().split(' ')]

if((B > C) and (D > A) and (C + D > A + B) and (C > 0) and (D > 0) and (A % 2 == 0)):
    print("Valores aceitos")
else:
    print("Valores nao aceitos")
```