# 1097 - Sequencia IJ 3

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1097)

## Solução

Mais uma sequência... Dessa vez, bem parecida com a anterior (vide problema [1096 - Sequencia IJ 2](../1096/README.md)), mas eu aconselharia usar uma variável adicionar para auxiliar no cálculo do valor inicial de `J` a cada *loop* externo.

### C99

```c
#include <stdio.h>

int main()
{
    int k = 7;
    for (int i = 1; i < 10; i += 2, k += 2)
    {
        for (int j = k; j > k - 3; --j)
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
    int k = 7;
    for (int i = 1; i < 10; i += 2, k += 2)
    {
        for (int j = k; j > k - 3; --j)
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
        int k = 7;
        for(int i = 1; i < 10; i += 2, k += 2){
            for(int j = k; j > k - 3; --j){
                Console.WriteLine($"I={i} J={j}");
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int k = 7;
        for(int i = 1; i < 10; i += 2, k += 2){
            for(int j = k; j > k - 3; --j){
                System.out.printf("I=%d J=%d\n", i, j);
            }
        }
    }
}
```

### Javascript 12.18

```js
let k = 7;
for (let i = 1; i < 10; i += 2, k += 2) {
    for (let j = k; j > k - 3; --j) {
        console.log(`I=${i} J=${j}`);
    }
}
```

### Python 3.9

```py
k = 7
for i in range(1, 10, 2):
    for j in range(k, k - 3, -1):
        print(f'I={i} J={j}')
    k += 2
```