# 1217 - Getline Two - Frutas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1217)

## Solução

> Podemos assumir sempre que todas as frutas estão separadas por um único espaço e não há espaços antes nem depois da linha a ser lida.

Com isso em mente, o problema se torna muito mais fácil para linguagens de baixo nível, já que basta contar quantos espaços existem na linha inteira. Para linguagens de alto nível, podemos contar o número de palavras normalmente separando-as pelo caractere do espaço.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char *pos;
    int N, frutas;
    char linha[10000];
    double V, pesoPorDia, gastoPorDia;

    scanf("%d\n", &N);

    pesoPorDia = 0.0;
    gastoPorDia = 0.0;
    
    for(int i = 1; i <= N; ++i){
        scanf("%lf\n", &V);
        scanf("%[^\n]", &linha);

        frutas = 1;
        pos = strchr(linha, ' ');
        while(pos != NULL){
            ++frutas;
            pos = strchr(pos + 1, ' ');
        }

        printf("day %d: %d kg\n", i, frutas);

        pesoPorDia += frutas;
        gastoPorDia += V;
    }

    pesoPorDia /= N;
    gastoPorDia /= N;

    printf("%.2lf kg by day\nR$ %.2lf by day\n", pesoPorDia, gastoPorDia);

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <sstream>
#include <iomanip>
#include <vector>

using namespace std;

int main(){
    int N, frutas;
    stringstream fluxo;
    string linha, fruta;
    double V, pesoPorDia, gastoPorDia;

    cin >> N;

    pesoPorDia = 0.0;
    gastoPorDia = 0.0;

    for(int i = 1; i <= N; ++i){
        cin >> V;
        cin.ignore();
        getline(cin, linha);

        frutas = 0;
        fluxo.clear();
        fluxo << linha;
        while(fluxo >> fruta){
            ++frutas;
        }
        
        cout << "day " << i << ": " << frutas << " kg" << endl;

        pesoPorDia += frutas;
        gastoPorDia += V;
    }

    pesoPorDia /= N;
    gastoPorDia /= N;
    
    cout << setprecision(2) << fixed << pesoPorDia << " kg by day" << endl;
    cout << "R$ " << setprecision(2) << fixed << gastoPorDia << " by day" << endl;

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

        int pesoTotal = 0;
        double precoTotal = 0.0;
        int[] pesos = new int[N];
        for(int k = 0; k < N; ++k){
            double V = double.Parse(Console.ReadLine());
            string[] frutas = Console.ReadLine().Trim().Split(' ');

            pesos[k] = frutas.Length;
            pesoTotal += pesos[k];
            precoTotal += V;
        }

        for(int i = 1; i <= N; ++i){
            Console.WriteLine($"day {i}: {pesos[i - 1]} kg");
        }
        Console.WriteLine($"{((double)pesoTotal/N):N2} kg by day");
        Console.WriteLine($"R$ {(precoTotal/N):N2} by day");
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        int pesoTotal = 0;
        double precoTotal = 0.0;
        int[] pesos = new int[N];
        for(int k = 0; k < N; ++k){
            double V = Double.parseDouble(in.readLine());
            String[] frutas = in.readLine().trim().split(" ");

            pesos[k] = frutas.length;
            pesoTotal += pesos[k];
            precoTotal += V;
        }

        for(int k = 1; k <= N; ++k){
            System.out.printf("day %d: %d kg\n", k, pesos[k - 1]);
        }
        System.out.printf("%.2f kg by day\n", (double)pesoTotal/N);
        System.out.printf("R$ %.2f by day\n", precoTotal/N);
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pesoPorDia = 0.0, gastoPorDia = 0.0;

let N = parseInt(lines.shift().trim());

for(let i = 1; i <= N; ++i){
    let V = parseFloat(lines.shift().trim());
    let frutas = lines.shift().trim().split(' ').length;

    console.log(`day ${i}: ${frutas} kg`);

    pesoPorDia += frutas;
    gastoPorDia += V;
}

pesoPorDia /= N;
gastoPorDia /= N;

console.log(`${pesoPorDia.toFixed(2)} kg by day`);
console.log(`R$ ${gastoPorDia.toFixed(2)} by day`);
```

### Python 3.9
```py
pesoPorDia = 0.0
gastoPorDia = 0.0

N = int(input())

for i in range(1, N + 1):
    V = float(input())
    frutas = len(input().strip().split(' '))

    print(f"day {i}: {frutas} kg")

    pesoPorDia += frutas
    gastoPorDia += V

pesoPorDia /= N
gastoPorDia /= N

print(f"{pesoPorDia:.2f} kg by day")
print(f"R$ {gastoPorDia:.2f} by day")
```