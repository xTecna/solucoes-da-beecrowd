# 2721 - Indecisão das Renas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2721)

## Solução

Somando todas as pilhas de bolas de neve, temos a quantidade total de bolas que vamos distribuir entre as renas. Por essa distruibuição, a única parte que nos interessa é saber o resto da divisão desse número por 9, o número de renas, pois este resto representa a última rodada de distribuição das bolas. Se o resto for igual a zero, isso significa que todas as bolas foram distribuídas igualmente e que a última bola foi para `Rudolph`, a última rena do grupo. Caso o resto não seja igual a zero, isso significa que a bola foi para a rena na ordem que está no enunciado (1 bola significa `Dasher`, 2 bolas significa `Dancer`, e assim por diante). Com isso, podemos colocar as renas em um vetor, colocando `Rudolph` primeiro e depois o restante, e depois somar as pilhas e verificar o valor do resto da divisão para ver quem foi a última rena que recebeu uma bola.

### C99

```c
#include <stdio.h>

int main()
{
    int A, soma;
    char *renas[9] = {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

    soma = 0;
    for (int i = 0; i < 9; ++i)
    {
        scanf("%d", &A);
        soma += A;
    }

    printf("%s\n", renas[soma % 9]);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int A, soma;
    string renas[9] = {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

    soma = 0;
    for (int i = 0; i < 9; ++i)
    {
        cin >> A;
        soma += A;
    }

    cout << renas[soma % 9] << endl;

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
        string[] renas = new string[9] {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

        int soma = 0;
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 0; i < 9; ++i){
            soma += entrada[i];
        }

        Console.WriteLine(renas[soma % 9]);
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

        String[] renas = new String[] { "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner",
                "Blitzen" };

        String[] entrada = in.readLine().trim().split(" ");
        int soma = 0;
        for (int i = 0; i < 9; ++i) {
            soma += Integer.parseInt(entrada[i]);
        }

        System.out.println(renas[soma % 9]);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let renas = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"];

let soma = lines.shift().trim().split(' ').map(x => parseInt(x)).reduce((acc, cur) => acc + cur, 0);
console.log(renas[soma % 9]);
```

### Python 3.9

```py
renas = ["Rudolph", "Dasher", "Dancer", "Prancer",
         "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

soma = sum([int(x) for x in input().strip().split(' ')])
print(renas[soma % 9])
```