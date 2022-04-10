# 1073 - Quadrado de Pares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1073)

## Solução

Vide problema [1067 - Números Ímpares](../1067/README.md) para entender o raciocínio do `for`.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 2; i <= N; i += 2)
        printf("%d^2 = %d\n", i, i * i);

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

    for (int i = 2; i <= N; i += 2)
        cout << i << "^2 = " << i * i << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int i = 2; i <= N; i += 2){
            Console.WriteLine($"{i}^2 = {i * i}");
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
        
        for(int i = 2; i <= N; i += 2){
            System.out.printf("%d^2 = %d\n", i, i * i);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 2; i <= N; i += 2)
    console.log(`${i}^2 = ${i * i}`);
```

### Python 3.9

```py
N = int(input())

for i in range(2, N + 1, 2):
    print('{0}^2 = {1}'.format(i, i**2))
```