# 1094 - Experiências

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1094)

## Solução

É necessário apenas guardar as quantidades de coelhos, ratos e sapos, podendo calcular o total e as porcentagens ao final do programa.

### C99

```c
#include <stdio.h>

int main()
{
    int N, Quantia, coelhos, ratos, sapos, total;
    char Tipo;

    scanf("%d\n", &N);

    coelhos = 0, ratos = 0, sapos = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %c\n", &Quantia, &Tipo);

        switch (Tipo)
        {
        case 'C':
            coelhos += Quantia;
            break;
        case 'R':
            ratos += Quantia;
            break;
        case 'S':
            sapos += Quantia;
            break;
        }
    }
    total = coelhos + ratos + sapos;

    printf("Total: %d cobaias\n", total);
    printf("Total de coelhos: %d\n", coelhos);
    printf("Total de ratos: %d\n", ratos);
    printf("Total de sapos: %d\n", sapos);
    printf("Percentual de coelhos: %.2lf %%\n", (double)coelhos / total * 100);
    printf("Percentual de ratos: %.2lf %%\n", (double)ratos / total * 100);
    printf("Percentual de sapos: %.2lf %%\n", (double)sapos / total * 100);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N, Quantia, coelhos, ratos, sapos, total;
    char Tipo;

    cin >> N;

    coelhos = 0, ratos = 0, sapos = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> Quantia >> Tipo;

        switch (Tipo)
        {
        case 'C':
            coelhos += Quantia;
            break;
        case 'R':
            ratos += Quantia;
            break;
        case 'S':
            sapos += Quantia;
            break;
        }
    }
    total = coelhos + ratos + sapos;

    cout << "Total: " << total << " cobaias" << endl;
    cout << "Total de coelhos: " << coelhos << endl;
    cout << "Total de ratos: " << ratos << endl;
    cout << "Total de sapos: " << sapos << endl;
    cout << "Percentual de coelhos: " << setprecision(2) << fixed << (double)coelhos / total * 100 << " %" << endl;
    cout << "Percentual de ratos: " << setprecision(2) << fixed << (double)ratos / total * 100 << " %" << endl;
    cout << "Percentual de sapos: " << setprecision(2) << fixed << (double)sapos / total * 100 << " %" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        int coelhos = 0;
        int ratos = 0;
        int sapos = 0;
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int Quantia = int.Parse(entrada[0]);
            string Tipo = entrada[1];

            switch(Tipo){
                case "C":   coelhos += Quantia;
                            break;
                case "R":   ratos += Quantia;
                            break;
                case "S":   sapos += Quantia;
                            break;
            }
        }
        int total = coelhos + ratos + sapos;

        Console.WriteLine($"Total: {total} cobaias");
        Console.WriteLine($"Total de coelhos: {coelhos}");
        Console.WriteLine($"Total de ratos: {ratos}");
        Console.WriteLine($"Total de sapos: {sapos}");
        Console.WriteLine($"Percentual de coelhos: {(double)coelhos/total * 100:0.00} %");
        Console.WriteLine($"Percentual de ratos: {(double)ratos/total * 100:0.00} %");
        Console.WriteLine($"Percentual de sapos: {(double)sapos/total * 100:0.00} %");
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

        int N = Integer.parseInt(in.readLine());

        int coelhos = 0;
        int ratos = 0;
        int sapos = 0;
        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            int Quantia = Integer.parseInt(entrada[0]);
            String Tipo = entrada[1];

            if (Tipo.equals("C")) {
                coelhos += Quantia;
            } else if (Tipo.equals("R")) {
                ratos += Quantia;
            } else if (Tipo.equals("S")) {
                sapos += Quantia;
            }
        }
        int total = coelhos + ratos + sapos;

        System.out.printf("Total: %d cobaias\n", total);
        System.out.printf("Total de coelhos: %d\n", coelhos);
        System.out.printf("Total de ratos: %d\n", ratos);
        System.out.printf("Total de sapos: %d\n", sapos);
        System.out.printf("Percentual de coelhos: %.2f %%\n", 100.0 * coelhos / total);
        System.out.printf("Percentual de ratos: %.2f %%\n", 100.0 * ratos / total);
        System.out.printf("Percentual de sapos: %.2f %%\n", 100.0 * sapos / total);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

let [coelhos, ratos, sapos] = [0, 0, 0];
for (let i = 0; i < N; ++i) {
    let [quantia, tipo] = lines.shift().trim().split(' ');
    quantia = parseInt(quantia);

    if (tipo === 'C') {
        coelhos += quantia;
    } else if (tipo === 'R') {
        ratos += quantia;
    } else if (tipo == 'S') {
        sapos += quantia;
    }
}
total = coelhos + ratos + sapos;

console.log(`Total: ${total} cobaias`);
console.log(`Total de coelhos: ${coelhos}`);
console.log(`Total de ratos: ${ratos}`);
console.log(`Total de sapos: ${sapos}`);
console.log(`Percentual de coelhos: ${(coelhos / total * 100).toFixed(2)} %`);
console.log(`Percentual de ratos: ${(ratos / total * 100).toFixed(2)} %`);
console.log(`Percentual de sapos: ${(sapos / total * 100).toFixed(2)} %`);
```

### Python 3.9

```py
N = int(input())

coelhos = 0
ratos = 0
sapos = 0
for _ in range(N):
    quantia, tipo = input().strip().split(' ')
    quantia = int(quantia)

    if(tipo == 'C'):
        coelhos += quantia
    elif(tipo == 'R'):
        ratos += quantia
    elif(tipo == 'S'):
        sapos += quantia

total = coelhos + ratos + sapos

print(f'Total: {total} cobaias')
print(f'Total de coelhos: {coelhos}')
print(f'Total de ratos: {ratos}')
print(f'Total de sapos: {sapos}')
print(f'Percentual de coelhos: {coelhos/total * 100:.2f} %')
print(f'Percentual de ratos: {ratos/total * 100:.2f} %')
print(f'Percentual de sapos: {sapos/total * 100:.2f} %')
```