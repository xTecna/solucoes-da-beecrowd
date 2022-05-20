# 1534 - Matriz 123

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1534)

## Solução

A lógica deste problema é a seguinte: para toda célula em uma coordenada `(x, y)`, seu valor é igual a

* `1`, se `x = y`. Perceba que uma célula só está na diagonal quando sua coordenada de linha é igual à sua coordenada de coluna;
* `2`, se `x + y = N - 1`. Perceba aqui que todo elemento da diagonal secundária tem suas coordenadas complementares ao maior valor possível de posição: `N - 1`. Para comparar então podemos passar o `y` para o outro lado e colocar na condicional `x = N - y - 1`;
* `3`, caso contrário.

Um detalhe interessante é que quando a matriz tem um valor central, a diagonal secundária leva prioridade, então é uma boa ver se o valor é `2` primeiro.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N - 1 - j)
                {
                    printf("2");
                }
                else if (i == j)
                {
                    printf("1");
                }
                else
                {
                    printf("3");
                }
            }
            printf("\n");
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
    int N;

    while (cin >> N)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N - 1 - j)
                {
                    cout << 2;
                }
                else if (i == j)
                {
                    cout << 1;
                }
                else
                {
                    cout << 3;
                }
            }
            cout << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            for(int i = 0; i < N; ++i){
                for(int j = 0; j < N; ++j){
                    if(i == N - 1 - j){
                        Console.Write(2);
                    }else if(i == j){
                        Console.Write(1);
                    }else{
                        Console.Write(3);
                    }
                }
                Console.Write("\n");
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
    
        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            for(int i = 0; i < N; ++i){
                for(int j = 0; j < N; ++j){
                    if(i == N - 1 - j){
                        System.out.print(2);
                    }else if(i == j){
                        System.out.print(1);
                    }else{
                        System.out.print(3);
                    }
                }
                System.out.print("\n");
            }
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

    for (let i = 0; i < N; ++i) {
        let linha = '';

        for (let j = 0; j < N; ++j) {
            if (i === N - 1 - j) {
                linha += '2';
            } else if (i === j) {
                linha += '1';
            } else {
                linha += '3';
            }
        }

        console.log(linha);
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        for i in range(N):
            for j in range(N):
                if(i == N - 1 - j):
                    print(2, end='')
                elif(i == j):
                    print(1, end='')
                else:
                    print(3, end='')
            print('')
    except EOFError:
        break
```