# 2006 - Identificando o Chá

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2006)

## Solução

Comece com um contador valendo 0 e vá adicionando 1 para cada resposta igual ao primeiro número lido.

### C99

```c
#include <stdio.h>

int main()
{
    int T, cha, corretos;

    scanf("%d", &T);

    corretos = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &cha);

        if (cha == T)
        {
            ++corretos;
        }
    }

    printf("%d\n", corretos);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int T, cha, corretos;

    cin >> T;

    corretos = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> cha;

        if (cha == T)
        {
            ++corretos;
        }
    }

    cout << corretos << endl;

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
        string T = Console.ReadLine().Trim();
        string[] entrada = Console.ReadLine().Trim().Split(' ');

        int corretos = 0;
        for (int i = 0; i < 5; ++i)
        {
            if (entrada[i] == T)
            {
                ++corretos;
            }
        }

        Console.WriteLine(corretos);
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

        String T = in.readLine();

        String[] entrada = in.readLine().trim().split(" ");

        int contador = 0;
        for (int i = 0; i < 5; ++i) {
            if (entrada[i].equals(T)) {
                ++contador;
            }
        }

        System.out.println(contador);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift().trim());
let chas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let corretos = chas.reduce((acc, cur) => (cur === T) ? acc + 1 : acc, 0);

console.log(corretos);
```

### Python 3.9

```py
T = int(input())
chas = [int(x) for x in input().strip().split(' ')]

corretos = sum([1 for x in chas if x == T])

print(corretos)
```