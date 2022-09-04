# 2161 - Raiz Quadrada de 10

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2161)

## Solução

Quando eu olhei esse problema, a impressão que eu tive foi que a repetição era feita sempre aumentando de 3 em 3 a fração, mas não é isso. A técnica de calcular a raiz quadrada de 10 usando frações periódicas continuadas funciona repetindo a mesma fração no denominador, assim

$$\sqrt{10} \approx 3 + \frac{1}{6 + \frac{1}{6}} \approx 3 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6}}} \approx 3 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6 + \frac{1}{6}}}} \approx \cdots$$

Para conseguirmos emular essa repetição, temos que pensar de baixo pra cima, começando do denominador mais abaixo e ir montando o caminho de volta. Uma boa forma de fazer isso é começando com um variável `x` iniciando com o valor `6` e ir repetindo `1 + 6/x` quantas vezes forem necessárias. Perceba que o que vai acontecer é o seguinte

`6 -> 1 + 1/6 + 1 + 1/(1 + 1/6) -> 1 + 1/(1 + 1/(1 + 1/6))`

e assim por diante... Aí no final você faz `3 + 1/x`.

### C99

```c
#include <stdio.h>

int main()
{
    int N;
    double resposta;

    scanf("%d", &N);

    if (N == 0)
    {
        resposta = 3.0;
    }
    else
    {
        resposta = 6.0;
        for (int i = 0; i < N - 1; ++i)
        {
            resposta = 6.0 + 1.0 / resposta;
        }
        resposta = 3.0 + 1.0 / resposta;
    }

    printf("%.10lf\n", resposta);

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
    double resposta;

    cin >> N;

    if (N == 0)
    {
        resposta = 3.0;
    }
    else
    {
        resposta = 6.0;
        for (int i = 0; i < N - 1; ++i)
        {
            resposta = 6.0 + 1.0 / resposta;
        }
        resposta = 3.0 + 1.0 / resposta;
    }

    cout << setprecision(10) << fixed << resposta << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        double resposta;
        if(N == 0){
            resposta = 3.0;
        }else{
            resposta = 6.0;
            for(int i = 0; i < N - 1; ++i){
                resposta = 6.0 + 1.0 / resposta;
            }
            resposta = 3.0 + 1.0 / resposta;
        }

        Console.WriteLine($"{resposta:N10}");
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

        double resposta;
        if (N == 0) {
            resposta = 3.0;
        } else {
            resposta = 6.0;
            for (int i = 0; i < N - 1; ++i) {
                resposta = 6.0 + 1.0 / resposta;
            }
            resposta = 3.0 + 1.0 / resposta;
        }

        System.out.printf("%.10f\n", resposta);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let resposta = 0.0;
if (N === 0) {
    resposta = 3.0;
} else {
    resposta = 6.0;
    for (let i = 0; i < N - 1; ++i) {
        resposta = 6.0 + 1.0 / resposta;
    }
    resposta = 3.0 + 1.0 / resposta;
}

console.log(resposta.toFixed(10));
```

### Python 3.9

```py
N = int(input())

resposta = 0.0
if(N == 0):
    resposta = 3.0
else:
    resposta = 6.0
    for _ in range(N - 1):
        resposta = 6.0 + 1.0 / resposta
    resposta = 3.0 + 1.0 / resposta

print(f'{resposta:.10f}')
```