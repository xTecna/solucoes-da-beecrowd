# 2754 - Saída 8

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2754)

## Solução

Nada te impede de só copiar a saída e mandar imprimir. Para C e Python, eu fiz o código direitinho do jeito que o problema esperava.

### C99
```c
#include <stdio.h>

int main()
{
    double v1 = 234.345, v2 = 45.698;

    printf("%.6f - %.6f\n", v1, v2);
    printf("%.0f - %.0f\n", v1, v2);
    printf("%.1f - %.1f\n", v1, v2);
    printf("%.2f - %.2f\n", v1, v2);
    printf("%.3f - %.3f\n", v1, v2);
    printf("%e - %e\n", v1, v2);
    printf("%E - %E\n", v1, v2);
    printf("%g - %g\n", v1, v2);
    printf("%g - %g\n", v1, v2);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main()
{
    cout << "234.345000 - 45.698000" << endl;
    cout << "234 - 46" << endl;
    cout << "234.3 - 45.7" << endl;
    cout << "234.34 - 45.70" << endl;
    cout << "234.345 - 45.698" << endl;
    cout << "2.343450e+02 - 4.569800e+01" << endl;
    cout << "2.343450E+02 - 4.569800E+01" << endl;
    cout << "234.345 - 45.698" << endl;
    cout << "234.345 - 45.698" << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        Console.WriteLine("234.345000 - 45.698000");
        Console.WriteLine("234 - 46");
        Console.WriteLine("234.3 - 45.7");
        Console.WriteLine("234.34 - 45.70");
        Console.WriteLine("234.345 - 45.698");
        Console.WriteLine("2.343450e+02 - 4.569800e+01");
        Console.WriteLine("2.343450E+02 - 4.569800E+01");
        Console.WriteLine("234.345 - 45.698");
        Console.WriteLine("234.345 - 45.698");
    }
}
```

### Java 19
```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("234.345000 - 45.698000");
        System.out.println("234 - 46");
        System.out.println("234.3 - 45.7");
        System.out.println("234.34 - 45.70");
        System.out.println("234.345 - 45.698");
        System.out.println("2.343450e+02 - 4.569800e+01");
        System.out.println("2.343450E+02 - 4.569800E+01");
        System.out.println("234.345 - 45.698");
        System.out.println("234.345 - 45.698");
    }
}
```

### JavaScript 12.18
```js
console.log("234.345000 - 45.698000");
console.log("234 - 46");
console.log("234.3 - 45.7");
console.log("234.34 - 45.70");
console.log("234.345 - 45.698");
console.log("2.343450e+02 - 4.569800e+01");
console.log("2.343450E+02 - 4.569800E+01");
console.log("234.345 - 45.698");
console.log("234.345 - 45.698");
```

### Python 3.9
```py
v1, v2 = 234.345, 45.698

print(f'{v1:.6f} - {v2:.6f}')
print(f'{v1:.0f} - {v2:.0f}')
print(f'{v1:.1f} - {v2:.1f}')
print(f'{v1:.2f} - {v2:.2f}')
print(f'{v1:.3f} - {v2:.3f}')
print(f'{v1:e} - {v2:e}')
print(f'{v1:E} - {v2:E}')
print(f'{v1} - {v2}')
print(f'{v1} - {v2}')
```