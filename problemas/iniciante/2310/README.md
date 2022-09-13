# 2310 - Voleibol

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2310)

## Solução

Eu tenho certeza que tem como fazer um código mais limpo do que esses, mas tentei deixar o mais legível possível para entender bem a ideia de que precisa-se somar separadamente os valores para depois incutir a operação de tirar a porcentagem.

### C99

```c
#include <stdio.h>

int main()
{
    char nome[101];
    int N, S, B, A, S1, B1, A1;
    int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
    int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n", &nome);

        scanf("%d %d %d\n", &S, &B, &A);
        saquesTotais += S;
        bloqueiosTotais += B;
        ataquesTotais += A;

        scanf("%d %d %d\n", &S1, &B1, &A1);
        saquesSucedidos += S1;
        bloqueiosSucedidos += B1;
        ataquesSucedidos += A1;
    }

    printf("Pontos de Saque: %.2lf %%.\n", 100.0 * saquesSucedidos / saquesTotais);
    printf("Pontos de Bloqueio: %.2lf %%.\n", 100.0 * bloqueiosSucedidos / bloqueiosTotais);
    printf("Pontos de Ataque: %.2lf %%.\n", 100.0 * ataquesSucedidos / ataquesTotais);

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
    string nome;
    int T, S, B, A, S1, B1, A1;
    int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
    int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> nome;

        cin >> S >> B >> A;
        saquesTotais += S;
        bloqueiosTotais += B;
        ataquesTotais += A;

        cin >> S1 >> B1 >> A1;
        saquesSucedidos += S1;
        bloqueiosSucedidos += B1;
        ataquesSucedidos += A1;
    }

    cout << "Pontos de Saque: " << setprecision(2) << fixed << 100.0 * saquesSucedidos / saquesTotais << " %." << endl;
    cout << "Pontos de Bloqueio: " << setprecision(2) << fixed << 100.0 * bloqueiosSucedidos / bloqueiosTotais << " %." << endl;
    cout << "Pontos de Ataque: " << setprecision(2) << fixed << 100.0 * ataquesSucedidos / ataquesTotais << " %." << endl;

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
        int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;
        int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
        
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string nome = Console.ReadLine();

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saquesTotais += numeros[0];
            bloqueiosTotais += numeros[1];
            ataquesTotais += numeros[2];

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            saquesSucedidos += numeros[0];
            bloqueiosSucedidos += numeros[1];
            ataquesSucedidos += numeros[2];
        }

        Console.WriteLine($"Pontos de Saque: {100.0 * saquesSucedidos / saquesTotais:0.00} %.");
        Console.WriteLine($"Pontos de Bloqueio: {100.0 * bloqueiosSucedidos / bloqueiosTotais:0.00} %.");
        Console.WriteLine($"Pontos de Ataque: {100.0 * ataquesSucedidos / ataquesTotais:0.00} %.");
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

        int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;
        int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String nome = in.readLine();

            String[] entrada = in.readLine().trim().split(" ");
            saquesTotais += Integer.parseInt(entrada[0]);
            bloqueiosTotais += Integer.parseInt(entrada[1]);
            ataquesTotais += Integer.parseInt(entrada[2]);

            entrada = in.readLine().trim().split(" ");
            saquesSucedidos += Integer.parseInt(entrada[0]);
            bloqueiosSucedidos += Integer.parseInt(entrada[1]);
            ataquesSucedidos += Integer.parseInt(entrada[2]);
        }

        System.out.printf("Pontos de Saque: %.2f %%.\n", 100.0 * saquesSucedidos / saquesTotais);
        System.out.printf("Pontos de Bloqueio: %.2f %%.\n", 100.0 * bloqueiosSucedidos / bloqueiosTotais);
        System.out.printf("Pontos de Ataque: %.2f %%.\n", 100.0 * ataquesSucedidos / ataquesTotais);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [saquesTotais, bloqueiosTotais, ataquesTotais] = [0, 0, 0];
let [saquesSucedidos, bloqueiosSucedidos, ataquesSucedidos] = [0, 0, 0];

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let nome = lines.shift();

    let [S, B, A] = lines.shift().trim().split(' ').map(x => parseInt(x));
    saquesTotais += S;
    bloqueiosTotais += B;
    ataquesTotais += A;

    let [S1, B1, A1] = lines.shift().trim().split(' ').map(x => parseInt(x));
    saquesSucedidos += S1;
    bloqueiosSucedidos += B1;
    ataquesSucedidos += A1;
}

console.log(`Pontos de Saque: ${(100 * saquesSucedidos / saquesTotais).toFixed(2)} %.`);
console.log(`Pontos de Bloqueio: ${(100 * bloqueiosSucedidos / bloqueiosTotais).toFixed(2)} %.`);
console.log(`Pontos de Ataque: ${(100 * ataquesSucedidos / ataquesTotais).toFixed(2)} %.`);
```

### Python 3.9

```py
saquesTotais, bloqueiosTotais, ataquesTotais = 0, 0, 0
saquesSucedidos, bloqueiosSucedidos, ataquesSucedidos = 0, 0, 0

T = int(input())
for _ in range(T):
    nome = input()

    S, B, A = [int(x) for x in input().strip().split(' ')]
    saquesTotais += S
    bloqueiosTotais += B
    ataquesTotais += A

    S1, B1, A1 = [int(x) for x in input().strip().split(' ')]
    saquesSucedidos += S1
    bloqueiosSucedidos += B1
    ataquesSucedidos += A1

print(f'Pontos de Saque: {100 * saquesSucedidos/saquesTotais:.2f} %.')
print(f'Pontos de Bloqueio: {100 * bloqueiosSucedidos/bloqueiosTotais:.2f} %.')
print(f'Pontos de Ataque: {100 * ataquesSucedidos/ataquesTotais:.2f} %.')
```