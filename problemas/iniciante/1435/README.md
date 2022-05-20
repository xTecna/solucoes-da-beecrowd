# 1435 - Matriz Quadrada I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1435)

## Solução

Para o conteúdo da matriz, cada célula representa a menor distância de um elemento até qualquer uma das quatro bordas da matriz, ou seja, o número da célula depende da posição dela e do tamanho da matriz como um todo. Logo, temos que a menor distância de uma célula ocupando a posição `(x, y)` dentro de uma matriz `N` x `M` é o mínimo entre dois valores:

* O mínimo entre as distâncias da coordenada `x` e as bordas de cima e de baixo;
* O mínimo entre as distâncias da coordenada `y` e as bordas da esquerda e da direita.

Para arrumar a apresentação, por favor, dê uma conferida nos códigos abaixo. Muitas lições foram aprendidas aprendendo novas técnicas de espaçamento em cada uma dessas linguagens (favor não conferir o histórico de mudanças dessa solução).

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int min(int a, int b)
{
    return a < b ? a : b;
}

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        for (int i = 0; i < N; ++i)
        {
            printf("%3d", 1);
            for (int j = 1; j < N; ++j)
            {
                printf("%4d", min(min(i, N - i - 1), min(j, N - j - 1)) + 1);
            }
            printf("\n");
        }
        printf("\n");
    }

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
    int N;

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        for (int i = 0; i < N; ++i)
        {
            cout << setw(3) << setfill(' ') << 1;
            for (int j = 1; j < N; ++j)
            {
                cout << setw(4) << setfill(' ') << min(min(i, N - 1 - i), min(j, N - 1 - j)) + 1;
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            if (N == 0)
            {
                break;
            }

            for (int i = 0; i < N; ++i)
            {
                Console.Write((1).ToString().PadLeft(3));
                for (int j = 1; j < N; ++j)
                {
                    Console.Write((Math.Min(Math.Min(i, N - 1 - i), Math.Min(j, N - 1 - j)) + 1).ToString().PadLeft(4));
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        while(in.ready()){
            int N = Integer.parseInt(in.readLine().trim());

            if(N == 0){
                break;
            }

            for(int i = 0; i < N; ++i){
                System.out.printf("%3d", 1);
                for(int j = 1; j < N; ++j){
                    System.out.printf("%4d", Math.min(Math.min(i, N - 1 - i), Math.min(j, N - 1 - j)) + 1);
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    if (N === 0) {
        break;
    }

    let resposta = '';
    for (let i = 0; i < N; ++i) {
        resposta += (1).toString().padStart(3);
        for (let j = 1; j < N; ++j) {
            resposta += (Math.min(Math.min(i, N - i - 1), Math.min(j, N - j - 1)) + 1).toString().padStart(4);
        }
        resposta += '\n';
    }

    console.log(resposta);
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        for i in range(N):
            print(f'{1:3d}', end='')
            for j in range(1, N):
                print(
                    f'{(min(min(i, N - i - 1), min(j, N - j - 1)) + 1):4d}', end='')
            print('')
        print('')
    except EOFError:
        break
```