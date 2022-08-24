# 1865 - Mjölnir

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1865)

## Solução

Esse problema precisa de um conhecimento externo: de acordo com os quadrinhos, o martelo Mjölnir só pode ser erguido pelo próprio Thor. Ou seja, para resolver este problema, basta ver se o nome é `Thor`.

### C99

```c
#include <stdio.h>

int main()
{
    char nome[10];
    int N, forca;

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s %d\n", &nome, &forca);

        printf("%c\n", strcmp(nome, "Thor") == 0 ? 'Y' : 'N');
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
    string nome;
    int N, forca;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> nome >> forca;

        cout << (nome == "Thor" ? "Y" : "N") << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());

        for (int i = 0; i < N; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            if (entrada[0] == "Thor")
            {
                Console.WriteLine("Y");
            }
            else
            {
                Console.WriteLine("N");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            if (entrada[0].equals("Thor")) {
                System.out.println("Y");
            } else {
                System.out.println("N");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let [nome, forca] = lines.shift().trim().split(' ');

    console.log(`${nome === "Thor" ? "Y" : "N"}`);
}
```

### Python 3.9

```py
N = int(input())
for _ in range(N):
    nome, forca = input().strip().split(' ')

    print('Y' if nome == 'Thor' else 'N')
```