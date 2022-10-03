# 2753 - Saída 7

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2753)

## Solução

Vide [tabela ASCII](../../../base-teorica/strings/ascii/README.md) para entender porque o _loop_ abaixo funciona.

Também dá para copiar e colar a resposta.

> Por favor, não faça 26 variáveis.

### C99

```c
#include <stdio.h>

int main()
{
    for (char letra = 'a'; letra <= 'z'; ++letra)
    {
        printf("%d e %c\n", letra, letra);
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
    for (char letra = 'a'; letra <= 'z'; ++letra)
    {
        cout << (int)letra << " e " << letra << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        for(char letra = 'a'; letra <= 'z'; ++letra){
            Console.WriteLine($"{(int)letra} e {letra}");
        }
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for (int letra = 97; letra < 123; ++letra) {
            System.out.printf("%d e %c\n", letra, letra);
        }
    }
}
```

### Javascript 12.18

```js
for (let letra = 97; letra < 123; ++letra) {
    console.log(`${letra} e ${String.fromCharCode(letra)}`);
}
```

### Python 3.9

```py
for letra in range(97, 123):
    print(f'{letra} e {chr(letra)}')
```