# 1983 - O Escolhido

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1983)

## Solução

Para este problema, comece com um aluno vazio e uma resposta pequena e vá alterando de acordo com cada aluno no _loop_ que tiver nota maior que a nota atual. Depois, basta fazer uma verificação para saber se essa nota maior é menor do que 8, o que neste caso indica que nem o melhor aluno é bom o suficiente para a OBI-Tec.

### C99

```c
#include <stdio.h>

int main()
{
    int n, m, aluno;
    double nota, maior;

    scanf("%d", &n);

    maior = 0.0;
    for (int i = 0; i < n; ++i)
    {
        scanf("%d %lf", &m, &nota);

        if (nota > maior)
        {
            maior = nota;
            aluno = m;
        }
    }

    if (maior < 8.0)
    {
        printf("Minimum note not reached\n");
    }
    else
    {
        printf("%d\n", aluno);
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
    int n, m, aluno;
    double nota, maior;

    cin >> n;

    maior = 0.0;
    for (int i = 0; i < n; ++i)
    {
        cin >> m >> nota;

        if (nota > maior)
        {
            maior = nota;
            aluno = m;
        }
    }

    if (maior < 8.0)
    {
        cout << "Minimum note not reached" << endl;
    }
    else
    {
        cout << aluno << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        string aluno = string.Empty;

        int n = int.Parse(Console.ReadLine());

        double maior = 0.0;
        for (int i = 0; i < n; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            double nota = double.Parse(entrada[1]);

            if (nota > maior)
            {
                maior = nota;
                aluno = entrada[0];
            }
        }

        if (maior < 8.0)
        {
            Console.WriteLine("Minimum note not reached");
        }
        else
        {
            Console.WriteLine(aluno);
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

        String aluno = "";

        int n = Integer.parseInt(in.readLine());

        double maior = 0.0;
        for (int i = 0; i < n; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            double nota = Double.parseDouble(entrada[1]);

            if (nota > maior) {
                maior = nota;
                aluno = entrada[0];
            }
        }

        if (maior < 8.0) {
            System.out.println("Minimum note not reached");
        } else {
            System.out.println(aluno);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

let aluno = '';
let maior = 0.0;
for (let i = 0; i < n; ++i) {
    let [m, nota] = lines.shift().trim().split(' ');
    nota = parseFloat(nota);

    if (nota > maior) {
        maior = nota;
        aluno = m;
    }
}

if (maior < 8.0) {
    console.log('Minimum note not reached');
} else {
    console.log(aluno);
}
```

### Python 3.9

```py
n = int(input())

aluno = ''
maior = 0.0
for _ in range(n):
    m, nota = input().strip().split(' ')
    nota = float(nota)

    if(nota > maior):
        maior = nota
        aluno = m

if(maior < 8.0):
    print('Minimum note not reached')
else:
    print(aluno)
```