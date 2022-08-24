# 1924 - Vitória e a Indecisão

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1924)

## Solução

Aqui no código eu busquei respeitar o fluxo de entrada e saída, mas se eu não me engano, você consegue passar esse problema só imprimindo diretamente `Ciencia da Computacao`.

E se você estiver na mesma situação que Vitória, só de treinar esses problemas, você já está no caminho certo. Continue estudando. :)

### C99

```c
#include <stdio.h>

int main()
{
    int n;
    char S[102];

    scanf("%d\n", &n);
    for (int i = 0; i < n; ++i)
    {
        gets(S);
    }

    printf("Ciencia da Computacao\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int n;
    string S;

    cin >> n;
    cin.ignore();
    for (int i = 0; i < n; ++i)
    {
        getline(cin, S);
    }

    cout << "Ciencia da Computacao" << endl;

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
        int n = int.Parse(Console.ReadLine());
        for (int i = 0; i < n; ++i)
        {
            string S = Console.ReadLine();
        }

        Console.WriteLine("Ciencia da Computacao");
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

        int n = Integer.parseInt(in.readLine());
        for (int i = 0; i < n; ++i) {
            String S = in.readLine();
        }

        System.out.println("Ciencia da Computacao");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());
for (let i = 0; i < n; ++i) {
    let S = lines.shift();
}

console.log('Ciencia da Computacao');
```

### Python 3.9

```py
n = int(input())
for _ in range(n):
    S = input()

print('Ciencia da Computacao')
```