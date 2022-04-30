# 1095 - Sequencia IJ 1

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1095)

## Solução

Nesse problema, tudo o que você precisa é identificar o padrão apresentado ali. Podemos ver que o `I` vai aumentando de 3 em 3 e o `J` vai diminuindo de 5 em 5 e que a gente termina quando `J` for 0. A princípio, não sabemos onde `I` vai terminar, então você pode codificar com o critério de parada considerando apenas o valor de `J`.

### C99

```c
#include <stdio.h>

int main()
{
    for (int i = 1, j = 60; j > -1; i += 3, j -= 5)
    {
        printf("I=%d J=%d\n", i, j);
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
    for (int i = 1, j = 60; j > -1; i += 3, j -= 5)
    {
        cout << "I=" << i << " J=" << j << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        for(int i = 1, j = 60; j > -1; i += 3, j -= 5){
            Console.WriteLine($"I={i} J={j}");
        }
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for(int i = 1, j = 60; j > -1; i += 3, j -= 5){
            System.out.printf("I=%d J=%d\n", i, j);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

for (let i = 1, j = 60; j > -1; i += 3, j -= 5) {
    console.log(`I=${i} J=${j}`);
}
```

### Python 3.9

```py
for i, j in zip(range(1, 1000, 3), range(60, -1, -5)):
    print(f'I={i} J={j}')
```