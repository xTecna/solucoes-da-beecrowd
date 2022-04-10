# 1064 - Positivos e Média

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1064)

## Solução

Pode-se usar apenas uma variável para acumular as somas de todos os valores positivos para dividir depois pela quantidade de valores capturados. O `if` para decidir se o contador é maior que zero não é necessário para a resolução deste problema em específico, mas é sempre legal testar se não haverá uma divisão por zero.

### C99

```c
#include <stdio.h>

int main()
{
    int contador;
    double numero, media;

    media = 0.0;
    contador = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%lf", &numero);

        if (numero > 0)
        {
            ++contador;
            media += numero;
        }
    }
    media /= contador;

    printf("%d valores positivos\n", contador);
    printf("%.1lf\n", media);

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
    double numero, media;
    int qtd;

    media = 0;
    qtd = 0;

    for (int i = 0; i < 6; ++i)
    {
        cin >> numero;

        if (numero > 0)
        {
            qtd += 1;
            media += numero;
        }
    }

    if (qtd > 0)
    {
        media /= qtd;
    }

    cout << qtd << " valores positivos" << endl;
    cout << setprecision(1) << fixed << media << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int contador = 0;
        double numero, media = 0.0;
        
        for(int i = 0; i < 6; ++i){
            numero = double.Parse(Console.ReadLine());
            
            if(numero > 0.0){
                ++contador;
                media += numero;
            }
        }
        
        if(contador > 0){
            media /= contador;
        }
        
        Console.WriteLine($"{contador} valores positivos");
        Console.WriteLine($"{media:0.0}");
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
        
        int contador = 0;
        double numero, media = 0.0;
        
        for(int i = 0; i < 6; ++i){
            numero = Double.parseDouble(in.readLine());
            
            if(numero > 0.0){
                ++contador;
                media += numero;
            }
        }
        
        if(contador > 0){
            media /= contador;
        }
        
        System.out.printf("%d valores positivos\n", contador);
        System.out.printf("%.1f\n", media);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let media = 0.0;
let contador = 0;
for (let i = 0; i < 6; ++i) {
    let numero = parseFloat(lines.shift());

    if (numero > 0) {
        ++contador;
        media += numero;
    }
}

if (contador > 0)
    media /= contador;

console.log(`${contador} valores positivos`);
console.log(`${media.toFixed(1)}`);
```

### Python 3.9

```py
media = 0.0
contador = 0

for i in range(6):
    numero = float(input())

    if(numero > 0):
        contador += 1
        media += numero

if(contador > 0):
    media /= contador

print(f'{contador} valores positivos')
print(f'{media:.1f}')
```