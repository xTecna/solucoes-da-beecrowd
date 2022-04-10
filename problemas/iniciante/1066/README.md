# 1066 - Pares, Ímpares, Positivos e Negativos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1066)

## Solução

Não é preciso contar o número de pares neste problema porque a quantidade de números pares é sempre 5 - números ímpares. Já os números positivos e negativos precisam estar separados porque 0 é considerado um número nulo, nem positivo nem negativo.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int main()
{
    int numero, impares, positivos, negativos;

    impares = 0;
    positivos = 0;
    negativos = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &numero);

        impares += abs(numero) % 2;
        positivos += numero > 0;
        negativos += numero < 0;
    }

    printf("%d valor(es) par(es)\n", 5 - impares);
    printf("%d valor(es) impar(es)\n", impares);
    printf("%d valor(es) positivo(s)\n", positivos);
    printf("%d valor(es) negativo(s)\n", negativos);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int numero, impar, par, negativo, positivo;

    par = 0;
    impar = 0;
    positivo = 0;
    negativo = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> numero;

        if (numero % 2)
        {
            impar += 1;
        }
        else
        {
            par += 1;
        }

        if (numero > 0)
        {
            positivo += 1;
        }
        else if (numero < 0)
        {
            negativo += 1;
        }
    }

    cout << par << " valor(es) par(es)" << endl;
    cout << impar << " valor(es) impar(es)" << endl;
    cout << positivo << " valor(es) positivo(s)" << endl;
    cout << negativo << " valor(es) negativo(s)" << endl;

    return 0;
}
```

### C#

```cs
using System; 

class URI {
    static void Main(string[] args) {
        int impares = 0, positivos = 0, negativos = 0;

        for(int i = 0; i < 5; ++i){
            int x = Int32.Parse(Console.ReadLine().Trim());

            impares += ((x > 0 ? x : -x) % 2);

            if(x > 0)       ++positivos;
            else if(x < 0)  ++negativos;
        }

        Console.Write($"{5 - impares} valor(es) par(es)\n");
        Console.Write($"{impares} valor(es) impar(es)\n");
        Console.Write($"{positivos} valor(es) positivo(s)\n");
        Console.Write($"{negativos} valor(es) negativo(s)\n");
    }
}
```

### Java 14

```java
import java.util.Scanner;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        int impares = 0, positivos = 0, negativos = 0;
        
        for(int i = 0; i < 5; ++i){
            int x = scanner.nextInt();

            impares += ((x > 0 ? x : -x) % 2);

            if(x > 0)       ++positivos;
            else if(x < 0)  ++negativos;
        }

        System.out.println(String.format("%d valor(es) par(es)", 5 - impares));
        System.out.println(String.format("%d valor(es) impar(es)", impares));
        System.out.println(String.format("%d valor(es) positivo(s)", positivos));
        System.out.println(String.format("%d valor(es) negativo(s)", negativos));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [impares, positivos, negativos] = [0, 0, 0];

for (let i = 0; i < 5; ++i) {
    let numero = parseInt(lines.shift());

    if (Math.abs(numero) % 2)
        ++impares;
    if (numero > 0)
        ++positivos;
    if (numero < 0)
        ++negativos;
}

console.log(`${5 - impares} valor(es) par(es)`);
console.log(`${impares} valor(es) impar(es)`);
console.log(`${positivos} valor(es) positivo(s)`);
console.log(`${negativos} valor(es) negativo(s)`);
```

### Python 3.9

```py
impares, positivos, negativos = 0, 0, 0
for _ in range(5):
    numero = int(input())

    if(abs(numero) % 2):
        impares += 1
    if(numero > 0):
        positivos += 1
    elif(numero < 0):
        negativos += 1

print(f'{5 - impares} valor(es) par(es)')
print(f'{impares} valor(es) impar(es)')
print(f'{positivos} valor(es) positivo(s)')
print(f'{negativos} valor(es) negativo(s)')
```