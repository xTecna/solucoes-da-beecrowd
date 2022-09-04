# 2152 - Pepe, Já Tirei a Vela!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2152)

## Solução

Você pode dar uma olhada nos exemplos abaixo para ver como formatar um número com sempre dois números, colocando um zero caso seja um número com apenas um dígito.

### C99

```c
#include <stdio.h>

int main()
{
    int T, H, M, O;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %d", &H, &M, &O);
        printf("%02d:%02d - A porta %s!\n", H, M, O ? "abriu" : "fechou");
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
    int T, H, M, O;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> H >> M >> O;
        cout << setw(2) << setfill('0') << H << ":" << setw(2) << setfill('0') << M << " - A porta " << (O ? "abriu" : "fechou") << "!" << endl;
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
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            Console.WriteLine($"{entrada[0]:00}:{entrada[1]:00} - A porta {(entrada[2] == 1 ? "abriu" : "fechou")}!");
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
            int T = Integer.parseInt(in.readLine());
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int H = Integer.parseInt(entrada[0]);
                int M = Integer.parseInt(entrada[1]);
                int O = Integer.parseInt(entrada[2]);

                System.out.printf("%02d:%02d - A porta %s!\n", H, M, O == 1 ? "abriu" : "fechou");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = lines.shift();
for (let i = 0; i < T; ++i) {
    let [H, M, O] = lines.shift().trim().split(' ');
    O = parseInt(O);

    console.log(`${H.padStart(2, '0')}:${M.padStart(2, '0')} - A porta ${O ? "abriu" : "fechou"}!`);
}
```

### Python 3.9

```py
T = int(input())
for _ in range(T):
    H, M, O = [int(x) for x in input().strip().split(' ')]

    verbo = 'abriu' if O else 'fechou'
    print(f'{H:02d}:{M:02d} - A porta {verbo}!')
```