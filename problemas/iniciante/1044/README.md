# 1044 - Múltiplos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1044)

## Solução

Uma forma bem fácil de vermos se um número é múltiplo de outro número é verificando se o resto da divisão entre o maior e o menor número dá zero, o que pode ser verificado com o operador `mod` (`%`).

> Para esse problema, não é necessário verificar se um dos dois valores é 0.

### C99

```c
#include <stdio.h>

void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

int main(){
    int A, B;

    scanf("%d %d", &A, &B);

    if(A < B)   swap(&A, &B);

    if(A % B)   printf("Nao sao Multiplos\n");
    else        printf("Sao Multiplos\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int A, B;

    cin >> A >> B;

    if(A < B)   swap(A, B);

    if(A % B)   cout << "Nao sao Multiplos" << endl;
    else        cout << "Sao Multiplos" << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int A = entrada[0];
        int B = entrada[1];
        
        if(A < B){
            int temp = A;
            A = B;
            B = temp;
        }
        
        if(A % B == 0)
            Console.WriteLine("Sao Multiplos");
        else
            Console.WriteLine("Nao sao Multiplos");
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
        
        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        
        if(A < B){
            int temp = A;
            A = B;
            B = temp;
        }
        
        if(A % B == 0)
            System.out.printf("Sao Multiplos\n");
        else
            System.out.printf("Nao sao Multiplos\n");
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().split(' ').map((x) => parseInt(x));

if(A < B)   [A, B] = [B, A];

console.log((A % B === 0) ? "Sao Multiplos" : "Nao sao Multiplos");
```

### Python 3.9

```py
A, B = [int(x) for x in input().split(' ')]

if(A < B):
    A, B = B, A

print("Nao sao Multiplos" if (A % B) else "Sao Multiplos")
```