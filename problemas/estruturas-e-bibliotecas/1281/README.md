# 1281 - Ida à Feira

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1281)

## Solução

Vamos organizar a solução colocando todos os itens e preços em um dicionário, a fim de calcular os preços de acordo com as quantidades de cada produto compradas.

> Na linguagem C, usei uma solução sem dicionários bem rudimentar e nada ótima. Mesmo assim, o programa passa, mostrando que uma solução apenas com busca linear em vetores também funcionaria.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    int N, M, P, quantidade;
    char fruta[50], frutas[100][50];
    double resposta, precos[100];

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%d", &M);

        for (int i = 0; i < M; ++i)
        {
            scanf("%s %lf\n", &frutas[i], &precos[i]);
        }

        scanf("%d", &P);

        resposta = 0.0;
        for (int i = 0; i < P; ++i)
        {
            scanf("%s %d\n", &fruta, &quantidade);

            for (int j = 0; j < M; ++j)
            {
                if (strcmp(fruta, frutas[j]) == 0)
                {
                    resposta += quantidade * precos[j];
                    break;
                }
            }
        }

        printf("R$ %.2lf\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>
#include <map>

using namespace std;

int main()
{
    string fruta;
    double preco, resposta;
    int N, M, P, quantidade;
    map<string, double> precos;

    cin >> N;
    for (int k = 0; k < N; ++k)
    {
        precos.clear();

        cin >> M;

        for (int i = 0; i < M; ++i)
        {
            cin >> fruta >> preco;

            precos.insert(pair<string, double>(fruta, preco));
        }

        cin >> P;

        resposta = 0.0;
        for (int i = 0; i < P; ++i)
        {
            cin >> fruta >> quantidade;

            resposta += quantidade * precos[fruta];
        }

        cout << "R$ " << setprecision(2) << fixed << resposta << endl;
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int M = int.Parse(Console.ReadLine());
            Dictionary<string, double> precos = new Dictionary<string, double>();
            for(int i = 0; i < M; ++i){
                string[] entrada = Console.ReadLine().Trim().Split(' ');
                precos.Add(entrada[0], double.Parse(entrada[1]));
            }
            
            double total = 0.0;
            int P = int.Parse(Console.ReadLine());
            for(int i = 0; i < P; ++i){
                string[] entrada = Console.ReadLine().Trim().Split(' ');
                total += precos[entrada[0]] * int.Parse(entrada[1]);
            }
            
            Console.WriteLine($"R$ {total:0.00}");
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            for(int k = 0; k < N; ++k){
                int M = Integer.parseInt(in.readLine());
                HashMap<String, Double> precos = new HashMap<String, Double>();
                for(int i = 0; i < M; ++i){
                    String[] entrada = in.readLine().trim().split(" ");
                    precos.put(entrada[0], Double.parseDouble(entrada[1]));
                }

                int P = Integer.parseInt(in.readLine());
                double total = 0;
                for(int i = 0; i < P; ++i){
                    String[] entrada = in.readLine().trim().split(" ");
                    total += precos.get(entrada[0]) * Integer.parseInt(entrada[1]);
                }

                System.out.printf("R$ %.2f\n", total);
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let k = 0; k < N; ++k){
    let M = parseInt(lines.shift().trim());

    let precos = {};
    for(let i = 0; i < M; ++i){
        let [fruta, preco] = lines.shift().trim().split(' ');

        precos[fruta] = parseFloat(preco);
    }

    let P = parseInt(lines.shift().trim());

    let resposta = 0.0;
    for(let i = 0; i < P; ++i){
        let [fruta, quantidade] = lines.shift().trim().split(' ');

        resposta += parseInt(quantidade) * precos[fruta];
    }

    console.log(`R$ ${resposta.toFixed(2)}`);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    M = int(input())

    precos = {}

    for _ in range(M):
        fruta, preco = input().strip().split(' ')

        precos[fruta] = float(preco)

    P = int(input())

    resposta = 0.0
    for _ in range(P):
        fruta, quantidade = input().strip().split(' ')

        resposta += int(quantidade) * precos[fruta]

    print(f'R$ {resposta:.2f}')
```