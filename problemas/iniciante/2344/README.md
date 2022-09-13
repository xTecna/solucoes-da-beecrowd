# 2344 - Notas da Prova

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2344)

## Solução

Instruções `switch` normalmente não funcionam aqui, mas uma cadeia de `if` faz um bom trabalho.

### C99

```c
#include <stdio.h>

char conceito(int nota)
{
    if (nota > 85)
    {
        return 'A';
    }
    if (nota > 60)
    {
        return 'B';
    }
    if (nota > 35)
    {
        return 'C';
    }
    if (nota > 0)
    {
        return 'D';
    }
    return 'E';
}

int main()
{
    int N;

    scanf("%d", &N);
    printf("%c\n", conceito(N));

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

char conceito(int nota)
{
    if (nota > 85)
    {
        return 'A';
    }
    if (nota > 60)
    {
        return 'B';
    }
    if (nota > 35)
    {
        return 'C';
    }
    if (nota > 0)
    {
        return 'D';
    }
    return 'E';
}

int main()
{
    int N;

    cin >> N;
    cout << conceito(N) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static char conceito(int nota) {
        if(nota > 85){
            return 'A';
        }
        if(nota > 60){
            return 'B';
        }
        if(nota > 35){
            return 'C';
        }
        if(nota > 0){
            return 'D';
        }
        return 'E';
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        Console.WriteLine(conceito(N));
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static char conceito(int nota) {
        if (nota > 85) {
            return 'A';
        }
        if (nota > 60) {
            return 'B';
        }
        if (nota > 35) {
            return 'C';
        }
        if (nota > 0) {
            return 'D';
        }
        return 'E';
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        System.out.println(conceito(N));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const conceito = (nota) => {
    if (nota > 85) {
        return 'A';
    }
    if (nota > 60) {
        return 'B';
    }
    if (nota > 35) {
        return 'C';
    }
    if (nota > 0) {
        return 'D';
    }
    return 'E';
};

let N = parseInt(lines.shift());
console.log(conceito(N));
```

### Python 3.9

```py
def conceito(nota):
    if(nota > 85):
        return 'A'
    if(nota > 60):
        return 'B'
    if(nota > 35):
        return 'C'
    if(nota > 0):
        return 'D'
    return 'E'


N = int(input())
print(conceito(N))
```