# 1541 - Construindo Casas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1541)

## Solução

Esse problema tem um enunciado incrivelmente confuso, então eu vou ver se eu consigo destrinchar mais ou menos a ideia.

A ideia seria que você gostaria de construir uma casa com área `A` x `B`, mas você quer fazer isso de forma que o terreno seja quadrado. Com isso, basta multiplicarmos `A` com `B` e tirarmos a raiz quadrada para descobrirmos qual seria o lado do quadrado do nosso terreno. OK, até aqui tudo certo. Entretanto, temos uma variável `C` que indica a porcentagem permitida do terreno onde podemos construir. Se `C` fosse sempre 100%, não teríamos nenhum problema, mas às vezes ele pode ser menor. Nesse caso, a área que vamos construir não é mais `A` vezes `B`, e sim `A` vezes `B` vezes 100/`C`, ou seja, o quanto de área que o terreno deve ter em relação ao 100%. Se o valor for 100%, multiplicamos por 1, o que dá no mesmo. Mas se esse valor for, por exemplo, 20%, então agora precisamos ter um terreno 5 vezes maior para arcar com essa restrição de que só 20% do terreno pode ser construído (e que queremos construir em uma área de `A` x `B`).

Lembrando que ao final da operação é necessário tirar a raiz quadrada desse novo cálculo da área e arredondar o resultado obtido para baixo.

### C99

```c
#include <stdio.h>
#include <math.h>

int main()
{
    int A, B, C;

    while (scanf("%d", &A) != EOF)
    {
        if (A == 0)
        {
            break;
        }

        scanf("%d %d", &B, &C);
        printf("%.0lf\n", floor(sqrt(A * B * 100.0 / C)));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int A, B, C;

    while (cin >> A)
    {
        if (A == 0)
        {
            break;
        }

        cin >> B >> C;
        cout << floor(sqrt(A * B * 100.0 / C)) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            List<int> numeros = entrada.Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            if (numeros.Count == 1)
            {
                break;
            }

            Console.WriteLine($"{Math.Floor(Math.Sqrt(numeros[0] * numeros[1] * 100.0 / numeros[2])):0}");
        }
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

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            if (entrada.length == 1) {
                break;
            }

            int A = Integer.parseInt(entrada[0]);
            int B = Integer.parseInt(entrada[1]);
            int C = Integer.parseInt(entrada[2]);

            System.out.println(String.format("%.0f", Math.floor(Math.sqrt(A * B * 100.0 / C))));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (A === 0) {
        break;
    }

    console.log((Math.floor(Math.sqrt(A * B * 100.0 / C))).toFixed(0));
}
```

### Python 3.9

```py
import math

while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(A == 0):
            break

        print(f'{math.floor(math.sqrt(A * B * 100/C)):.0f}')
    except EOFError:
        break
    except ValueError:
        break
```