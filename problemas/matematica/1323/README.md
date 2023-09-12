# 1323 - Feynman

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1323)

## Solução

Perceba que o resultado para cada quadrado $N \times N$ é a soma de todos os quadrados entre $1$ e $N$, ou seja, $F(2) = 1 + 4 = 5$ e $F(8) = 1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 = 204$. Em outras palavras, podemos usar a recorrência $F(N) = F(N - 1) + N^{2}$ com caso base $F(2) = 1$. Use memorização para guardar os resultados de cada soma para não precisar calcular novamente.

### C99
```c
#include <string.h>
#include <stdio.h>

int F[101];

int Feynman(int n)
{
    if (F[n] == 0)
        F[n] = Feynman(n - 1) + n * n;

    return F[n];
}

int main()
{
    int N;

    memset(F, 0, sizeof(F));
    F[1] = 1;

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        printf("%d\n", Feynman(N));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cstring>

using namespace std;

int F[101];

int Feynman(int n)
{
    if (F[n] == 0)
        F[n] = Feynman(n - 1) + n * n;

    return F[n];
}

int main()
{
    int N;

    memset(F, 0, sizeof(F));
    F[1] = 1;

    while (cin >> N)
    {
        if (!N)
            break;

        cout << Feynman(N) << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static int[] F = new int[101];
    
    static int Feynman(int n){
        if(F[n] == 0){
            F[n] = Feynman(n - 1) + n * n;
        }
        return F[n];
    }
    
    static void Main(string[] args) {
        string entrada;
        
        F[1] = 1;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            Console.WriteLine(Feynman(N));
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
    public static int[] F = new int[101];

    public static int Feynman(int n){
        if(F[n] == 0){
            F[n] = Feynman(n - 1) + n * n;
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F[1] = 1;

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            System.out.println(Feynman(N));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let F = Array(101);
F.fill(0);
F[1] = 1;

const Feynman = (n) => {
    if (F[n] === 0) F[n] = Feynman(n - 1) + n * n;
    return F[n];
};

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(Feynman(N));
}
```

### Python 3.9
```py
F = [0 for _ in range(101)]
F[1] = 1


def Feynman(n):
    if(F[n] == 0):
        F[n] = Feynman(n - 1) + n * n

    return F[n]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        print(Feynman(N))
    except EOFError:
        break
```