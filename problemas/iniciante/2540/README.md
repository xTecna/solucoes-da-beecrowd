# 2540 - Impeachment do Líder

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2540)

## Solução

Somar todos os números passados e checar se esse número é maior ou igual a $\frac{2N}{3}$.

### C99

```c
#include <stdio.h>

int main()
{
    int N, voto, votos;

    while (scanf("%d", &N) != EOF)
    {
        votos = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &voto);
            votos += voto;
        }

        printf("%s\n", votos >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada");
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
    int N, voto, votos;

    while (cin >> N)
    {
        votos = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> voto;
            votos += voto;
        }

        cout << (votos >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada") << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            int soma = 0;
            List<int> votos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < N; ++i){
                soma += votos[i];
            }

            Console.WriteLine(soma >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada");
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
            String[] votos = in.readLine().trim().split(" ");

            int soma = 0;
            for (int i = 0; i < N; ++i) {
                soma += Integer.parseInt(votos[i]);
            }

            System.out.println(soma >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada");
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
    let votos = lines.shift().trim().split(' ').map(x => parseInt(x)).reduce((acc, cur) => acc + cur, 0);
    console.log(votos >= 2 * N / 3 ? "impeachment" : "acusacao arquivada");
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())
        votos = sum([int(x) for x in input().strip().split(' ')])
        print('impeachment' if votos >= 2 * N / 3 else 'acusacao arquivada')
    except EOFError:
        break
```