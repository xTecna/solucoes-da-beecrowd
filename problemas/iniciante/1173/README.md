# 1173 - Preenchimento de Vetor I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1173)

## Solução

Não é necessário guardar o vetor, já que cada elemento só depende do elemento anterior (é o elemento anterior vezes dois).

Nas soluções, eu apresento um operador diferenciado chamado de `shift` e representado por `<<` ou `>>`. O que esse operador faz é empurrar todos os bits que representam o número pra esquerda ou pra direita, dependendo da direção das setas (`<<` ou `>>`) pelo número de vezes indicado à direita do operador (nesse caso, empurrar uma vez só pra esquerda). Com isso, empurrando todos os bits do número pra esquerda, o que estamos fazendo na prática é multiplicar o número 2. Então, na prática, empurrar os bits pra esquerda `x` vezes é uma forma incrivelmente eficiente de multiplicar um número por `2^x`.

### C99

```c
#include <stdio.h>

int main()
{
    int V;

    scanf("%d", &V);

    int produto = V;
    for (int i = 0; i < 10; ++i)
    {
        printf("N[%d] = %d\n", i, produto);
        produto <<= 1;
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
    int V;

    cin >> V;

    int produto = V;
    for (int i = 0; i < 10; ++i)
    {
        cout << "N[" << i << "] = " << produto << endl;
        produto <<= 1;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int V = int.Parse(Console.ReadLine());

        int produto = V;
        for(int i = 0; i < 10; ++i){
            Console.WriteLine($"N[{i}] = {produto}");
            produto <<= 1;
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

        int V = Integer.parseInt(in.readLine());

        int produto = V;
        for(int i = 0; i < 10; ++i){
            System.out.printf("N[%d] = %d\n", i, produto);
            produto <<= 1;
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let V = parseInt(lines.shift().trim());

let produto = V;
for (let i = 0; i < 10; ++i) {
    console.log(`N[${i}] = ${produto}`);
    produto <<= 1;
}
```

### Python 3.9

```py
V = int(input())

produto = V
for i in range(10):
    print(f'N[{i}] = {produto}')
    produto <<= 1
```