# 1866 - Conta

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1866)

## Solução

Aqui podemos perceber um padrão: todo termo ímpar soma 1 e todo termo par elimina o 1 somado, então só temos como possíveis respostas `1` ou `0`. A resposta então é `1` para uma quantidade ímpar de termos e `0` para uma quantidade par de termos.

### C99

```c
#include <stdio.h>

int main()
{
    int C, N;

    scanf("%d", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%d", &N);
        printf("%d\n", N % 2);
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
    int C, N;

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> N;
        cout << N % 2 << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int i = 0; i < C; ++i){
            int N = int.Parse(Console.ReadLine());
            Console.WriteLine(N % 2);
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
    
        int C = Integer.parseInt(in.readLine());
        for(int i = 0; i < C; ++i){
            int N = Integer.parseInt(in.readLine());
            System.out.println(N % 2);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());
for (let i = 0; i < C; ++i) {
    let N = parseInt(lines.shift());
    console.log(N % 2);
}
```

### Python 3.9

```py
C = int(input())
for _ in range(C):
    N = int(input())
    print(N % 2)
```