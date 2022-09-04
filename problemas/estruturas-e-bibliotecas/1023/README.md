# 1023 - Estiagem

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1023)

## Solução

Não parece muito claro, mas o objetivo desse problema é contabilizar quantas pessoas têm com o custo médio equivalente a cada valor, ou seja, precisamos agrupar as pessoas pelo consumo médio delas por pessoa na sua casa.

Por exemplo, vamos analisar o segundo caso de teste:

| Pessoas | Consumo total | Consumo médio por pessoa |
| ------- | ------------- | ------------------------ |
| 1       | 25            |                       25 |
| 2       | 20            |                       10 |
| 3       | 31            |                       10 |
| 2       | 40            |                       20 |
| 6       | 70            |                       11 |

Como resposta, podemos agrupar 5 pessoas com consumo médio 10 (as 2 em uma casa e 3 em outra), 6 pessoas com consumo médio 11, 2 pessoas com consumo médio 20 e 1 com consumo médio 25.

Com isso, podemos usar o consumo médio como índice de um vetor de contagem para somar a quantidade de pessoas para cada consumo médio encontrado. Com valor mínimo de pessoas de 1 e valor máximo de consumo de 200, então o tamanho máximo do vetor é 200.

> Para exibir o resultado truncado em duas casas decimais, pode-se fazer uma operação de piso da divisão de total de consumo multiplicado por 100 pelo número total de pessoas e, após isso, dividir esse resultado por 100 novamente.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <math.h>

int main()
{
    double consumo_medio;
    int T, N, X, Y, totalX, totalY, first, consumos[201];

    T = 0;
    while (scanf("%d", &N))
    {
        if (!N)
            break;

        if (T)
            printf("\n");

        memset(consumos, 0, sizeof(consumos));

        totalX = 0, totalY = 0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &X, &Y);

            totalX += X;
            totalY += Y;
            consumos[Y / X] += X;
        }

        printf("Cidade# %d:\n", ++T);
        first = 1;
        for (int i = 0; i < 201; ++i)
        {
            if (consumos[i] > 0)
            {
                if (first)
                    first = 0;
                else
                    printf(" ");

                printf("%d-%d", consumos[i], i);
            }
        }

        consumo_medio = ((100 * totalY) / totalX) / 100.0;
        printf("\nConsumo medio: %.2lf m3.\n", consumo_medio);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>

using namespace std;

int main()
{
    bool first;
    vector<int> consumos;
    double consumo_medio;
    int T, N, X, Y, totalX, totalY;

    T = 0;
    while (cin >> N)
    {
        if (!N)
            break;
        if (T)
            cout << endl;

        totalX = 0, totalY = 0;
        consumos.assign(201, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> X >> Y;

            totalX += X;
            totalY += Y;
            consumos[Y / X] += X;
        }

        first = true;
        cout << "Cidade# " << ++T << ":" << endl;
        for (int i = 0; i < 201; ++i)
        {
            if (consumos[i] > 0)
            {
                if (first)
                    first = false;
                else
                    cout << ' ';

                cout << consumos[i] << '-' << i;
            }
        }
        cout << endl;

        consumo_medio = floor((100.0 * totalY) / totalX) / 100.0;
        cout << "Consumo medio: " << setprecision(2) << fixed << consumo_medio << " m3." << endl;
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
        int T = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);
            if (N == 0)
            {
                break;
            }

            if (T > 0)
            {
                Console.WriteLine("");
            }

            int totalX = 0, totalY = 0;
            int[] consumos = new int[201];

            for (int i = 0; i < N; ++i)
            {
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                totalX += numeros[0];
                totalY += numeros[1];
                consumos[numeros[1] / numeros[0]] += numeros[0];
            }

            Console.WriteLine($"Cidade# {++T}:");
            List<string> resposta = new List<string>();
            for (int i = 0; i < 201; ++i)
            {
                if (consumos[i] > 0)
                {
                    resposta.Add($"{consumos[i]}-{i}");
                }
            }
            Console.WriteLine(string.Join(" ", resposta));

            Console.WriteLine($"Consumo medio: {(Math.Truncate((100.0 * totalY) / totalX) / 100.0):N2} m3.");
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

        int T = 0;
        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());
            if (N == 0) {
                break;
            }

            if (T > 0) {
                System.out.println("");
            }

            int totalX = 0, totalY = 0;
            int[] consumos = new int[201];
            for (int i = 0; i < N; ++i) {
                String[] numeros = in.readLine().trim().split(" ");

                int X = Integer.parseInt(numeros[0]);
                int Y = Integer.parseInt(numeros[1]);

                totalX += X;
                totalY += Y;
                consumos[Y / X] += X;
            }

            System.out.printf("Cidade# %d:\n", ++T);
            boolean first = true;
            for (int i = 0; i < 201; ++i) {
                if (consumos[i] > 0) {
                    if (first) {
                        first = false;
                    } else {
                        System.out.print(" ");
                    }

                    System.out.printf("%d-%d", consumos[i], i);
                }
            }
            System.out.println("");

            System.out.printf("Consumo medio: %.2f m3.\n", Math.floor((100.0 * totalY) / totalX) / 100.0);
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let T = 0, p = 0;
while(p < lines.length){
    let N = parseInt(lines[p++]);

    if(T){
        console.log('');
    }

    let consumos = Array(201);
    consumos.fill(0);
    let [totalX, totalY] = [0, 0];
    for(let i = 0; i < N; ++i){
        let [X, Y] = lines[p++].split(' ').map((x) => parseInt(x));

        totalX += X;
        totalY += Y;
        consumos[parseInt(Math.floor(Y/X))] += X;
    }

    console.log(`Cidade# ${++T}:`);
    let output = [];
    for(let i = 0; i < 201; ++i){
        if(consumos[i] > 0) output.push(`${consumos[i]}-${i}`);
    }
    console.log(output.join(' '));

    let consumo_total = Math.floor(100 * totalY / totalX) / 100;

    console.log(`Consumo medio: ${consumo_total.toFixed(2)} m3.`);
}
```

### Python 3.9
```python
import math

T = 0
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(T):
            print('')

        totalX, totalY = 0, 0
        consumos = {}
        for _ in range(N):
            X, Y = map(int, input().split(' '))

            totalX += X
            totalY += Y

            if (Y//X in consumos):
                consumos[Y//X] += X
            else:
                consumos[Y//X] = X

        consumo_total = ((100 * totalY)/totalX)/100

        T += 1
        print(f'Cidade# {T}:')

        output = []
        keys = sorted(list(consumos.keys()))
        for key in keys:
            output.append(f'{consumos[key]}-{key}')

        print(f'{" ".join(output)}')

        consumo_medio = math.floor((100 * totalY)/totalX)/100

        print(f'Consumo medio: {consumo_medio:.2f} m3.')
    except EOFError:
        break
```