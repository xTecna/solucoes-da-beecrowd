# 1144 - Sequência Lógica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1144)

## Solução

A sequência lógica consiste em, para um `N` recebido, imprimir, de 1 até `N` inclusive, duas linhas:

* A primeira linha com `x`, `x` ao quadrado e `x` ao cubo
* A segunda linha com `x`, `x` ao quadrado mais um e `x` ao cubo mais um

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i <= N; ++i)
    {
        printf("%d %d %d\n%d %d %d\n", i, i * i, i * i * i, i, i * i + 1, i * i * i + 1);
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
    int N;

    cin >> N;

    for (int i = 1; i <= N; ++i)
    {
        cout << i << ' ' << i * i << ' ' << i * i * i << endl
             << i << ' ' << i * i + 1 << ' ' << i * i * i + 1 << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"{i} {i * i} {i * i * i}");
            Console.WriteLine($"{i} {i * i + 1} {i * i * i + 1}");
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
    
        int N = Integer.parseInt(in.readLine());

        for(int i = 1; i <= N; ++i){
            System.out.printf("%d %d %d\n%d %d %d\n", i, i * i, i * i * i, i, i * i + 1, i * i * i + 1);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 1; i <= N; ++i) {
    console.log(`${i} ${i * i} ${i * i * i}`);
    console.log(`${i} ${i * i + 1} ${i * i * i + 1}`);
}
```

### Python 3.9

```py
N = int(input())

for i in range(1, N + 1):
    print(f'{i} {i * i} {i * i * i}')
    print(f'{i} {i * i + 1} {i * i * i + 1}')
```