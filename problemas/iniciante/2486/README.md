# 2486 - C Mais ou Menos?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2486)

## Solução

Veja as implementações para saber como cada linguagem lida com mapas/dicionários. A entrada desse problema também é meio chatinha, mas nada muito difícil de lidar.

### C99

```c
#include <string.h>
#include <stdio.h>

char nomes[7][20] = {"suco de laranja", "morango fresco", "mamao", "goiaba vermelha", "manga", "laranja", "brocolis"};
int quantidades[7] = {120, 85, 85, 70, 56, 50, 34};

int vitaminaC(char *nome)
{
    for (int i = 0; i < 7; ++i)
    {
        if (strcmp(nome, nomes[i]) == 0)
        {
            return quantidades[i];
        }
    }
}

int main()
{
    char nome[21];
    int T, N, consumo;

    while (scanf("%d\n", &T) != EOF)
    {
        if (T == 0)
        {
            break;
        }

        consumo = 0;
        for (int k = 0; k < T; ++k)
        {
            scanf("%d %[^\n]\n", &N, &nome);
            consumo += N * vitaminaC(nome);
        }

        if (consumo < 110)
        {
            printf("Mais %d mg\n", 110 - consumo);
        }
        else if (consumo > 130)
        {
            printf("Menos %d mg\n", consumo - 130);
        }
        else
        {
            printf("%d mg\n", consumo);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <string>
#include <map>

using namespace std;

map<string, int> vitaminaC;

void inicializa()
{
    vitaminaC["suco de laranja"] = 120;
    vitaminaC["morango fresco"] = 85;
    vitaminaC["mamao"] = 85;
    vitaminaC["goiaba vermelha"] = 70;
    vitaminaC["manga"] = 56;
    vitaminaC["laranja"] = 50;
    vitaminaC["brocolis"] = 34;
}

int main()
{
    string nome;
    int T, N, consumo;

    inicializa();

    while (cin >> T)
    {
        if (T == 0)
        {
            break;
        }

        consumo = 0;
        for (int i = 0; i < T; ++i)
        {
            cin >> N;
            cin.ignore();
            getline(cin, nome);

            consumo += N * vitaminaC[nome];
        }

        if (consumo < 110)
        {
            cout << "Mais " << 110 - consumo << " mg" << endl;
        }
        else if (consumo > 130)
        {
            cout << "Menos " << consumo - 130 << " mg" << endl;
        }
        else
        {
            cout << consumo << " mg" << endl;
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
        Dictionary<string, int> vitaminaC = new Dictionary<string, int> {
            { "suco de laranja", 120 },
            { "morango fresco", 85 },
            { "mamao", 85 },
            { "goiaba vermelha", 70 },
            { "manga", 56 },
            { "laranja", 50 },
            { "brocolis", 34 },
        };

        string entrada;
        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            if(T == 0){
                break;
            }

            int consumo = 0;
            for(int i = 0; i < T; ++i){
                string[] dados = Console.ReadLine().Trim().Split(' ');
                int N = int.Parse(dados[0]);
                string nome = string.Join(" ", dados.Skip(1).ToArray());

                consumo += N * vitaminaC[nome];
            }

            if(consumo < 110){
                Console.WriteLine($"Mais {110 - consumo} mg");
            }else if(consumo > 130){
                Console.WriteLine($"Menos {consumo - 130} mg");
            }else{
                Console.WriteLine($"{consumo} mg");
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
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Map<String, Integer> vitaminaC = new HashMap<String, Integer>();
        vitaminaC.put("suco de laranja", 120);
        vitaminaC.put("morango fresco", 85);
        vitaminaC.put("mamao", 85);
        vitaminaC.put("goiaba vermelha", 70);
        vitaminaC.put("manga", 56);
        vitaminaC.put("laranja", 50);
        vitaminaC.put("brocolis", 34);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine());

            if (T == 0) {
                break;
            }

            int consumo = 0;
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int N = Integer.parseInt(entrada[0]);
                String nome = String.join(" ", Arrays.copyOfRange(entrada, 1, entrada.length));

                consumo += N * vitaminaC.get(nome);
            }

            if (consumo < 110) {
                System.out.printf("Mais %d mg\n", 110 - consumo);
            } else if (consumo > 130) {
                System.out.printf("Menos %d mg\n", consumo - 130);
            } else {
                System.out.printf("%d mg\n", consumo);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const vitaminaC = {
    "suco de laranja": 120,
    "morango fresco": 85,
    "mamao": 85,
    "goiaba vermelha": 70,
    "manga": 56,
    "laranja": 50,
    "brocolis": 34,
};

while (lines.length) {
    let T = parseInt(lines.shift());

    if (T === 0) {
        break;
    }

    let consumo = 0;
    for (let i = 0; i < T; ++i) {
        let entrada = lines.shift().trim().split(' ');
        let N = parseInt(entrada.shift());
        let nome = entrada.join(' ');

        consumo += N * vitaminaC[nome];
    }

    if (consumo < 110) {
        console.log(`Mais ${110 - consumo} mg`);
    } else if (consumo > 130) {
        console.log(`Menos ${consumo - 130} mg`);
    } else {
        console.log(`${consumo} mg`);
    }
}
```

### Python 3.9

```py
vitaminaC = {
    "suco de laranja": 120,
    "morango fresco": 85,
    "mamao": 85,
    "goiaba vermelha": 70,
    "manga": 56,
    "laranja": 50,
    "brocolis": 34,
}

while True:
    try:
        T = int(input())

        if(T == 0):
            break

        consumo = 0
        for _ in range(T):
            entrada = input().strip().split(' ')
            N = int(entrada[0])
            nome = ' '.join(entrada[1:])

            consumo += N * vitaminaC[nome]

        if (consumo < 110):
            print(f'Mais {110 - consumo} mg')
        elif (consumo > 130):
            print(f'Menos {consumo - 130} mg')
        else:
            print(f'{consumo} mg')
    except EOFError:
        break
```