# 1221 - Encaixa ou Não I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1240)

## Solução

### Maneira númerica

Basta ir conferindo os restos da divisão dos números `A` e `B` por 10 e ir dividindo ambos por 10 até que um dos valores chegue a zero. Se todas as verificações forem verdadeiras e `B` for reduzido a zero, então o número `B` encaixa em `A`. Caso contrário, o número `B` não se encaixa em `A`.

### Solução com strings

Ver se a substring resultante dos últimos `|B|` dígitos em `A` é igual a `A` ou simplesmente verificar se `A` termina com `B`, o que é possível em certas linguagens de programação. Como essa solução é apresentada também no problema [1241 - Encaixa ou Não II](../../strings/1241/README.md), aqui vamos fazer a implementação da solução apresentada na seção anterior.

### C99
```c
#include <stdio.h>

int main()
{
    int N, A, B, encaixa;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &A, &B);

        encaixa = 1;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = 0;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = 0;

        printf("%s\n", encaixa ? "encaixa" : "nao encaixa");
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
    int N, A, B;
    bool encaixa;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> A >> B;

        encaixa = true;
        while (A && B)
        {
            if (A % 10 != B % 10)
            {
                encaixa = false;
                break;
            }

            A /= 10;
            B /= 10;
        }

        if (B)
            encaixa = false;

        cout << (string)(encaixa ? "encaixa" : "nao encaixa") << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] AB = Console.ReadLine().Trim().Split(' ');
            int A = int.Parse(AB[0]);
            int B = int.Parse(AB[1]);

            bool encaixa = true;
            while(A > 0 && B > 0){
                if(A % 10 != B % 10){
                    encaixa = false;
                    break;
                }

                A /= 10;
                B /= 10;
            }

            if(B > 0)   encaixa = false;

            if(encaixa){
                Console.WriteLine("encaixa");
            }else{
                Console.WriteLine("nao encaixa");
            }
        }
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

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] AB = in.readLine().trim().split(" ");
            int A = Integer.parseInt(AB[0]);
            int B = Integer.parseInt(AB[1]);

            boolean encaixa = true;
            while(A > 0 && B > 0){
                if(A % 10 != B % 10){
                    encaixa = false;
                    break;
                }

                A /= 10;
                B /= 10;
            }

            if(B > 0)   encaixa = false;

            if(encaixa){
                System.out.println("encaixa");
            }else{
                System.out.println("nao encaixa");
            }
        }
    }
}
```

### JavaScript
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for(let i = 0; i < N; ++i){
    let [A, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let encaixa = true;
    while(A > 0 && B > 0){
        if(A % 10 !== B % 10){
            encaixa = false;
            break;
        }

        A = Math.floor(A / 10);
        B = Math.floor(B / 10);
    }

    if(B > 0)   encaixa = false;

    if(encaixa){
        console.log("encaixa");
    }else{
        console.log("nao encaixa");
    }
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    A, B = [int(x) for x in input().strip().split(' ')]

    encaixa = True
    while(A > 0 and B > 0):
        if(A % 10 != B % 10):
            encaixa = False
            break

        A //= 10
        B //= 10
    
    if(B > 0):
        encaixa = False
    
    if(encaixa):
        print('encaixa')
    else:
        print('nao encaixa')
```