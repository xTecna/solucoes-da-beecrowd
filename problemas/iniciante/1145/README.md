# 1145 - Sequência Lógica 2

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1145)

## Solução

O mais engraçado desse problema é que você não necessariamente precisa se preocupar com o fato de `X` não ser divisível por `Y`, já que as duas versões do programa passam (provavelmente pelos casos de teste), mas só por desencargo de consciência, vamos considerar que podem ter linhas com menos de `X` elementos. Neste caso, temos que limitar o _loop_ interior por dois casos: enquanto tiver menos que `X` números ou enquanto não ultrapassar `Y`.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    for (int i = 1; i <= Y; i += X)
    {
        printf("%d", i);
        for (int j = 1; j < X, i + j <= Y; ++j)
        {
            printf(" %d", i + j);
        }
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
    int X, Y;

    cin >> X >> Y;

    for (int i = 1; i <= Y; i += X)
    {
        cout << i;
        for (int j = 1; j < X, i + j <= Y; ++j)
        {
            cout << ' ' << i + j;
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
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int X = int.Parse(entrada[0]);
        int Y = int.Parse(entrada[1]);

        for(int i = 1; i <= Y; i += X){
            List<int> numeros = new List<int>();
            for(int j = 0; j < X && i + j <= Y; ++j){
                numeros.Add(i + j);
            }
            Console.WriteLine(String.Join(" ", numeros));
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
    
        String[] entrada = in.readLine().trim().split(" ");
        int X = Integer.parseInt(entrada[0]);
        int Y = Integer.parseInt(entrada[1]);

        for(int i = 1; i <= Y; i += X){
            System.out.print(i);
            for(int j = 1; j < X; ++j){
                if(i + j > Y){
                    break;
                }
                System.out.printf(" %d", i + j);
            }
            System.out.printf("\n");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

for (let i = 1; i <= Y; i += X) {
    let numeros = [];
    for (let j = 0; j < X && i + j <= Y; ++j) {
        numeros.push(i + j);
    }
    console.log(numeros.join(' '));
}
```

### Python 3.9

```py
X, Y = [int(x) for x in input().strip().split(' ')]

for i in range(1, Y + 1, X):
    numeros = []
    for j in range(0, X):
        if(i + j > Y):
            break
        numeros.append(str(i + j))
    print(' '.join(numeros))
```