# 2162 - Picos e Vales

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2162)

## Solução

A única regra importante a se atentar aqui é certificar-se de que não existe um pico seguido por outro pico nem um vale seguido por outro vale. Para isso, seria interessante manter uma variável para guardar sempre se o último valor visto foi um pico ou um vale, pois dessa forma a verificação fica muito mais tranquila.

Casos em que o padrão se quebra:

* Quando você viu um pico e você vê outro pico em seguida;
* Quando você viu um vale e você vê outro vale em seguida;
* Quando você vê algo que não é nem um pico nem um vale (o tamanho da montanha atual é igual à anterior).

### C99

```c
#include <stdio.h>

int main()
{
    int N, H, anterior;

    scanf("%d", &N);

    scanf("%d", &anterior);
    int pico = 0, vale = 0, mesmoPadrao = 1;
    for (int i = 0; i < N - 1; ++i)
    {
        scanf("%d", &H);

        if (H > anterior && !pico)
        {
            pico = 1;
            vale = 0;
        }
        else if (H < anterior && !vale)
        {
            pico = 0;
            vale = 1;
        }
        else
        {
            mesmoPadrao = 0;
            break;
        }

        anterior = H;
    }

    printf("%d\n", mesmoPadrao);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, H, anterior;

    cin >> N;

    cin >> anterior;
    bool pico = false, vale = false, mesmoPadrao = true;
    for (int i = 0; i < N - 1; ++i)
    {
        cin >> H;

        if (H > anterior && !pico)
        {
            pico = true;
            vale = false;
        }
        else if (H < anterior && !vale)
        {
            pico = false;
            vale = true;
        }
        else
        {
            mesmoPadrao = false;
            break;
        }

        anterior = H;
    }

    cout << mesmoPadrao << endl;

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
        int N = int.Parse(Console.ReadLine());

        bool pico = false, vale = false, mesmoPadrao = true;
        List<int> paisagem = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 1; i < N; ++i){
            if(paisagem[i] > paisagem[i - 1] && !pico){
                pico = true;
                vale = false;
            }else if(paisagem[i] < paisagem[i - 1] && !vale){
                pico = false;
                vale = true;
            }else{
                mesmoPadrao = false;
                break;
            }
        }

        Console.WriteLine(mesmoPadrao ? "1" : "0");
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

        int N = Integer.parseInt(in.readLine());
        String[] entrada = in.readLine().trim().split(" ");

        int anterior = Integer.parseInt(entrada[0]);
        boolean pico = false, vale = false, mesmoPadrao = true;
        for (int i = 1; i < N; ++i) {
            int H = Integer.parseInt(entrada[i]);

            if (H > anterior && !pico) {
                pico = true;
                vale = false;
            } else if (H < anterior && !vale) {
                pico = false;
                vale = true;
            } else {
                mesmoPadrao = false;
                break;
            }

            anterior = H;
        }

        System.out.println(mesmoPadrao ? "1" : "0");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let paisagem = lines.shift().trim().split(' ').map(x => parseInt(x));

let pico = false, vale = false, mesmoPadrao = true;
for (let i = 1; i < N; ++i) {
    if (paisagem[i] > paisagem[i - 1] && !pico) {
        pico = true;
        vale = false;
    } else if (paisagem[i] < paisagem[i - 1] && !vale) {
        pico = false;
        vale = true;
    } else {
        mesmoPadrao = false;
        break;
    }
}

console.log(mesmoPadrao ? "1" : "0");
```

### Python 3.9

```py
from operator import truediv


N = int(input())
paisagem = [int(x) for x in input().strip().split(' ')]

pico, vale, mesmoPadrao = False, False, True
for i in range(1, N):
    if(paisagem[i] > paisagem[i - 1] and not pico):
        pico = True
        vale = False
    elif(paisagem[i] < paisagem[i - 1] and not vale):
        pico = False
        vale = True
    else:
        mesmoPadrao = False
        break

print('1' if mesmoPadrao else '0')
```