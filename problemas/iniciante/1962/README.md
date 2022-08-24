# 1962 - Há Muito, Muito Tempo Atrás

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1962)

## Solução

Se são anos transcorridos até chegar em 2015 D.C., então é necessário primeiramente fazer $2015 - T$ para descobrirmos o ano real ao qual $T$ se refere. Por exemplo, se a entrada for 1, significa que passou um ano para chegar em 2015, logo, o ano a qual estamos nos referindo é 2014 D.C..

A partir daí, seguimos a linha do tempo para indicar se um ano é A.C. ou D.C.:

1- Não existe ano zero, o equivalente ao ano zero é o ano 1 A.C., pois é o ano que vem antes do ano 1 D.C.. Caso o resultado da operação seja zero, é necessário retornar 1 A.C..
2- Caso o resultado da conta seja negativo, então sabemos que é um ano A.C., ou seja, podemos inverter o sinal e adicionar mais um para obtermos o ano A.C. correspondente. Somar mais um é necessário porque, novamente, não temos um ano zero, então todos os anos A.C. são deslocados pra esquerda em uma unidade na linha do tempo.
3- Caso o resultado da conta seja positivo, basta tomarmos essa resposta como o resultado do ano D.C., como naturalmente calcularíamos o ano em que alguém nasceu, se a pessoa tem idade $T$ em 2015.

### C99

```c
#include <stdio.h>

int main()
{
    int N, T;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &T);

        T = 2015 - T;

        if (T <= 0)
        {
            printf("%d A.C.\n", 1 - T);
        }
        else
        {
            printf("%d D.C.\n", T);
        }
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
    int N, T;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> T;

        T = 2015 - T;

        if (T <= 0)
        {
            cout << 1 - T << " A.C." << endl;
        }
        else
        {
            cout << T << " D.C." << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        for (int i = 0; i < N; ++i)
        {
            int T = int.Parse(Console.ReadLine());

            T = 2015 - T;

            if (T <= 0)
            {
                Console.WriteLine($"{1 - T} A.C.");
            }
            else
            {
                Console.WriteLine($"{T} D.C.");
            }
        }
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

        int N = Integer.parseInt(in.readLine().trim());
        for (int i = 0; i < N; ++i) {
            int T = Integer.parseInt(in.readLine().trim());

            T = 2015 - T;

            if (T <= 0) {
                System.out.printf("%d A.C.\n", 1 - T);
            } else {
                System.out.printf("%d D.C.\n", T);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let p = 0;
let N = parseInt(lines[p++]);
for (let i = 0; i < N; ++i) {
    let T = parseInt(lines[p++]);

    T = 2015 - T;

    if (T <= 0) {
        console.log(`${1 - T} A.C.`);
    } else {
        console.log(`${T} D.C.`);
    }
}
```

### Python 3.9

```py
N = int(input().strip())
for _ in range(N):
    T = int(input().strip())

    T = 2015 - T

    if(T <= 0):
        print(f'{1 - T} A.C.')
    else:
        print(f'{T} D.C.')
```