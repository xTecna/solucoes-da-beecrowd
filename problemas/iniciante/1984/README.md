# 1984 - O Enigma do Pronalândia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1984)

## Solução

Vamos aprender maneiras diferentes de inverter _strings_.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    int n;
    char numero[20];

    scanf("%s\n", &numero);

    n = strlen(numero);
    for (int i = 0; i < n / 2; ++i)
    {
        char tmp = numero[i];
        numero[i] = numero[n - i - 1];
        numero[n - i - 1] = tmp;
    }

    printf("%s\n", numero);

    return 0;
}
```

### C++17

```cpp
#include <algorithm>
#include <iostream>

using namespace std;

int main()
{
    string numero;

    cin >> numero;
    reverse(numero.begin(), numero.end());
    cout << numero << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        string numero = Console.ReadLine();
        Console.WriteLine(numero.Reverse().ToArray());
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.StringBuffer;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String numero = in.readLine();
        StringBuffer entrada = new StringBuffer(numero);
        entrada.reverse();
        System.out.println(entrada);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let numero = lines.shift().trim();
console.log(numero.split('').reverse().join(''));
```

### Python 3.9

```py
numero = input().strip()
print(numero[::-1])
```