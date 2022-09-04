# 2140 - Duas Notas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2140)

## Solução

Aqui eu pré-calculei todos os trocos possíveis com exatamente duas notas para todas as notas envolvidas e coloquei num vetor onde procuramos, para cada troco, se ele está dentro do vetor comparando um por um. Considerando que o vetor que eu fiz está ordenado, existem maneiras mais rápidas de fazer essa verificação (como por exemplo, com [pesquisa binária](../../../base-teorica/estruturas-e-bibliotecas/pesquisa-binaria/README.md)), mas para esse problema, só uma busca linear com complexidade $O(n)$ basta, já que $n = 21$.

### C99

```c
#include <stdio.h>

int main()
{
    int trocos[] = {4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200};

    int N, M;
    while (scanf("%d %d\n", &N, &M) != EOF)
    {
        if (N == 0 && M == 0)
        {
            break;
        }

        int troco = M - N, possivel = 0;
        for (int i = 0; i < 21; ++i)
        {
            if (troco == trocos[i])
            {
                possivel = 1;
                break;
            }
        }

        printf("%spossible\n", possivel ? "" : "im");
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
    int trocos[] = {4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200};

    int N, M;
    while (scanf("%d %d\n", &N, &M) != EOF)
    {
        if (N == 0 && M == 0)
        {
            break;
        }

        int troco = M - N;
        bool possivel = false;
        for (int i = 0; i < 21; ++i)
        {
            if (troco == trocos[i])
            {
                possivel = true;
                break;
            }
        }

        cout << (possivel ? "" : "im") << "possible" << endl;
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
        int[] trocos = new int[] {4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200};

        string entrada;
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            if(numeros[0] == 0 && numeros[1] == 0){
                break;
            }

            bool possivel = false;
            int troco = numeros[1] - numeros[0];
            foreach (int possivelTroco in trocos){
                if (troco == possivelTroco){
                    possivel = true;
                    break;
                }
            }

            Console.WriteLine($"{(possivel ? "" : "im")}possible");
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

        int[] trocos = new int[] { 4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120,
                150, 200 };

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int M = Integer.parseInt(entrada[1]);

            if (N == 0 && M == 0) {
                break;
            }

            int troco = M - N;
            boolean possivel = false;
            for (int i = 0; i < trocos.length; ++i) {
                if (troco == trocos[i]) {
                    possivel = true;
                    break;
                }
            }

            System.out.println((possivel ? "" : "im") + "possible");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();
let trocos = [4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200];
while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let troco = M - N;
    let possivel = false;
    for (let i = 0; i < trocos.length; ++i) {
        if (troco == trocos[i]) {
            possivel = true;
            break;
        }
    }

    console.log(`${possivel ? '' : 'im'}possible`);
}
```

### Python 3.9

```py
trocos = [4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52,
          55, 60, 70, 100, 102, 105, 110, 120, 150, 200]

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and M == 0):
            break

        troco = M - N
        possivel = False
        for possivelTroco in trocos:
            if(troco == possivelTroco):
                possivel = True
                break

        prefixo = '' if possivel else 'im'
        print(f'{prefixo}possible')
    except EOFError:
        break
```