# 2547 - Montanha-Russa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2547)

## Solução

Para cada altura lida, veja se ela está entre as alturas mínima e máxima e adicione em um contador.

### C99

```c
#include <stdio.h>

int main()
{
    int N, Amin, Amax, A, permitidos;

    while (scanf("%d %d %d", &N, &Amin, &Amax) != EOF)
    {
        permitidos = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &A);

            if (A >= Amin && A <= Amax)
            {
                ++permitidos;
            }
        }

        printf("%d\n", permitidos);
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
    int N, Amin, Amax, A, permitidos;

    while (cin >> N >> Amin >> Amax)
    {
        permitidos = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> A;

            if (A >= Amin && A <= Amax)
            {
                ++permitidos;
            }
        }

        cout << permitidos << endl;
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
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int Amin = numeros[1];
            int Amax = numeros[2];

            int permitidos = 0;
            for(int i = 0; i < N; ++i){
                int A = int.Parse(Console.ReadLine());

                if(A >= Amin && A <= Amax){
                    ++permitidos;
                }
            }

            Console.WriteLine(permitidos);
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
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int Amin = Integer.parseInt(entrada[1]);
            int Amax = Integer.parseInt(entrada[2]);

            int permitidos = 0;
            for (int i = 0; i < N; ++i) {
                int A = Integer.parseInt(in.readLine());

                if (A >= Amin && A <= Amax) {
                    ++permitidos;
                }
            }

            System.out.println(permitidos);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [N, Amin, Amax] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let permitidos = 0;
    for (let i = 0; i < N; ++i) {
        let A = parseInt(lines.shift());

        if (A >= Amin && A <= Amax) {
            ++permitidos;
        }
    }

    console.log(permitidos);
}
```

### Python 3.9

```py
while True:
    try:
        N, Amin, Amax = [int(x) for x in input().strip().split(' ')]

        permitidos = 0
        for _ in range(N):
            A = int(input())

            if(Amin <= A <= Amax):
                permitidos += 1

        print(permitidos)
    except EOFError:
        break
```