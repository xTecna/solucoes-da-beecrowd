# 2757 - Entrada e Saída de Números Inteiros

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2757)

## Solução

Cada linguagem tem sua maneira distinta de lidar com números em termos de alinhamento e formatação. Dê uma olhada no código para saber como lidar com elas na sua linguagem de escolha.

### C99
```c
#include <stdio.h>

int main()
{
    int A, B, C;

    scanf("%d %d %d", &A, &B, &C);

    printf("A = %d, B = %d, C = %d\n", A, B, C);
    printf("A = %10d, B = %10d, C = %10d\n", A, B, C);
    printf("A = %010d, B = %010d, C = %010d\n", A, B, C);
    printf("A = %-10d, B = %-10d, C = %-10d\n", A, B, C);

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    cout << "A = " << A << ", B = " << B << ", C = " << C << endl;
    cout << "A = " << setw(10) << A << ", B = " << setw(10) << B << ", C = " << setw(10) << C << endl;

    if (A < 0)
    {
        cout << "A = -" << setw(9) << setfill('0') << abs(A) << ", B = " << setw(10) << setfill('0') << B << ", C = " << setw(10) << setfill('0') << C << endl;
    }
    else
    {
        cout << "A = " << setw(10) << setfill('0') << A << ", B = " << setw(10) << setfill('0') << B << ", C = " << setw(10) << setfill('0') << C << endl;
    }

    cout << "A = " << setw(10) << setfill(' ') << left << A << ", B = " << setw(10) << setfill(' ') << left << B << ", C = " << setw(10) << setfill(' ') << left << C << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int A = int.Parse(Console.ReadLine());
        int B = int.Parse(Console.ReadLine());
        int C = int.Parse(Console.ReadLine());

        Console.WriteLine($"A = {A}, B = {B}, C = {C}");
        Console.WriteLine($"A = {A,10}, B = {B,10}, C = {C,10}");

        if(A < 0){
            Console.WriteLine($"A = {A:000000000}, B = {B:0000000000}, C = {C:0000000000}");
        }else{
            Console.WriteLine($"A = {A:0000000000}, B = {B:0000000000}, C = {C:0000000000}");
        }
        
        Console.WriteLine($"A = {A,-10}, B = {B,-10}, C = {C,-10}");
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

        int A = Integer.parseInt(in.readLine());
        int B = Integer.parseInt(in.readLine());
        int C = Integer.parseInt(in.readLine());

        System.out.printf("A = %d, B = %d, C = %d\n", A, B, C);
        System.out.printf("A = %10d, B = %10d, C = %10d\n", A, B, C);
        System.out.printf("A = %010d, B = %010d, C = %010d\n", A, B, C);
        System.out.printf("A = %-10d, B = %-10d, C = %-10d\n", A, B, C);
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A = parseInt(lines.shift()).toString();
let B = parseInt(lines.shift()).toString();
let C = parseInt(lines.shift()).toString();

console.log(`A = ${A}, B = ${B}, C = ${C}`);
console.log(`A = ${A.padStart(10)}, B = ${B.padStart(10)}, C = ${C.padStart(10)}`);

if (A < 0) {
    console.log(`A = -${A.substring(1).padStart(9, '0')}, B = ${B.padStart(10, '0')}, C = ${C.padStart(10, '0')}`);
} else {
    console.log(`A = ${A.padStart(10, '0')}, B = ${B.padStart(10, '0')}, C = ${C.padStart(10, '0')}`);
}

console.log(`A = ${A.padEnd(10)}, B = ${B.padEnd(10)}, C = ${C.padEnd(10)}`);
```

### Python 3.9
```py
A = int(input())
B = int(input())
C = int(input())

print(f'A = {A}, B = {B}, C = {C}')
print(f'A = {A:10d}, B = {B:10d}, C = {C:10d}')
print(f'A = {A:010d}, B = {B:010d}, C = {C:010d}')
print(f'A = {A:<10d}, B = {B:<10d}, C = {C:<10d}')
```