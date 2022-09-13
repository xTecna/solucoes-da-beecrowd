# 2510 - Batmain

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2510)

## Solução

Todos os vilões foram capturados pelo Batmain. Como vai ser passado uma lista de vilões, então a resposta é `Y` para todos.

### C99

```c
#include <stdio.h>

int main()
{
    int T;
    char N[26];

    scanf("%d\n", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%s\n", &N);
        printf("Y\n");
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
    int T;
    string N;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> N;
        cout << "Y" << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            string N = Console.ReadLine();
            Console.WriteLine("Y");
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

        int T = Integer.parseInt(in.readLine());
        for(int i = 0; i < T; ++i){
            String N = in.readLine();
            System.out.println("Y");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let N = lines.shift();
    console.log("Y");
}
```

### Python 3.9

```py
T = int(input())
for _ in range(T):
    N = input()
    print('Y')
```