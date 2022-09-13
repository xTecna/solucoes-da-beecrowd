# 2523 - A Mensagem de Will

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2523)

## Solução

Trate o alfabeto das lâmpadas como se fosse um vetor, onde cada posição corresponde a uma letra. A partir daí, apenas lembre-se de diminuir um de cada número recebido, já que as posições vão de $[1, 26]$ em vez de $[0, 25]$.

### C99

```c
#include <stdio.h>

int main()
{
    int N, letra;
    char lampadas[27];

    while (scanf("%s\n", &lampadas) != EOF)
    {
        scanf("%d\n", &N);

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &letra);
            printf("%c", lampadas[letra - 1]);
        }
        scanf("\n");
        printf("\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, letra;
    string lampadas;

    while (cin >> lampadas)
    {
        cin >> N;
        for (int i = 0; i < N; ++i)
        {
            cin >> letra;
            cout << lampadas[letra - 1];
        }
        cout << endl;
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
        string lampadas;

        while((lampadas = Console.ReadLine()) != null){
            int N = int.Parse(Console.ReadLine());
            char[] letras = Console.ReadLine().Trim().Split(' ').Select(x => lampadas[int.Parse(x) - 1]).ToArray();
            Console.WriteLine(new string(letras));
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
            String lampadas = in.readLine();
            int N = Integer.parseInt(in.readLine());
            String[] letras = in.readLine().trim().split(" ");
            for (int i = 0; i < N; ++i) {
                System.out.print(lampadas.charAt(Integer.parseInt(letras[i]) - 1));
            }
            System.out.println("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let lampadas = lines.shift();
    let N = parseInt(lines.shift());
    let letras = lines.shift().trim().split(' ').map(x => lampadas[parseInt(x) - 1]);
    console.log(letras.join(''));
}
```

### Python 3.9

```py
from re import T


while True:
    try:
        lampadas = input()
        N = int(input())

        letras = [lampadas[int(x) - 1] for x in input().strip().split(' ')]
        print(''.join(letras))
    except EOFError:
        break
```