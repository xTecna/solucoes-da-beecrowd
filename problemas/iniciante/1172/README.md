# 1172 - Substituição em Vetor I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1172)

## Solução

Não é preciso guardar nada do vetor pois já que a substituição só depende do próprio valor do elemento em si. Com isso, basta vermos se o elemento que estamos lendo tem valor menor ou igual a zero para decidirmos o que imprimir.

### C99

```c
#include <stdio.h>

int main()
{
    int X;

    for (int i = 0; i < 10; ++i)
    {
        scanf("%d", &X);
        printf("X[%d] = %d\n", i, (X <= 0) ? 1 : X);
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
    int X;

    for (int i = 0; i < 10; ++i)
    {
        cin >> X;
        cout << "X[" << i << "] = " << ((X <= 0) ? 1 : X) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X;

        for(int i = 0; i < 10; ++i){
            X = int.Parse(Console.ReadLine());
            Console.WriteLine($"X[{i}] = {X <= 0 ? 1 : X}");
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

        int X;

        for(int i = 0; i < 10; ++i){
            X = Integer.parseInt(in.readLine());
            System.out.printf("X[%d] = %d\n", i, X <= 0 ? 1 : X);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X;

for (let i = 0; i < 10; ++i) {
    X = parseInt(lines.shift());
    console.log(`X[${i}] = ${X <= 0 ? 1 : X}`);
}
```

### Python 3.9

```py
for i in range(10):
    X = int(input())
    print(f'X[{i}] = {1 if X <= 0 else X}')
```