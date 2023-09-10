# 2755 - Saída 9

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2755)

## Solução

Se você copiar a saída e colocar direto no seu código, vão surgir diversos erros de compilação (ou erros de execução caso você tente executar em uma linguagem interpretada). Para que certos caracteres sejam aceitos (como as aspas simples/duplas, a barra invertida ou o _underline_), é preciso escapá-los colocando uma barra invertida (`\`) na frente. Outro detalhe é que uma tabulação pode ser feita usando `\t`.

### C99

```c
#include <stdio.h>

int main()
{
    printf("\"Ro'b'er\tto\\/\"\n");
    printf("(._.) ( l: ) ( .-. ) ( :l ) (._.)\n");
    printf("(^_-) (-_-) (-_^)\n");
    printf("(\"_\") ('.')\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    cout << "\"Ro'b'er\tto\\/\"" << endl;
    cout << "(._.) ( l: ) ( .-. ) ( :l ) (._.)" << endl;
    cout << "(^_-) (-_-) (-_^)" << endl;
    cout << "(\"_\") ('.')" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        Console.WriteLine("\"Ro'b'er\tto\\/\"");
        Console.WriteLine("(._.) ( l: ) ( .-. ) ( :l ) (._.)");
        Console.WriteLine("(^_-) (-_-) (-_^)");
        Console.WriteLine("(\"_\") ('.')");
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("\"Ro'b'er\tto\\/\"");
        System.out.println("(._.) ( l: ) ( .-. ) ( :l ) (._.)");
        System.out.println("(^_-) (-_-) (-_^)");
        System.out.println("(\"_\") ('.')");
    }
}
```

### Javascript 12.18

```js
console.log('"Ro\'b\'er\tto\\/"');
console.log('(._.) ( l: ) ( .-. ) ( :l ) (._.)');
console.log('(^_-) (-_-) (-_^)');
console.log('("_") (\'.\')');
```

### Python 3.9

```py
print('"Ro\'b\'er\tto\\/"')
print('(._.) ( l: ) ( .-. ) ( :l ) (._.)')
print('(^_-) (-_-) (-_^)')
print('("_") (\'.\')')
```