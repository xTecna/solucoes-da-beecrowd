# 2126 - Procurando Subsequências

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2126)

## Solução

Entendendo como as funções `find`/`indexOf`/`index` de cada linguagem funcionam é a peça chave para resolver esse problema. Deixe as variáveis de resposta separadas das demais e só as atualize quando necessário, para percorrer a string em si, use uma variável extra para não se enrolar.

### C99

```c
#include <stdio.h>

int main()
{
    int k = 0;
    char N1[50], N2[50];

    while (scanf("%s\n%s\n", &N1, &N2) != EOF)
    {
        int qtd = 0, pos = -1;
        char *p = strstr(N2, N1);
        while (p != NULL)
        {
            ++qtd;
            pos = p - N2;
            p = strstr(p + 1, N1);
        }

        printf("Caso #%d:\n", ++k);
        if (qtd == 0)
        {
            printf("Nao existe subsequencia\n\n");
        }
        else
        {
            printf("Qtd.Subsequencias: %d\n", qtd);
            printf("Pos: %d\n\n", pos + 1);
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
    int k = 0;
    string N1, N2;

    while (cin >> N1 >> N2)
    {
        int qtd = 0, pos = -1, p = N2.find(N1);
        while (p != string::npos)
        {
            ++qtd;
            pos = p;
            p = N2.find(N1, p + 1);
        }

        cout << "Caso #" << ++k << ":" << endl;
        if (qtd == 0)
        {
            cout << "Nao existe subsequencia" << endl
                 << endl;
        }
        else
        {
            cout << "Qtd.Subsequencias: " << qtd << endl;
            cout << "Pos: " << pos + 1 << endl
                 << endl;
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
        int k = 0;
        string N1, N2;

        while((N1 = Console.ReadLine()) != null){
            N2 = Console.ReadLine();

            int qtd = 0, pos = -1, p = N2.IndexOf(N1);
            while(p != -1){
                ++qtd;
                pos = p;
                p = N2.IndexOf(N1, p + 1);
            }

            Console.WriteLine($"Caso #{++k}:");
            if(qtd == 0){
                Console.WriteLine("Nao existe subsequencia\n");
            }else{
                Console.WriteLine($"Qtd.Subsequencias: {qtd}");
                Console.WriteLine($"Pos: {pos + 1}\n");
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

        int k = 0;
        while (in.ready()) {
            String N1 = in.readLine();
            String N2 = in.readLine();

            int qtd = 0, pos = -1, p = N2.indexOf(N1);
            while (p != -1) {
                ++qtd;
                pos = p;
                p = N2.indexOf(N1, p + 1);
            }

            System.out.printf("Caso #%d:\n", ++k);
            if (qtd == 0) {
                System.out.println("Nao existe subsequencia\n");
            } else {
                System.out.printf("Qtd.Subsequencias: %d\n", qtd);
                System.out.printf("Pos: %d\n\n", pos + 1);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let k = 0;
while (lines.length) {
    let N1 = lines.shift().trim();
    let N2 = lines.shift().trim();

    let qtd = 0;
    let pos = -1;
    let p = N2.indexOf(N1);
    while (p != -1) {
        ++qtd;
        pos = p;
        p = N2.indexOf(N1, p + 1);
    }

    console.log(`Caso #${++k}:`)
    if (qtd === 0) {
        console.log('Nao existe subsequencia\n');
    } else {
        console.log(`Qtd.Subsequencias: ${qtd}`);
        console.log(`Pos: ${pos + 1}\n`);
    }
}
```

### Python 3.9

```py
k = 0
while True:
    try:
        N1 = input()
        N2 = input()

        qtd = 0
        pos = -1
        p = -1
        while True:
            try:
                p = N2.index(N1, p + 1)
                qtd += 1
                pos = p
            except ValueError:
                break
        k += 1
        print(f'Caso #{k}:')

        if(qtd == 0):
            print('Nao existe subsequencia\n')
        else:
            print(f'Qtd.Subsequencias: {qtd}')
            print(f'Pos: {pos + 1}\n')
    except EOFError:
        break
```