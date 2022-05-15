# 1143 - Quadrado e ao Cubo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1143)

## Solução

Não é necessário nenhuma função especial de potência, basta multiplicar o número duas e três vezes para elevar um número ao quadrado e ao cubo respectivamente.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i <= N; ++i)
    {
        printf("%d %d %d\n", i, i * i, i * i * i);
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
        cout << i << ' ' << i * i << ' ' << i * i * i << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N;

        N = int.Parse(Console.ReadLine());

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"{i} {i * i} {i * i * i}");
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
            System.out.printf("%d %d %d\n", i, i * i, i * i * i);
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
}
```

### Python 3.9

```py
N = int(input())

for i in range(1, N + 1):
    print(f'{i} {i * i} {i * i * i}')
```