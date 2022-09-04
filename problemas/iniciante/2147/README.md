# 2147 - Galopeira

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2147)

## Solução

No exemplo de entrada podemos ver que a entrada `galopeira` tem como resposta `0.09` e que a entrada `galopeeira` retorna `0.10`. Com isso, podemos chegar a conclusão de que cada letra `e` aumenta em 0,01 segundos a digitação e que a base de digitação do resto das letras que não são `e` é de 0,08 segundos. Desta maneira, como a palavra vai ser sempre alguma variação de `galopeira` com no mínimo uma letra `e`, podemos contar o tempo como a base mais quaisquer letras `e` adicionais.

> Não é preciso fazer verificação da palavra pra ver se realmente está escrito alguma variação de `galopeira`. Assuma que sempre está certo, pode fazer as contas considerando apenas o tamanho da _string_.

Nos exemplos abaixo, eu assumi que poderia não ter uma letra `e`, mas isso é falso, pode fazer as contas considerando pelo menos uma letra `e`.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    int C;
    char galopeira[10001];

    scanf("%d\n", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%s\n", &galopeira);
        printf("%.2f\n", 0.08 + 0.01 * (strlen(galopeira) - 8));
    }

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
    int C;
    string galopeira;

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> galopeira;
        cout << setprecision(2) << fixed << 0.08 + 0.01 * (galopeira.length() - 8) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int i = 0; i < C; ++i){
            string galopeira = Console.ReadLine();
            Console.WriteLine($"{(0.08 + 0.01 * (galopeira.Length - 8)):N2}");
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
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int C = Integer.parseInt(in.readLine());
            for (int i = 0; i < C; ++i) {
                String galopeira = in.readLine();
                System.out.printf("%.2f\n", 0.08 + 0.01 * (galopeira.length() - 8));
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());
for (let i = 0; i < C; ++i) {
    let galopeira = lines.shift().trim();
    console.log((0.08 + 0.01 * (galopeira.length - 8)).toFixed(2));
}
```

### Python 3.9

```py
C = int(input())
for _ in range(C):
    galopeira = input()
    print(f'{(0.08 + 0.01 * (len(galopeira) - 8)):.2f}')
```