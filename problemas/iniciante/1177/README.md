# 1177 - Preenchimento de Vetor II

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1177)

## Solução

Não é necessário criar o vetor, apenas se aproveite de aritmética modular para imprimir o valor de `i` do *loop* sempre com o valor sequencial correto entre `0` e `N - 1` usando a expressão `i % N`.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 0; i < 1000; ++i)
    {
        printf("N[%d] = %d\n", i, i % N);
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

    for (int i = 0; i < 1000; ++i)
    {
        cout << "N[" << i << "] = " << i % N << endl;
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

        for(int i = 0; i < 1000; ++i){
            Console.WriteLine($"N[{i}] = {i % N}");
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

        for(int i = 0; i < 1000; ++i){
            System.out.printf("N[%d] = %d\n", i, i % N);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < 1000; ++i) {
    console.log(`N[${i}] = ${i % N}`);
}
```

### Python 3.9

```py
N = int(input())

for i in range(1000):
    print(f'N[{i}] = {i % N}')

```