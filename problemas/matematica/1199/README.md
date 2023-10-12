# 1199 - Conversão Simples de Base

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1199)

## Solução

É possível resolver esse problema usando as soluções específicas de cada linguagem, que pode lidar com números em diferentes bases facilmente já que por baixo dos panos é tudo salvo como binário mesmo.

### C99
```c
#include <string.h>
#include <stdio.h>

int main()
{
    int numero;
    char entrada[100];

    while (scanf("%s\n", &entrada))
    {
        if (strcmp(entrada, "-1") == 0)
            break;

        if (entrada[1] == 'x')
        {
            sscanf(entrada, "%x", &numero);
            printf("%d\n", numero);
        }
        else
        {
            sscanf(entrada, "%d", &numero);
            printf("0x%X\n", numero);
        }
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    int numero;
    string entrada;
    stringstream fluxo;

    while (cin >> entrada)
    {
        if (entrada == "-1")
            break;

        fluxo << entrada;
        if (entrada.substr(0, 2) == "0x")
        {
            fluxo >> hex >> numero;
            cout << dec << numero << endl;
        }
        else
        {
            fluxo >> dec >> numero;
            cout << "0x" << hex << uppercase << numero << endl;
        }

        fluxo.clear();
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            if(entrada == "-1"){
                break;
            }
            
            int numero = 0;
            if(entrada.StartsWith("0x")){
                numero = Convert.ToInt32(entrada, 16);
                Console.WriteLine(numero);
            }else{
                numero = int.Parse(entrada);
                Console.WriteLine($"0x{numero:X}");
            }
        }
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

        while(in.ready()){
            String entrada = in.readLine();

            if(entrada.equals("-1")){
                break;
            }

            int numero = 0;
            if(entrada.startsWith("0x")){
                numero = Integer.parseInt(entrada.substring(2), 16);
                System.out.println(numero);
            }else{
                numero = Integer.parseInt(entrada);
                System.out.printf("0x%X\n", numero);
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let entrada = lines.shift().trim();

    if (entrada.startsWith("0x")) {
        console.log(parseInt(entrada, 16));
    } else {
        console.log(`0x${parseInt(entrada).toString(16).toUpperCase()}`);
    }
}
```

### Python 3.9
```py
while True:
    try:
        entrada = input()

        if(entrada == '-1'):
            break

        if(entrada.startswith('0x')):
            print(f'{int(entrada, 16)}')
        else:
            print(f'0x{int(entrada):X}')
    except EOFError:
        break
```