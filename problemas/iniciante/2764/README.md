# 2764 - Entrada e Saída de Data

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2764)

## Solução

Este problema é uma versão mais fácil do problema [2763 - Entrada e Saída CPF](../2763/README.md), por só precisar de um separador. Confira nos códigos abaixo como fazer a separação para cada linguagem, por formatação ou usando a função `split`.

### C99
```c
#include <stdio.h>

int main()
{
    int D, M, A;

    scanf("%d/%d/%d", &D, &M, &A);

    printf("%02d/%02d/%02d\n", M, D, A);
    printf("%02d/%02d/%02d\n", A, M, D);
    printf("%02d-%02d-%02d\n", D, M, A);

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
    char barra;
    int D, M, A;

    cin >> D >> barra >> M >> barra >> A;

    cout << setw(2) << setfill('0') << M << '/' << setw(2) << setfill('0') << D << '/' << setw(2) << setfill('0') << A << endl;
    cout << setw(2) << setfill('0') << A << '/' << setw(2) << setfill('0') << M << '/' << setw(2) << setfill('0') << D << endl;
    cout << setw(2) << setfill('0') << D << '-' << setw(2) << setfill('0') << M << '-' << setw(2) << setfill('0') << A << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] data = Console.ReadLine().Trim().Split('/');

        Console.WriteLine($"{data[1]}/{data[0]}/{data[2]}");
        Console.WriteLine($"{data[2]}/{data[1]}/{data[0]}");
        Console.WriteLine($"{data[0]}-{data[1]}-{data[2]}");
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

        String[] data = in.readLine().trim().split("/");

        System.out.printf("%s/%s/%s\n", data[1], data[0], data[2]);
        System.out.printf("%s/%s/%s\n", data[2], data[1], data[0]);
        System.out.printf("%s-%s-%s\n", data[0], data[1], data[2]);
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let data = lines.shift().trim().split('/');

console.log(`${data[1]}/${data[0]}/${data[2]}`);
console.log(`${data[2]}/${data[1]}/${data[0]}`);
console.log(`${data[0]}-${data[1]}-${data[2]}`);
```

### Python 3.9
```py
data = input().strip().split('/')

print(f'{data[1]}/{data[0]}/{data[2]}')
print(f'{data[2]}/{data[1]}/{data[0]}')
print(f'{data[0]}-{data[1]}-{data[2]}')
```