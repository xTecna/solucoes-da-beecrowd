# 1065 - Pares entre Cinco Números

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1065)

## Solução

Vide problema [1066 - Pares, Ímpares, Positivos e Negativos](../1066/README.md), uma versão muito mais difícil desse problema.

### C99

```c
#include <stdio.h>

int main()
{
    int numero, pares;

    pares = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &numero);

        pares += !(numero % 2);
    }

    printf("%d valores pares\n", pares);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int pares, numero;

    pares = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> numero;

        if (numero % 2 == 0)
        {
            pares += 1;
        }
    }

    cout << pares << " valores pares" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int pares = 0;
        
        for(int i = 0; i < 5; ++i){
            int numero = int.Parse(Console.ReadLine());
            
            if(numero % 2 == 0){
                ++pares;
            }
        }
        
        Console.WriteLine($"{pares} valores pares");
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
        
        int pares = 0;
        
        for(int i = 0; i < 5; ++i){
            int numero = Integer.parseInt(in.readLine());
            
            if(numero % 2 == 0){
                ++pares;
            }
        }
        
        System.out.printf("%d valores pares\n", pares);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pares = 0;
for (let i = 0; i < 5; ++i) {
    let numero = parseInt(lines.shift());

    pares += !(numero % 2);
}

console.log(`${pares} valores pares`);
```

### Python 3.9

```py
pares = 0

for _ in range(5):
    numero = int(input())

    pares += not (numero % 2)

print(f'{pares} valores pares')

```