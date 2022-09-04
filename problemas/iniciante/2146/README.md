# 2146 - Senha

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2146)

## Solução

Dado uma senha $N$, imprima $N - 1$.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        printf("%d\n", N - 1);
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

    while (cin >> N)
    {
        cout << N - 1 << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);
            Console.WriteLine(N - 1);
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

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());
            System.out.println(N - 1);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    console.log(N - 1);
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())
        print(N - 1)
    except EOFError:
        break
```