# 2543 - Jogatina UFPR

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2543)

## Solução

Após ler o número de gameplays e o identificador, para cada gameplay, cheque se o identificador é igual ao da pessoa e se o `j` é igual a 0, já que se for igual a 1 continua sendo gameplay da pessoa, só que de outro jogo.

### C99

```c
#include <stdio.h>

int main()
{
    int N, I, identificador, j;

    while (scanf("%d %d", &N, &I) != EOF)
    {
        int gameplays = 0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &identificador, &j);

            if (identificador == I && j == 0)
            {
                ++gameplays;
            }
        }

        printf("%d\n", gameplays);
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
    int N, I, identificador, j;

    while (cin >> N >> I)
    {
        int gameplays = 0;
        for (int i = 0; i < N; ++i)
        {
            cin >> identificador >> j;

            if (identificador == I && j == 0)
            {
                ++gameplays;
            }
        }

        cout << gameplays << endl;
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
            int I = numeros[1];

            int gameplays = 0;
            for(int i = 0; i < N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                if(numeros[0] == I && numeros[1] == 0){
                    ++gameplays;
                }
            }

            Console.WriteLine(gameplays);
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
            String I = entrada[1];

            int gameplays = 0;
            for (int i = 0; i < N; ++i) {
                entrada = in.readLine().trim().split(" ");

                if (entrada[0].equals(I) && entrada[1].equals("0")) {
                    ++gameplays;
                }
            }

            System.out.println(gameplays);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let p = 0;
while (p < lines.length) {
    let [N, I] = lines[p++].trim().split(' ').map(x => parseInt(x));

    let gameplays = 0;
    for (let i = 0; i < N; ++i) {
        let [identificador, j] = lines[p++].trim().split(' ').map(x => parseInt(x));

        if (identificador === I && j === 0) {
            ++gameplays;
        }
    }

    console.log(gameplays);
}
```

### Python 3.9

```py
while True:
    try:
        N, I = [int(x) for x in input().strip().split(' ')]

        gameplays = 0
        for _ in range(N):
            identificador, j = [int(x) for x in input().strip().split(' ')]

            if(identificador == I and j == 0):
                gameplays += 1

        print(gameplays)
    except EOFError:
        break
```