# 2702 - Escolha Difícil

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2702)

## Solução

Vai somando cada par à resposta sempre que o número de refeições requisitadas for maior que o número de refeições disponíveis. Se o número de refeições disponíveis cobrir o número de requisitadas, não some nada para este caso.

### C99

```c
#include <stdio.h>

int main()
{
    int Ca, Ba, Pa, Cr, Br, Pr;

    scanf("%d %d %d", &Ca, &Ba, &Pa);
    scanf("%d %d %d", &Cr, &Br, &Pr);

    int resposta = 0;
    resposta += (Cr > Ca) ? (Cr - Ca) : 0;
    resposta += (Br > Ba) ? (Br - Ba) : 0;
    resposta += (Pr > Pa) ? (Pr - Pa) : 0;

    printf("%d\n", resposta);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int Ca, Ba, Pa, Cr, Br, Pr;

    cin >> Ca >> Ba >> Pa;
    cin >> Cr >> Br >> Pr;

    int resposta = 0;
    resposta += (Cr > Ca) ? (Cr - Ca) : 0;
    resposta += (Br > Ba) ? (Br - Ba) : 0;
    resposta += (Pr > Pa) ? (Pr - Pa) : 0;

    cout << resposta << endl;

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
        List<int> disponiveis = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        List<int> requisitadas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int resposta = 0;
        for(int i = 0; i < 3; ++i){
            resposta += (requisitadas[i] > disponiveis[i]) ? (requisitadas[i] - disponiveis[i]) : 0;
        }

        Console.WriteLine(resposta);
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

        String[] disponiveis = in.readLine().trim().split(" ");
        String[] requisitadas = in.readLine().trim().split(" ");

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            int disponivel = Integer.parseInt(disponiveis[i]);
            int requisitada = Integer.parseInt(requisitadas[i]);

            resposta += (requisitada > disponivel) ? (requisitada - disponivel) : 0;
        }

        System.out.println(resposta);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [Ca, Ba, Pa] = lines.shift().trim().split(' ').map(x => parseInt(x));
let [Cr, Br, Pr] = lines.shift().trim().split(' ').map(x => parseInt(x));

let resposta = 0;
resposta += (Cr > Ca) ? (Cr - Ca) : 0;
resposta += (Br > Ba) ? (Br - Ba) : 0;
resposta += (Pr > Pa) ? (Pr - Pa) : 0;

console.log(resposta);
```

### Python 3.9

```py
Ca, Ba, Pa = [int(x) for x in input().strip().split(' ')]
Cr, Br, Pr = [int(x) for x in input().strip().split(' ')]

resposta = 0
resposta += (Cr - Ca) if (Cr > Ca) else 0
resposta += (Br - Ba) if (Br > Ba) else 0
resposta += (Pr - Pa) if (Pr > Pa) else 0

print(resposta)
```