# 1165 - Número Primo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1165)

## Solução

Vide a seção de [números primos](../../../base-teorica/matematica/primos/README.md) para entender como o Crivo de Eratóstenes funciona e como aplicá-lo para descobrir quais números são ou não primos.

> O crivo de Eratóstenes dá Time Limit Exceeded para a linguagem Python, então tive que implementar com a segunda abordagem descrita no material teórico.

### C99

```c
#include <stdio.h>
#define NMAX 10000001

int C[NMAX];

void Crivo()
{
    C[0] = 0;
    C[1] = 0;
    C[2] = 1;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = 0;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = 1;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

int main()
{
    int N, X;

    Crivo();

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (C[X])
        {
            printf("%d eh primo\n", X);
        }
        else
        {
            printf("%d nao eh primo\n", X);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#define NMAX 10000001

using namespace std;

bool C[NMAX];

void Crivo()
{
    C[0] = false;
    C[1] = false;
    C[2] = true;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = false;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = true;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int main()
{
    int N, X;

    Crivo();

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (C[X])
        {
            cout << X << " eh primo" << endl;
        }
        else
        {
            cout << X << " nao eh primo" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int NMAX = 10000001;
    static bool[] C;

    static void Crivo(){
        C = new bool[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static void Main(string[] args) {
        Crivo();

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());

            if(C[X]){
                Console.WriteLine($"{X} eh primo");
            }else{
                Console.WriteLine($"{X} nao eh primo");
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
    public static int NMAX = 10000001;
    public static boolean[] C;

    public static void Crivo(){
        C = new boolean[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(C[X]){
                System.out.printf("%d eh primo\n", X);
            }else{
                System.out.printf("%d nao eh primo\n", X);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const NMAX = 10000001;
let C;

let Crivo = () => {
    C = Array(NMAX);

    C[0] = false;
    C[1] = false;
    C[2] = true;
    for (let i = 4; i < NMAX; i += 2) {
        C[i] = false;
    }
    for (let i = 3; i < NMAX; i += 2) {
        C[i] = true;
    }

    for (let i = 3; i < NMAX; i += 2) {
        if (C[i]) {
            for (let j = 3 * i; j < NMAX; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

Crivo();

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (C[X]) {
        console.log(`${X} eh primo`);
    } else {
        console.log(`${X} nao eh primo`);
    }
}
```

### Python 3.9

```py
NMAX = 10001
C = [False for _ in range(NMAX)]
primos = []


def Crivo():
    C[0] = False
    C[1] = False
    C[2] = True
    for i in range(4, NMAX, 2):
        C[i] = False
    for i in range(3, NMAX, 2):
        C[i] = True

    primos.append(2)
    for i in range(3, NMAX, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, NMAX, 2 * i):
                C[j] = False


def testePrimo(n):
    for primo in primos:
        if(n % primo == 0):
            return n == primo
    return True


Crivo()

N = int(input())
for _ in range(N):
    X = int(input())

    if(testePrimo(X)):
        print(f'{X} eh primo')
    else:
        print(f'{X} nao eh primo')
```