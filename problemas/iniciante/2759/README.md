# 2759 - Entrada e Saída de Carácter

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2759)

## Solução

Não havia necessidade alguma de tirar o `[0]` ou o `.charAt(0)` na entrada em algumas linguagens, mas era apenas para nos garantir de que iríamos receber apenas um caracter.

Use o primeiro exemplo de saída para não se embananar com a ordem dos caracteres.

### C99

```c
#include <stdio.h>

int main()
{
    char A, B, C;

    scanf("%c %c %c", &A, &B, &C);

    printf("A = %c, B = %c, C = %c\n", A, B, C);
    printf("A = %c, B = %c, C = %c\n", B, C, A);
    printf("A = %c, B = %c, C = %c\n", C, A, B);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    char A, B, C;

    cin >> A >> B >> C;

    cout << "A = " << A << ", B = " << B << ", C = " << C << endl;
    cout << "A = " << B << ", B = " << C << ", C = " << A << endl;
    cout << "A = " << C << ", B = " << A << ", C = " << B << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        char A = char.Parse(Console.ReadLine());
        char B = char.Parse(Console.ReadLine());
        char C = char.Parse(Console.ReadLine());

        Console.WriteLine($"A = {A}, B = {B}, C = {C}");
        Console.WriteLine($"A = {B}, B = {C}, C = {A}");
        Console.WriteLine($"A = {C}, B = {A}, C = {B}");
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

        char A = in.readLine().charAt(0);
        char B = in.readLine().charAt(0);
        char C = in.readLine().charAt(0);

        System.out.printf("A = %c, B = %c, C = %c\n", A, B, C);
        System.out.printf("A = %c, B = %c, C = %c\n", B, C, A);
        System.out.printf("A = %c, B = %c, C = %c\n", C, A, B);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A = lines.shift()[0];
let B = lines.shift()[0];
let C = lines.shift()[0];

console.log(`A = ${A}, B = ${B}, C = ${C}`);
console.log(`A = ${B}, B = ${C}, C = ${A}`);
console.log(`A = ${C}, B = ${A}, C = ${B}`);
```

### Python 3.9

```py
A = input()[0]
B = input()[0]
C = input()[0]

print(f'A = {A}, B = {B}, C = {C}')
print(f'A = {B}, B = {C}, C = {A}')
print(f'A = {C}, B = {A}, C = {B}')
```