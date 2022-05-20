# 1864 - Nossos Dias Nunca Voltarão

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1864)

## Solução

Existe uma mensagem secreta no enunciado deste problema, tente dar uma olhada nas letras sublinhadas.

Caso tenha dificuldade em encontrar a mensagem, a mensagem é `LIFE IS NOT A PROBLEM TO BE SOLVED`, o que significa "A vida não é um problema para ser resolvida", uma mensagem bem bacana.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    int N;
    char resposta[35], frase[35] = "LIFE IS NOT A PROBLEM TO BE SOLVED";

    scanf("%d", &N);

    strncpy(resposta, frase, N);
    resposta[N] = '\0';
    printf("%s\n", resposta);

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
    string frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

    cin >> N;
    cout << frase.substr(0, N) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

        int N = int.Parse(Console.ReadLine());

        Console.WriteLine($"{frase.Substring(0, N)}");
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

        String frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

        int N = Integer.parseInt(in.readLine());

        System.out.println(frase.substring(0, N));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

let N = parseInt(lines.shift());

console.log(`${frase.substring(0, N)}`);
```

### Python 3.9

```py
frase = 'LIFE IS NOT A PROBLEM TO BE SOLVED'

N = int(input())

print(frase[:N])
```