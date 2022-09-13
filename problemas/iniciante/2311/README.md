# 2311 - Saltos Ornamentais

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2311)

## Solução

Veja [ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md) para entender como ordenar as notas e os exemplos abaixo para como lidar especificamente com variáveis do tipo `double` para algumas linguagens específicas.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    if (*(double *)a > *(double *)b)
    {
        return 1;
    }
    if (*(double *)a < *(double *)b)
    {
        return -1;
    }
    return 0;
}

double notaFinal(double *notas, double dificuldade)
{
    qsort(notas, 7, sizeof(double), comp);

    double soma = 0.0;
    for (int i = 1; i < 6; ++i)
    {
        soma += notas[i];
    }

    return soma * dificuldade;
}

int main()
{
    int N;
    char nome[101];
    double dificuldade, notas[7];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n", &nome);
        scanf("%lf\n", &dificuldade);
        scanf("%lf %lf %lf %lf %lf %lf %lf\n", &notas[0], &notas[1], &notas[2], &notas[3], &notas[4], &notas[5], &notas[6]);

        printf("%s %.2lf\n", nome, notaFinal(notas, dificuldade));
    }

    return 0;
}
```

### C++17

```cpp
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

double notaFinal(vector<double> notas, double dificuldade)
{
    sort(notas.begin(), notas.end());

    double soma = 0.0;
    for (int i = 1; i < 6; ++i)
    {
        soma += notas[i];
    }

    return soma * dificuldade;
}

int main()
{
    int N;
    string nome;
    double dificuldade;
    vector<double> notas;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> nome;
        cin >> dificuldade;
        notas.assign(7, 0.0);
        for (int i = 0; i < 7; ++i)
        {
            cin >> notas[i];
        }

        cout << nome << ' ' << setprecision(2) << fixed << notaFinal(notas, dificuldade) << endl;
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
    static double notaFinal(List<double> notas, double dificuldade) {
        notas.Sort();

        double soma = 0.0;
        for(int i = 1; i < 6; ++i){
            soma += notas[i];
        }

        return soma * dificuldade;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string nome = Console.ReadLine();
            double dificuldade = double.Parse(Console.ReadLine());
            List<double> notas = Console.ReadLine().Trim().Split(' ').Select(x => double.Parse(x)).ToList();

            Console.WriteLine($"{nome} {notaFinal(notas, dificuldade):0.00}");
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

public class Main {
    public static double notaFinal(double[] notas, double dificuldade) {
        Arrays.sort(notas);

        double soma = 0.0;
        for (int i = 1; i < 6; ++i) {
            soma += notas[i];
        }

        return soma * dificuldade;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String nome = in.readLine();
            double dificuldade = Double.parseDouble(in.readLine());
            String[] numeros = in.readLine().trim().split(" ");

            double[] notas = new double[7];
            for (int j = 0; j < 7; ++j) {
                notas[j] = Double.parseDouble(numeros[j]);
            }

            System.out.printf("%s %.2f\n", nome, notaFinal(notas, dificuldade));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => {
    if (a > b) {
        return 1;
    }
    if (b > a) {
        return -1;
    }
    return 0;
};

const notaFinal = (notas, dificuldade) => {
    notas.sort(comp);

    soma = 0.0;
    for (let i = 1; i < 6; ++i) {
        soma += notas[i];
    }

    return soma * dificuldade;
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let nome = lines.shift().trim();
    let dificuldade = parseFloat(lines.shift().trim());
    let notas = lines.shift().trim().split(' ').map(x => parseFloat(x));

    console.log(`${nome} ${notaFinal(notas, dificuldade).toFixed(2)}`);
}
```

### Python 3.9

```py
def notaFinal(notas, dificuldade):
    notas.sort()
    return sum(notas[1:-1]) * dificuldade


N = int(input())
for _ in range(N):
    nome = input()
    dificuldade = float(input())
    notas = [float(x) for x in input().strip().split(' ')]

    print(f'{nome} {notaFinal(notas, dificuldade):.2f}')
```