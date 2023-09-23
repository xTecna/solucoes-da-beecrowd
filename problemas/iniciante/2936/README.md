# 2936 - Quanta Mandioca?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2936)

## Solução

As porções podem ser todas colocadas em um vetor e serem calculadas a partir da ordem de entrada. Aqui iniciamos sempre com o valor fixo da Dona Chica, mas poderia começar com zero e adicionar no final também.

### C99
```c
#include <stdio.h>

int main()
{
    int porcoes[5];

    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &porcoes[i]);
    }

    printf("%d\n", porcoes[0] * 300 + porcoes[1] * 1500 + porcoes[2] * 600 + porcoes[3] * 1000 + porcoes[4] * 150 + 225);

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int porcoes[5] = {300, 1500, 600, 1000, 150};

int main(){
    int quantidade, resposta;

    resposta = 225;
    for(int i = 0; i < 5; ++i){
        cin >> quantidade;
        resposta += quantidade * porcoes[i];
    }
    cout << resposta << endl;

    return 0;
}
```

### C#
```cs
using System; 

class URI {
    static void Main(string[] args) {
        int[] porcoes = {300, 1500, 600, 1000, 150};

        int resposta = 225;
        for(int i = 0; i < 5; ++i){
            int quantidade = int.Parse(Console.ReadLine().Trim());
            resposta += quantidade * porcoes[i];
        }

        Console.WriteLine(resposta);
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

        int[] porcoes = {300, 1500, 600, 1000, 150};

        int resposta = 225;
        for(int i = 0; i < 5; ++i){
            int quantidade = Integer.parseInt(in.readLine());
            resposta += quantidade * porcoes[i];
        }

        System.out.println(resposta);
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const porcoes = [300, 1500, 600, 1000, 150];

let resposta = 225;
for (let i = 0; i < 5; ++i) {
    let quantidade = parseInt(lines.shift().trim());
    resposta += quantidade * porcoes[i];
}

console.log(resposta);
```

### Python 3.9
```py
porcoes = [300, 1500, 600, 1000, 150]

resposta = 225
for i in range(5):
    quantidade = int(input())
    resposta += quantidade * porcoes[i]

print(resposta)
```