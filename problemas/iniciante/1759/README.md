# 1759 - Ho Ho Ho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1759)

## Solução

Basta imprimir `N - 1` vezes a string `Ho ` e uma vez a string `Ho!`.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    --N;
    for (int i = 0; i < N; ++i)
    {
        printf("Ho ");
    }
    printf("Ho!\n");

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

    cin >> N;

    --N;
    for (int i = 0; i < N; ++i)
    {
        cout << "Ho ";
    }
    cout << "Ho!" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        --N;
        for(int i = 0; i < N; ++i){
            Console.Write("Ho ");
        }
        Console.WriteLine("Ho!");
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

        --N;
        for(int i = 0; i < N; ++i){
            System.out.print("Ho ");
        }
        System.out.println("Ho!");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

--N;
let resposta = [];
for (let i = 0; i < N; ++i) {
    resposta.push("Ho");
}
resposta.push("Ho!");

console.log(`${resposta.join(' ')}`);
```

### Python 3.9

```py
N = int(input())

print("Ho " * (N - 1) + "Ho!")
```