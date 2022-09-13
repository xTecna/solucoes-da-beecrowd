# 2551 - Novo Recorde

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2551)

## Solução

Aqui não é preciso guardar todas as velocidades, só de verificar se é maior do que a maior do momento já é suficiente. Com isso, o processo fica bem simulado: começar com velocidade máxima 0, ir vendo se o que acabou de ler é maior que a velocidade máxima e mudá-la (e imprimir o dia em que isso acontece) caso seja.

### C99

```c
#include <stdio.h>

int main()
{
    int N, T, D;
    double V, Vmax;

    while (scanf("%d", &N) != EOF)
    {
        Vmax = 0;
        for (int i = 1; i <= N; ++i)
        {
            scanf("%d %d", &T, &D);

            V = (double)D / T;
            if (V > Vmax)
            {
                Vmax = V;
                printf("%d\n", i);
            }
        }
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
    int N, T, D;
    double V, Vmax;

    while (cin >> N)
    {
        Vmax = 0;
        for (int i = 1; i <= N; ++i)
        {
            cin >> T >> D;

            V = (double)D / T;
            if (V > Vmax)
            {
                Vmax = V;
                cout << i << endl;
            }
        }
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

            double Vmax = 0;
            for(int i = 1; i <= N; ++i){
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                
                double V = (double)numeros[1]/numeros[0];
                if(V > Vmax){
                    Vmax = V;
                    Console.WriteLine(i);
                }
            }
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

            double Vmax = 0;
            for (int i = 1; i <= N; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int T = Integer.parseInt(entrada[0]);
                int D = Integer.parseInt(entrada[1]);

                double V = (double) D / T;
                if (V > Vmax) {
                    Vmax = V;
                    System.out.println(i);
                }
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    let Vmax = 0;
    for (let i = 1; i <= N; ++i) {
        let [T, D] = lines.shift().trim().split(' ').map(x => parseInt(x));

        let V = D / T;
        if (V > Vmax) {
            Vmax = V;
            console.log(i);
        }
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        Vmax = 0
        for i in range(1, N + 1):
            T, D = [int(x) for x in input().strip().split(' ')]

            V = D/T
            if(V > Vmax):
                Vmax = V
                print(i)
    except EOFError:
        break
```