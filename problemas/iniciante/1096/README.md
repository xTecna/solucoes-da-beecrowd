# 1096 - Sequencia IJ 2

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1096)

## Solução

Pelo que podemos enxergar, temos o valor de `I` começando com 1 e somando de 2 em 2, mas sendo impresso diversas vezes com o mesmo valor, mas com o valor de `J` indo sempre de 7 a 5. Com isso, pode-se fazer dois *loops* onde no mais externo muda-se o valor de `I` e no interno muda-se o valor de `J`, sempre com a mesma variação de 7 a 5.

### C99

```c
#include <stdio.h>

int main()
{
    for (int i = 1; i < 10; i += 2)
    {
        for (int j = 7; j > 4; --j)
        {
            printf("I=%d J=%d\n", i, j);
        }
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
    for (int i = 1; i < 10; i += 2)
    {
        for (int j = 7; j > 4; --j)
        {
            cout << "I=" << i << " J=" << j << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        for(int i = 1; i < 10; i += 2){
            for(int j = 7; j > 4; --j){
                Console.WriteLine($"I={i} J={j}");
            }
        }
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for(int i = 1; i < 10; i += 2){
            for(int j = 7; j > 4; --j){
                System.out.printf("I=%d J=%d\n", i, j);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

for (let i = 1; i < 10; i += 2) {
    for (let j = 7; j > 4; --j) {
        console.log(`I=${i} J=${j}`);
    }
}
```

### Python 3.9

```py
for i in range(1, 10, 2):
    for j in range(7, 4, -1):
        print(f'I={i} J={j}')
```