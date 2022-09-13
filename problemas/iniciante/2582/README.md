# 2582 - System of a Download

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2582)

## Solução

Faça um vetor de músicas e acesse-o pela soma dos números.

### C99

```c
#include <stdio.h>

int main()
{
    int C, X, Y;
    char musicas[11][20] = {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};

    scanf("%d", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%d %d", &X, &Y);
        printf("%s\n", musicas[X + Y]);
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
    int C, X, Y;
    string musicas[11] = {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> X >> Y;
        cout << musicas[X + Y] << endl;
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
        string[] musicas = new string[] {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};
        int C = int.Parse(Console.ReadLine());

        for(int i = 0; i < C; ++i){
            List<int> XY = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            Console.WriteLine(musicas[XY[0] + XY[1]]);
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

        String[] musicas = new String[] { "PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE",
                "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS" };

        int C = Integer.parseInt(in.readLine());
        for (int i = 0; i < C; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            System.out.println(musicas[Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1])]);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const musicas = ["PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"];

let C = parseInt(lines.shift());
for (let i = 0; i < C; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map(x => parseInt(x));
    console.log(musicas[X + Y]);
}
```

### Python 3.9

```py
musicas = ["PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!",
           "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"]

C = int(input())
for _ in range(C):
    X, Y = [int(x) for x in input().strip().split(' ')]
    print(musicas[X + Y])
```