# 1467 - Zerinho ou Um

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1467)

## Solução

Existem várias formas de resolver esse problema, incluindo fazer todos os ifs prováveis para decidir cada vitória. No caso dos códigos abaixo, segui uma abordagem de primeiro contar a soma de todos os números. Se a soma der 1, significa que só uma pessoa colocou 1. Se a soma der 2, significa que só uma pessoa colocou 0. Logo, primeiro fazemos a soma e depois perguntamos quem foi a pessoa que colocou 1 ou 0.

### C99
```c
#include <stdio.h>

int main()
{
    int A, B, C;

    while (scanf("%d %d %d", &A, &B, &C) != EOF)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                printf("A\n");
            else if (B == 1)
                printf("B\n");
            else
                printf("C\n");
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                printf("A\n");
            else if (B == 0)
                printf("B\n");
            else
                printf("C\n");
        }
        else
            printf("*\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int A, B, C;

    while (cin >> A >> B >> C)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                cout << 'A' << endl;
            else if (B == 1)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                cout << 'A' << endl;
            else if (B == 0)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else
        {
            cout << '*' << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
  let [A, B, C] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (A + B + C === 1) {
    if (A === 1) console.log("A");
    else if (B === 1) console.log("B");
    else console.log("C");
  } else if (A + B + C == 2) {
    if (A === 0) console.log("A");
    else if (B === 0) console.log("B");
    else console.log("C");
  } else console.log("*");
}
```

### Python 3.9
```python
while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(A + B + C == 1):
            if(A == 1):
                print('A')
            elif(B == 1):
                print('B')
            else:
                print('C')
        elif(A + B + C == 2):
            if(A == 0):
                print('A')
            elif(B == 0):
                print('B')
            else:
                print('C')
        else:
            print('*')
    except EOFError:
        break
```