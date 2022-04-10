# 1021 - Notas e Moedas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1021)

## Solução

Para entender o raciocínio para resolver este problema, consulte [1018 - Cédulas](../1018/README.md).

Entretanto, temos alguns detalhes aqui: é um pouco problemático obter o resto da divisão para números não inteiros. Por isso, eu decidi que seria uma boa multiplicar por 100 todos os valores envolvidos para me certificar de que só faria manipulação com números inteiros

 Também simplifiquei o código para evitar repetições, fazendo com que na hora de imprimir os valores, também seja necessário dividir por 100. Perceba que essas simplifações também podem ser usadas no exercício mencionado anteriormente.

### C99

```c
#include <stdio.h>

int main(){
    int notas[] = {10000, 5000, 2000, 1000, 500, 200};
    int moedas[] = {100, 50, 25, 10, 5, 1};
    int reais, centavos;

    scanf("%d.%d", &reais, &centavos);
    reais = 100 * reais + centavos;

    printf("NOTAS:\n");
    for(int i = 0; i < 6; ++i){
        printf("%d nota(s) de R$ %.2lf\n", reais/notas[i], notas[i]/100.0);
        reais %= notas[i];
    }

    printf("MOEDAS:\n");
    for(int i = 0; i < 6; ++i){
        printf("%d moeda(s) de R$ %.2lf\n", reais/moedas[i], moedas[i]/100.0);
        reais %= moedas[i];
    }

    return 0;
}
```

### C++17

```cpp
#include <cstdio>

int main(){
    int notas[] = {10000, 5000, 2000, 1000, 500, 200};
    int moedas[] = {100, 50, 25, 10, 5, 1};
    int reais, centavos;

    scanf("%d.%d", &reais, &centavos);
    reais = 100 * reais + centavos;

    printf("NOTAS:\n");
    for(int i = 0; i < 6; ++i){
        printf("%d nota(s) de R$ %.2lf\n", reais/notas[i], notas[i]/100.0);
        reais %= notas[i];
    }

    printf("MOEDAS:\n");
    for(int i = 0; i < 6; ++i){
        printf("%d moeda(s) de R$ %.2lf\n", reais/moedas[i], moedas[i]/100.0);
        reais %= moedas[i];
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
        int[] notas = {10000, 5000, 2000, 1000, 500, 200};
        int[] moedas = {100, 50, 25, 10, 5, 1};
        
        List<int> entrada = Console.ReadLine().Trim().Split('.').Select((x) => int.Parse(x)).ToList();
        int reais = entrada[0] * 100 + entrada[1];
        
        Console.WriteLine("NOTAS:");
        foreach(int nota in notas){
            Console.WriteLine($"{reais/nota} nota(s) de R$ {nota/100.0:0.00}");
            reais %= nota;
        }
        
        Console.WriteLine("MOEDAS:");
        foreach(int moeda in moedas){
            Console.WriteLine($"{reais/moeda} moeda(s) de R$ {moeda/100.0:0.00}");
            reais %= moeda;
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
        int[] notas = {10000, 5000, 2000, 1000, 500, 200};
        int[] moedas = {100, 50, 25, 10, 5, 1};
        
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split("\\.");
        int reais = 100 * Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1]);
        
        System.out.printf("NOTAS:\n");
        for(int i = 0; i < 6; ++i){
            System.out.printf("%d nota(s) de R$ %.2f\n", reais/notas[i], notas[i]/100.0);
            reais %= notas[i];
        }
        
        System.out.println("MOEDAS:\n");
        for(int i = 0; i < 6; ++i){
            System.out.printf("%d moeda(s) de R$ %.2f\n", reais/moedas[i], moedas[i]/100.0);
            reais %= moedas[i];
        }
    }
}
```

### JavaScript 12.18

```javascript
var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let [reais, centavos] = lines.shift().trim().split('.').map((x) => parseInt(x));
let valor = 100 * reais + centavos;

notas = [10000, 5000, 2000, 1000, 500, 200];
moedas = [100, 50, 25, 10, 5, 1];

console.log("NOTAS:");
notas.forEach((nota) => {
  console.log(`${Math.floor(valor/nota).toFixed(0)} nota(s) de R$ ${(nota/100).toFixed(2)}`);
  valor %= nota;
});

console.log("MOEDAS:");
moedas.forEach((moeda) => {
  console.log(`${Math.floor(valor/moeda).toFixed(0)} moeda(s) de R$ ${(moeda/100).toFixed(2)}`);
  valor %= moeda;
});
```

### Python 3.9

```python
reais, centavos = [int(x) for x in input().strip().split('.')]
reais = reais * 100 + centavos

notas = [10000, 5000, 2000, 1000, 500, 200]
moedas = [100, 50, 25, 10, 5, 1]

print("NOTAS:")
for nota in notas:
    print(f"{reais//nota} nota(s) de R$ {(nota/100):.2f}")
    reais %= nota

print("MOEDAS:")
for moeda in moedas:
    print(f"{reais//moeda} moeda(s) de R$ {(moeda/100):.2f}")
    reais %= moeda
```