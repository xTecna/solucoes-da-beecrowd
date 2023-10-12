# 2760 - Entrada e Saída de String

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2760)

## Solução

Veja como ler uma linha inteira na sua linguagem escolhida e como conseguir um pedaço de uma _string_, como apenas as 10 primeiras letras.

Por algum motivo, a solução de JavaScript dá _Presentation Error_.

### C99
```c
#include <stdio.h>

int main()
{
    char A[101], B[101], C[101];

    scanf("%[^\n]\n", &A);
    scanf("%[^\n]\n", &B);
    scanf("%[^\n]\n", &C);

    printf("%s%s%s\n", A, B, C);
    printf("%s%s%s\n", B, C, A);
    printf("%s%s%s\n", C, A, B);
    printf("%.10s%.10s%.10s\n", A, B, C);

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <string>

using namespace std;

int main()
{
    string A, B, C;

    getline(cin, A);
    getline(cin, B);
    getline(cin, C);

    cout << A << B << C << endl;
    cout << B << C << A << endl;
    cout << C << A << B << endl;
    cout << A.substr(0, 10) << B.substr(0, 10) << C.substr(0, 10) << endl;

    return 0;
}
```

### C#
```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string A = Console.ReadLine();
        string B = Console.ReadLine();
        string C = Console.ReadLine();

        Console.WriteLine($"{A}{B}{C}");
        Console.WriteLine($"{B}{C}{A}");
        Console.WriteLine($"{C}{A}{B}");
        Console.WriteLine($"{A.Substring(0, Math.Min(A.Length, 10))}{B.Substring(0, Math.Min(B.Length, 10))}{C.Substring(0, Math.Min(C.Length, 10))}");
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String A = in.readLine();
        String B = in.readLine();
        String C = in.readLine();

        System.out.printf("%s%s%s\n", A, B, C);
        System.out.printf("%s%s%s\n", B, C, A);
        System.out.printf("%s%s%s\n", C, A, B);
        System.out.printf("%.10s%.10s%.10s\n", A, B, C);
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

console.log(`${lines[0]}${lines[1]}${lines[2]}`);
console.log(`${lines[1]}${lines[2]}${lines[0]}`);
console.log(`${lines[2]}${lines[0]}${lines[1]}`);
console.log(`${lines[0].substring(0, 10)}${lines[1].substring(0, 10)}${lines[2].substring(0, 10)}`);
```

### Python 3.9
```py
A = input()
B = input()
C = input()

print(f'{A}{B}{C}')
print(f'{B}{C}{A}')
print(f'{C}{A}{B}')
print(f'{A[:10]}{B[:10]}{C[:10]}')
```