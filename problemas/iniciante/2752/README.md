# 2752 - Saída 6

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2752)

## Solução

Nada te impede de só copiar a saída e mandar imprimir, mas aqui eu quis fazer bonitinho, separando as funções pra impressão.

Se esses formatos não fazem muito sentido para você, entenda que são formatos de _string_, que foram utilizados nas linguagens C e Java (mas podem ser usados em outras linguagens também). Em C++, JavaScript e Python fiz uma adaptação de acordo com o significado de cada formatação. Em C#, rolou uma mistura das duas maneiras.

### C99

```c
#include <stdio.h>

int main()
{
    char frase[50] = "AMO FAZER EXERCICIO NO URI";

    printf("<%s>\n", &frase);
    printf("<%30s>\n", &frase);
    printf("<%.20s>\n", &frase);
    printf("<%-20s>\n", &frase);
    printf("<%-30s>\n", &frase);
    printf("<%.30s>\n", &frase);
    printf("<%30.20s>\n", &frase);
    printf("<%-30.20s>\n", &frase);

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
    string frase = "AMO FAZER EXERCICIO NO URI";

    cout << "<" << frase << ">" << endl;
    cout << "<" << setw(30) << frase << ">" << endl;
    cout << "<" << frase.substr(0, 20) << ">" << endl;
    cout << "<" << left << setw(20) << frase << ">" << endl;
    cout << "<" << left << setw(30) << frase << ">" << endl;
    cout << right;
    cout << "<" << frase.substr(0, 30) << ">" << endl;
    cout << "<" << setw(30) << frase.substr(0, 20) << ">" << endl;
    cout << "<" << left << setw(30) << frase.substr(0, 20) << ">" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string frase = "AMO FAZER EXERCICIO NO URI";

        Console.WriteLine($"<{frase}>");
        Console.WriteLine($"<{frase,30}>");
        Console.WriteLine($"<{frase.Substring(0, 20)}>");
        Console.WriteLine($"<{frase,-20}>");
        Console.WriteLine($"<{frase,-30}>");
        Console.WriteLine($"<{frase}>");
        Console.WriteLine($"<{frase.Substring(0, 20),30}>");
        Console.WriteLine($"<{frase.Substring(0, 20),-30}>");
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        String frase = "AMO FAZER EXERCICIO NO URI";

        System.out.printf("<%s>\n", frase);
        System.out.printf("<%30s>\n", frase);
        System.out.printf("<%.20s>\n", frase);
        System.out.printf("<%-20s>\n", frase);
        System.out.printf("<%-30s>\n", frase);
        System.out.printf("<%.30s>\n", frase);
        System.out.printf("<%30.20s>\n", frase);
        System.out.printf("<%-30.20s>\n", frase);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let frase = "AMO FAZER EXERCICIO NO URI";

console.log(`<${frase}>`);
console.log(`<${frase.padStart(30)}>`);
console.log(`<${frase.substring(0, 20)}>`);
console.log(`<${frase.padEnd(20)}>`);
console.log(`<${frase.padEnd(30)}>`);
console.log(`<${frase.substring(0, 30)}>`);
console.log(`<${frase.substring(0, 20).padStart(30)}>`);
console.log(`<${frase.substring(0, 20).padEnd(30)}>`);
```

### Python 3.9

```py
frase = 'AMO FAZER EXERCICIO NO URI'

print(f'<{frase}>')
print(f'<{frase:>30s}>')
print(f'<{frase:>.20s}>')
print(f'<{frase:20s}>')
print(f'<{frase:30s}>')
print(f'<{frase:>.30s}>')
print(f'<{frase:>30.20s}>')
print(f'<{frase:30.20s}>')
```