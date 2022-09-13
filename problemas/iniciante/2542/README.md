# 2542 - Iu-Di-Oh!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2542)

## Solução

Você pode organizar as cartas dos jogadores como uma matriz onde cada linha é uma carta e cada coluna é um atributo. Desta maneira, você vai poder conferir rapidamente o atributo de uma carta específica usando os acessores da matriz. Só lembrar que os acessores vão de 1 até o limite em vez de 0 até limite menos um.

### C99

```c
#include <stdio.h>

int main()
{
    int N, M, L, CM, CL, A;
    int cartasMarcos[101][101], cartasLeonardo[101][101];

    while (scanf("%d", &N) != EOF)
    {
        scanf("%d %d", &M, &L);

        for (int i = 1; i <= M; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                scanf("%d", &cartasMarcos[i][j]);
            }
        }

        for (int i = 1; i <= L; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                scanf("%d", &cartasLeonardo[i][j]);
            }
        }

        scanf("%d %d", &CM, &CL);
        scanf("%d", &A);

        if (cartasMarcos[CM][A] > cartasLeonardo[CL][A])
        {
            printf("Marcos\n");
        }
        else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A])
        {
            printf("Leonardo\n");
        }
        else
        {
            printf("Empate\n");
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
    int N, M, L, CM, CL, A;
    int cartasMarcos[101][101], cartasLeonardo[101][101];

    while (cin >> N)
    {
        cin >> M >> L;

        for (int i = 1; i <= M; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                cin >> cartasMarcos[i][j];
            }
        }

        for (int i = 1; i <= L; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                cin >> cartasLeonardo[i][j];
            }
        }

        cin >> CM >> CL;
        cin >> A;

        if (cartasMarcos[CM][A] > cartasLeonardo[CL][A])
        {
            cout << "Marcos" << endl;
        }
        else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A])
        {
            cout << "Leonardo" << endl;
        }
        else
        {
            cout << "Empate" << endl;
        }
    }

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
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int M = numeros[0];
            int L = numeros[1];

            int[,] cartasMarcos = new int[M + 1, N + 1];
            for(int i = 1; i <= M; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= N; ++j){
                    cartasMarcos[i, j] = numeros[j - 1];
                }
            }
            
            int[,] cartasLeonardo = new int[L + 1, N + 1];
            for(int i = 1; i <= L; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= N; ++j){
                    cartasLeonardo[i, j] = numeros[j - 1];
                }
            }

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int A = int.Parse(Console.ReadLine());

            if(cartasMarcos[numeros[0], A] > cartasLeonardo[numeros[1], A]){
                Console.WriteLine("Marcos");
            }else if(cartasLeonardo[numeros[1], A] > cartasMarcos[numeros[0], A]){
                Console.WriteLine("Leonardo");
            }else{
                Console.WriteLine("Empate");
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

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine().trim());

            String[] numeros = in.readLine().trim().split(" ");
            int M = Integer.parseInt(numeros[0]);
            int L = Integer.parseInt(numeros[1]);

            int[][] cartasMarcos = new int[M + 1][N + 1];
            for (int i = 1; i <= M; ++i) {
                numeros = in.readLine().trim().split(" ");
                for (int j = 1; j <= N; ++j) {
                    cartasMarcos[i][j] = Integer.parseInt(numeros[j - 1]);
                }
            }

            int[][] cartasLeonardo = new int[L + 1][N + 1];
            for (int i = 1; i <= L; ++i) {
                numeros = in.readLine().trim().split(" ");
                for (int j = 1; j <= N; ++j) {
                    cartasLeonardo[i][j] = Integer.parseInt(numeros[j - 1]);
                }
            }

            numeros = in.readLine().trim().split(" ");
            int CM = Integer.parseInt(numeros[0]);
            int CL = Integer.parseInt(numeros[1]);
            int A = Integer.parseInt(in.readLine());

            if (cartasMarcos[CM][A] > cartasLeonardo[CL][A]) {
                System.out.println("Marcos");
            } else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A]) {
                System.out.println("Leonardo");
            } else {
                System.out.println("Empate");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    let [M, L] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let cartasMarcos = [];
    for (let i = 0; i < M; ++i) {
        cartasMarcos.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
    }

    let cartasLeonardo = [];
    for (let i = 0; i < L; ++i) {
        cartasLeonardo.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
    }

    let [CM, CL] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let A = parseInt(lines.shift());

    if (cartasMarcos[CM - 1][A - 1] > cartasLeonardo[CL - 1][A - 1]) {
        console.log('Marcos');
    } else if (cartasLeonardo[CL - 1][A - 1] > cartasMarcos[CM - 1][A - 1]) {
        console.log('Leonardo');
    } else {
        console.log('Empate');
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        M, L = [int(x) for x in input().strip().split(' ')]

        cartasMarcos = []
        for _ in range(M):
            cartasMarcos.append([int(x) for x in input().strip().split(' ')])

        cartasLeonardo = []
        for _ in range(L):
            cartasLeonardo.append([int(x) for x in input().strip().split(' ')])

        CM, CL = [int(x) for x in input().strip().split(' ')]
        A = int(input())

        if(cartasMarcos[CM - 1][A - 1] > cartasLeonardo[CL - 1][A - 1]):
            print('Marcos')
        elif(cartasLeonardo[CL - 1][A - 1] > cartasMarcos[CM - 1][A - 1]):
            print('Leonardo')
        else:
            print('Empate')
    except EOFError:
        break
```