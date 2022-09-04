# 2061 - As Abas de Péricles

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2061)

## Solução

Quando uma aba é fechada duas novas se abrem, logo o número de abas diminui um, mas logo depois soma dois. No final das contas, o saldo é uma aba a mais. Quando clica numa propaganda, uma aba é fechada, logo o saldo é uma aba a menos. Basta então somar um para `fechou` e diminuir um para `clicou`. Não há necessidade de atentar para número de abas negativo aqui.

### C99

```c
#include <stdio.h>

int main()
{
    int N, M;
    char acao[10];

    scanf("%d %d\n", &N, &M);
    for (int i = 0; i < M; ++i)
    {
        scanf("%s\n", &acao);

        if (strcmp(acao, "fechou") == 0)
        {
            ++N;
        }
        else
        {
            --N;
        }
    }

    printf("%d\n", N);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, M;
    string acao;

    cin >> N >> M;
    for (int i = 0; i < M; ++i)
    {
        cin >> acao;

        if (acao == "fechou")
        {
            ++N;
        }
        else
        {
            --N;
        }
    }

    cout << N << endl;

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
        List<int> entradas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        int N = entradas[0];
        int M = entradas[1];

        for(int i = 0; i < M; ++i){
            string acao = Console.ReadLine();

            if(acao == "fechou"){
                ++N;
            }else{
                --N;
            }
        }

        Console.WriteLine(N);
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

        String[] entrada = in.readLine().trim().split(" ");
        int N = Integer.parseInt(entrada[0]);
        int M = Integer.parseInt(entrada[1]);
        for (int i = 0; i < M; ++i) {
            String acao = in.readLine();

            if (acao.equals("fechou")) {
                ++N;
            } else {
                --N;
            }
        }

        System.out.println(N);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, M] = lines.shift().trim().split(' ');
for (let i = 0; i < M; ++i) {
    let acao = lines.shift().trim();

    if (acao === "fechou") {
        ++N;
    } else {
        --N;
    }
}

console.log(N);
```

### Python 3.9

```py
N, M = [int(x) for x in input().strip().split(' ')]
for _ in range(M):
    acao = input()

    if(acao == "fechou"):
        N += 1
    else:
        N -= 1

print(N)
```