# 1564 - Vai Ter Copa?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1564)

## Solução

Vide seção [Entrada até EOF](../../../introducao/modelos-de-entrada-e-saida/README.md#entrada-até-eof) para entender como ler uma entrada até o final de arquivo. A partir daí, imprima `vai ter copa!` se o `N` lido for 0 e `vai ter duas!` se `N` for maior que zero.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        printf("vai ter %s!\n", N == 0 ? "copa" : "duas");
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
    int N;

    while (cin >> N)
    {
        cout << "vai ter " << (N == 0 ? "copa" : "duas") << "!" << endl;
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
            int N = int.Parse(entrada);

            if(N == 0){
                Console.WriteLine("vai ter copa!");
            }else{
                Console.WriteLine("vai ter duas!");
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

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());
            System.out.printf("vai ter %s!\n", N == 0 ? "copa" : "duas");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    if (N === 0) {
        console.log("vai ter copa!");
    } else {
        console.log("vai ter duas!");
    }
}
```

### Python 3.9

```py
while(True):
    try:
        N = int(input())

        if(N == 0):
            print('vai ter copa!')
        else:
            print('vai ter duas!')
    except EOFError:
        break
```