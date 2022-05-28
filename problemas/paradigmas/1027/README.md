# 1027 - Onda Crítica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1027)

## Solução

Este é um problema de programação dinâmica com duas dimensões:

* O último ponto da sequência;
* Se o último ponto da sequência está acima ou abaixo da reta.

E o problema nesse caso seria: "para um ponto específico no gráfico, qual é a maior subsequência que termina neste ponto e que envolve a maior quantidade de pontos intercalando acima e abaixo da reta?". A resposta para essa pergunta seria: "a maior subsequência que termina em quaisquer um dos pontos anteriores cujo este ponto possa ser incluído na subsequência". Um exemplo seria o ilustrado abaixo:

![Mesma ilustração presente na descrição do problema](https://resources.beecrowd.com.br/gallery/images/problems/UOJ_1027.png)

Supondo que queiramos saber a maior subsequência intercalando acima e abaixo da reta para o ponto `p5`. Para saber a maior subsequência onde este ponto é o último, analisamos todos os pontos anteriores à ele e vemos se ele se encaixa:

* `p1` está acima da reta, então não se encaixa;
* `p2` está na reta, então não se encaixa;
* `p3` está no ponto exato abaixo da reta para poder intercalar com `p5`, então se encaixa. A maior subsequência onde `p3` é o último ponto tem tamanho 2, então a maior subsequência que temos agora tem tamanho 3;
* `p4` está muito abaixo da reta, então nao se encaixa;

Logo, para o ponto `p5`, a maior subsequência seria de tamanho 3. Abaixo seguimos esse mesmo esquema para todos os pontos primeiro ordenando-os por coordenada `x` e depois comparamos cada ponto com os pontos anteriores verificando se eles estão acima ou abaixo na reta, ou seja, se a diferença entre os pontos é exatamente `2` ou `-2` (ou seja, se está subindo ou descendo).

> Infelizmente não está disponível a solução para este problema em Python.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

struct Ponto
{
    int x;
    int y;
};

int max(int a, int b)
{
    return a > b ? a : b;
}

int comp(const void *a, const void *b)
{
    return ((struct Ponto *)a)->x - ((struct Ponto *)b)->x;
}

int main()
{
    int N, DP[1000][2];
    struct Ponto pontos[1000];

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &(pontos[i].x), &(pontos[i].y));
        }
        qsort(pontos, N, sizeof(struct Ponto), comp);

        DP[0][0] = 1;
        DP[0][1] = 1;
        int resposta = 1;
        for (int i = 1; i < N; ++i)
        {
            DP[i][0] = 1;
            DP[i][1] = 1;
            for (int j = 0; j < i; ++j)
            {
                if (pontos[i].x == pontos[j].x)
                {
                    break;
                }

                if (pontos[i].y - pontos[j].y == 2)
                {
                    // Descendo, acrescentando mais um no caso em que j está acima
                    DP[i][1] = max(DP[i][1], DP[j][0] + 1);
                }
                else if (pontos[i].y - pontos[j].y == -2)
                {
                    // Subindo, acrescentando mais um no caso em que j está abaixo
                    DP[i][0] = max(DP[i][0], DP[j][1] + 1);
                }
            }

            resposta = max(resposta, max(DP[i][0], DP[i][1]));
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17

```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int max(int a, int b)
{
    return a > b ? a : b;
}

int main()
{
    int N, DP[1000][2];
    vector<pair<int, int>> pontos;

    while (cin >> N)
    {
        pontos.assign(N, pair<int, int>(0, 0));
        for (int i = 0; i < N; ++i)
        {
            cin >> pontos[i].first >> pontos[i].second;
        }
        sort(pontos.begin(), pontos.end());

        DP[0][0] = 1;
        DP[0][1] = 1;
        int resposta = 1;
        for (int i = 1; i < N; ++i)
        {
            DP[i][0] = 1;
            DP[i][1] = 1;

            for (int j = 0; j < i; ++j)
            {
                if (pontos[i].first == pontos[j].first)
                {
                    break;
                }

                if (pontos[i].second - pontos[j].second == 2)
                {
                    // Descendo, acrescentando mais um no caso em que j está acima
                    DP[i][1] = max(DP[i][1], DP[j][0] + 1);
                }
                else if (pontos[i].second - pontos[j].second == -2)
                {
                    // Subindo, acrescentando mais um no caso em que j está abaixo
                    DP[i][0] = max(DP[i][0], DP[j][1] + 1);
                }
            }

            resposta = max(resposta, max(DP[i][0], DP[i][1]));
        }

        cout << resposta << endl;
    }

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
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            List<Tuple<int, int>> pontos = new List<Tuple<int, int>>();
            for (int i = 0; i < N; ++i)
            {
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                pontos.Add(new Tuple<int, int>(numeros[0], numeros[1]));
            }
            pontos.Sort();

            int[,] DP = new int[N, 2];
            DP[0, 0] = 1;
            DP[0, 1] = 1;
            int resposta = 1;
            for (int i = 1; i < N; ++i)
            {
                DP[i, 0] = 1;
                DP[i, 1] = 1;

                for (int j = 0; j < i; ++j)
                {
                    if (pontos[i].Item1 == pontos[j].Item1)
                    {
                        break;
                    }

                    if (pontos[i].Item2 - pontos[j].Item2 == 2)
                    {
                        // Descendo, acrescentando mais um no caso em que j está acima
                        DP[i, 1] = Math.Max(DP[i, 1], DP[j, 0] + 1);
                    }
                    else if (pontos[i].Item2 - pontos[j].Item2 == -2)
                    {
                        // Subindo, acrescentando mais um no caso em que j está abaixo
                        DP[i, 0] = Math.Max(DP[i, 0], DP[j, 1] + 1);
                    }
                }

                resposta = Math.Max(resposta, Math.Max(DP[i, 0], DP[i, 1]));
            }

            Console.WriteLine(resposta);
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.lang.Math;

public class Main {
    public static class Ponto implements Comparable<Ponto> {
        public int x;
        public int y;

        public Ponto() {
            this.x = 0;
            this.y = 0;
        }

        public Ponto(int x, int y) {
            this.x = x;
            this.y = y;
        }

        @Override
        public int compareTo(Ponto outro) {
            return this.x - outro.x;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            Ponto[] pontos = new Ponto[N];
            for (int i = 0; i < N; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                pontos[i] = new Ponto(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]));
            }
            Arrays.sort(pontos);

            int[][] DP = new int[N][2];
            DP[0][0] = 1;
            DP[0][1] = 1;
            int resposta = 1;
            for (int i = 1; i < N; ++i) {
                DP[i][0] = 1;
                DP[i][1] = 1;

                for (int j = 0; j < i; ++j) {
                    if (pontos[i].x == pontos[j].x) {
                        break;
                    }

                    if (pontos[i].y - pontos[j].y == 2) {
                        // Descendo, acrescentando mais um no caso em que j está acima
                        DP[i][1] = Math.max(DP[i][1], DP[j][0] + 1);
                    } else if (pontos[i].y - pontos[j].y == -2) {
                        // Subindo, acrescentando mais um no caso em que j está abaixo
                        DP[i][0] = Math.max(DP[i][0], DP[j][1] + 1);
                    }
                }

                resposta = Math.max(resposta, Math.max(DP[i][0], DP[i][1]));
            }

            System.out.println(resposta);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a[0] - b[0];

let p = 0;
while (p < lines.length) {
    let N = parseInt(lines[p++]);
    let pontos = [];
    for (let i = 0; i < N; ++i) {
        let numeros = lines[p++].trim().split(' ').map(x => parseInt(x));
        pontos.push([numeros[0], numeros[1]]);
    }
    pontos.sort(comp);

    let DP = [];
    DP.push([1, 1]);
    let resposta = 1;
    for (let i = 1; i < N; ++i) {
        DP.push([1, 1]);

        for (let j = 0; j < i; ++j) {
            if (pontos[i][0] == pontos[j][0]) {
                break;
            }

            if (pontos[i][1] - pontos[j][1] === 2) {
                // Descendo, acrescentando mais um no caso em que j está acima
                DP[i][1] = Math.max(DP[i][1], DP[j][0] + 1);
            } else if (pontos[i][1] - pontos[j][1] === -2) {
                // Subindo, acrescentando mais um no caso em que j está abaixo
                DP[i][0] = Math.max(DP[i][0], DP[j][1] + 1);
            }
        }

        resposta = Math.max(resposta, DP[i][0], DP[i][1]);
    }

    console.log(resposta);
}
```