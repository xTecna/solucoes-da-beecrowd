# 1114 - Senha Fixa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1114)

## Solução

Você precisa manter um `while` para ler os números, mas quebrá-lo caso encontre a senha correta usando a instrução `break`.

### C99

```c
#include <stdio.h>

int main()
{
    int senha;

    while (scanf("%d", &senha) != EOF)
    {
        if (senha == 2002)
        {
            printf("Acesso Permitido\n");
            break;
        }

        printf("Senha Invalida\n");
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
    int senha;

    while (cin >> senha)
    {
        if (senha == 2002)
        {
            cout << "Acesso Permitido" << endl;
            break;
        }

        cout << "Senha Invalida" << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string linha = string.Empty;

        while ((linha = Console.ReadLine()) != null){
            int senha = int.Parse(linha);

            if(senha == 2002){
                Console.WriteLine("Acesso Permitido");
                break;
            }

            Console.WriteLine("Senha Invalida");
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
            int senha = Integer.parseInt(in.readLine());

            if(senha == 2002){
                System.out.println("Acesso Permitido");
                break;
            }

            System.out.println("Senha Invalida");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let senha = parseInt(lines.shift());

    if (senha == 2002) {
        console.log("Acesso Permitido");
        break;
    }

    console.log("Senha Invalida");
}
```

### Python 3.9

```py
while True:
    try:
        senha = int(input())

        if(senha == 2002):
            print("Acesso Permitido")
            break

        print("Senha Invalida")
    except EOFError:
        break
```