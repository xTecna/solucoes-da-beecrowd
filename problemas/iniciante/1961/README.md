# 1961 - Pula Sapo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1961)

## Solução

Você pode começar lendo apenas o primeiro cano e a partir do segundo, ler, avaliar a diferença de altura entre os dois canos, descartar o primeiro valor e ficar com o segundo.

Nos códigos apresentados eu incluo uma variável `resposta` que só é verdadeira se todas as diferenças são abaixo ou igual ao limite estabelecido, mas você poderia muito bem interromper a entrada assim que encontrar um par que não respeita o limite.

### C99

```c
#include <stdio.h>

int main()
{
    int P, N, anterior, atual, resposta;

    scanf("%d %d", &P, &N);

    scanf("%d", &anterior);
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &atual);

        resposta &= (abs(atual - anterior) <= P);
        anterior = atual;
    }

    printf("%s\n", resposta ? "YOU WIN" : "GAME OVER");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    bool resposta;
    int P, N, anterior, atual;

    cin >> P >> N;

    cin >> anterior;
    resposta = true;
    for (int i = 1; i < N; ++i)
    {
        cin >> atual;

        resposta &= (abs(atual - anterior) <= P);
        anterior = atual;
    }

    cout << (resposta ? "YOU WIN" : "GAME OVER") << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> canos = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        bool resposta = true;
        for (int i = 1; i < entrada[1]; ++i)
        {
            resposta &= (Math.Abs(canos[i] - canos[i - 1]) <= entrada[0]);
        }

        Console.WriteLine(resposta ? "YOU WIN" : "GAME OVER");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        String[] canos = in.readLine().trim().split(" ");

        int P = Integer.parseInt(entrada[0]);
        int N = Integer.parseInt(entrada[1]);

        boolean resposta = true;
        for (int i = 1; i < N; ++i) {
            resposta &= (Math.abs(Integer.parseInt(canos[i]) - Integer.parseInt(canos[i - 1])) <= P);
        }

        System.out.println(resposta ? "YOU WIN" : "GAME OVER");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [P, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let canos = lines.shift().trim().split(' ').map((x) => parseInt(x));
let resposta = true;
for (let i = 1; i < N; ++i) {
    resposta &= Math.abs(canos[i - 1] - canos[i]) <= P;
}

console.log(resposta ? "YOU WIN" : "GAME OVER");
```

### Python 3.9

```py
P, N = [int(x) for x in input().strip().split(' ')]
canos = [int(x) for x in input().strip().split(' ')]

resposta = True
for i in range(1, N):
    resposta &= abs(canos[i - 1] - canos[i]) <= P

print('YOU WIN' if resposta else 'GAME OVER')
```