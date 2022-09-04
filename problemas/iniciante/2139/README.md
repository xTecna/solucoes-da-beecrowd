# 2139 - Natal de Pedrinho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2139)

## Solução

Uma maneira um pouco mais fácil de resolver esse problema é normalizar as datas para quantidade de dias desde o dia 31/12/2015 e tirar a diferença. Para isso, eu montei um vetor com todos os dias acumulados no começo de cada mês para facilitar a conta em relação a qualquer dia do mês, o que fiz somando a quantidade de dias nos meses anteriores, começando com 0, depois 31, depois 31 + 29 (ano bissexto), depois 31 + 29 + 31, e assim por diante. Provavelmente deve ter um jeito muito mais fácil de fazer do que esse.

### C99

```c
#include <stdio.h>

int diasAteMes[] = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

int diasAteData(int mes, int dia)
{
    return diasAteMes[mes - 1] + dia;
}

int main()
{
    int mes, dia;

    while (scanf("%d %d\n", &mes, &dia) != EOF)
    {
        int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

        if (diasAteNatal < 0)
        {
            printf("Ja passou!\n");
        }
        else if (diasAteNatal == 0)
        {
            printf("E natal!\n");
        }
        else if (diasAteNatal == 1)
        {
            printf("E vespera de natal!\n");
        }
        else
        {
            printf("Faltam %d dias para o natal!\n", diasAteNatal);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int diasAteMes[] = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

int diasAteData(int mes, int dia)
{
    return diasAteMes[mes - 1] + dia;
}

int main()
{
    int mes, dia;

    while (cin >> mes >> dia)
    {
        int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

        if (diasAteNatal < 0)
        {
            cout << "Ja passou!" << endl;
        }
        else if (diasAteNatal == 0)
        {
            cout << "E natal!" << endl;
        }
        else if (diasAteNatal == 1)
        {
            cout << "E vespera de natal!" << endl;
        }
        else
        {
            cout << "Faltam " << diasAteNatal << " dias para o natal!" << endl;
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
    static int[] diasAteMes = new int[] {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

    static int diasAteData(int mes, int dia){
        return diasAteMes[mes - 1] + dia;
    }

    static void Main(string[] args) {
        int mes, dia;
        string entrada;
        
        while ((entrada = Console.ReadLine()) != null)
        {
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int diasAteNatal = diasAteData(12, 25) - diasAteData(numeros[0], numeros[1]);

            if (diasAteNatal < 0)
            {
                Console.WriteLine("Ja passou!");
            }
            else if (diasAteNatal == 0)
            {
                Console.WriteLine("E natal!");
            }
            else if (diasAteNatal == 1)
            {
                Console.WriteLine("E vespera de natal!");
            }
            else
            {
                Console.WriteLine($"Faltam {diasAteNatal} dias para o natal!");
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

public class Main {
    public static int[] diasAteMes = new int[] { 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335 };

    public static int diasAteData(int mes, int dia) {
        return diasAteMes[mes - 1] + dia;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int mes = Integer.parseInt(entrada[0]);
            int dia = Integer.parseInt(entrada[1]);

            int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

            if (diasAteNatal < 0) {
                System.out.println("Ja passou!");
            } else if (diasAteNatal == 0) {
                System.out.println("E natal!");
            } else if (diasAteNatal == 1) {
                System.out.println("E vespera de natal!");
            } else {
                System.out.printf("Faltam %d dias para o natal!\n", diasAteNatal);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let diasAteMes = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335];

const diasAteData = (mes, dia) => diasAteMes[mes - 1] + dia;

while (lines.length) {
    let [mes, dia] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

    if (diasAteNatal < 0) {
        console.log("Ja passou!");
    } else if (diasAteNatal === 0) {
        console.log("E natal!");
    } else if (diasAteNatal === 1) {
        console.log("E vespera de natal!");
    } else {
        console.log(`Faltam ${diasAteNatal} dias para o natal!`);
    }
}
```

### Python 3.9

```py
diasAteMes = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]


def diasAteData(mes, dia):
    return diasAteMes[mes - 1] + dia


while True:
    try:
        mes, dia = [int(x) for x in input().strip().split(' ')]

        diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia)

        if (diasAteNatal < 0):
            print("Ja passou!")
        elif (diasAteNatal == 0):
            print("E natal!")
        elif (diasAteNatal == 1):
            print("E vespera de natal!")
        else:
            print(f'Faltam {diasAteNatal} dias para o natal!')
    except EOFError:
        break
```