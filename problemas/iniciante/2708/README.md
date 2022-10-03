# 2708 - Turistas no Parque Huacachina

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2708)

## Solução

Considerando que a entrada do problema sempre será válida, isso é, que sempre vão entrar menos ou o mesmo número de pessoas que saíram, podemos somar o número de pessoas sempre que elas saem e diminuir sempre que elas entram, já que nunca vai dar um número negativo. O mesmo vale para os jipes. Embora a entrada ser válida não esteja garantida pela descrição do problema, podemos considerar isso mesmo assim.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    char instrucao[10];
    int t, jipes, pessoas;

    jipes = pessoas = 0;
    while (scanf("%s ", &instrucao))
    {
        if (strcmp(instrucao, "ABEND") == 0)
            break;

        scanf("%d\n", &t);

        if (strcmp(instrucao, "SALIDA") == 0)
        {
            pessoas += t;
            ++jipes;
        }
        else
        {
            pessoas -= t;
            --jipes;
        }
    }

    printf("%d\n%d\n", pessoas, jipes);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int numero;
    string comando;
    int veiculos, turistas;

    veiculos = 0;
    turistas = 0;
    while (cin >> comando)
    {
        if (comando == "ABEND")
            break;

        cin >> numero;
        if (comando == "SALIDA")
        {
            veiculos += 1;
            turistas += numero;
        }
        else
        {
            veiculos -= 1;
            turistas -= numero;
        }
    }

    cout << turistas << endl;
    cout << veiculos << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int jipes, pessoas;

        jipes = pessoas = 0;
        string[] entrada = Console.ReadLine().Split(' ');
        while(entrada[0] != "ABEND"){
            if(entrada[0] == "SALIDA"){
                pessoas += int.Parse(entrada[1]);
                ++jipes;
            }else{
                pessoas -= int.Parse(entrada[1]);
                --jipes;
            }

            entrada = Console.ReadLine().Split(' ');
        }

        Console.WriteLine(pessoas);
        Console.WriteLine(jipes);
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

        int jipes = 0;
        int pessoas = 0;

        String[] entrada = in.readLine().trim().split(" ");
        while (!(entrada[0].equals("ABEND"))) {
            if (entrada[0].equals("SALIDA")) {
                pessoas += Integer.parseInt(entrada[1]);
                ++jipes;
            } else if (entrada[0].equals("VUELTA")) {
                pessoas -= Integer.parseInt(entrada[1]);
                --jipes;
            } else {
                break;
            }

            entrada = in.readLine().trim().split(" ");
        }

        System.out.println(pessoas);
        System.out.println(jipes);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [jipes, pessoas] = [0, 0];
let [instrucao, numero] = lines.shift().trim().split(' ');
while (instrucao !== "ABEND") {
    if (instrucao == "SALIDA") {
        pessoas += parseInt(numero);
        ++jipes;
    } else {
        pessoas -= parseInt(numero);
        --jipes;
    }

    [instrucao, numero] = lines.shift().trim().split(' ');
}

console.log(pessoas);
console.log(jipes);
```

### Python 3.9

```py
entrada = input().strip().split(' ')

jipes, pessoas = 0, 0
while(entrada[0] != "ABEND"):
    if(entrada[0] == "SALIDA"):
        pessoas += int(entrada[1])
        jipes += 1
    else:
        pessoas -= int(entrada[1])
        jipes -= 1

    entrada = input().strip().split(' ')

print(pessoas)
print(jipes)
```