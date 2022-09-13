# 2581 - I am Toorg!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2581)

## Solução

Veja pelos códigos abaixo como se lê uma linha inteira em cada linguagem.

### C99

```c
#include <stdio.h>

int main()
{
    int N;
    char frase[101];

    while (scanf("%d\n", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &frase);
            printf("I am Toorg!\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <string>

using namespace std;

int main()
{
    int N;
    string frase;

    while (cin >> N)
    {
        cin.ignore();

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);
            cout << "I am Toorg!" << endl;
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
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            for(int i = 0; i < N; ++i){
                string frase = Console.ReadLine();
                Console.WriteLine("I am Toorg!");
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

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            for (int i = 0; i < N; ++i) {
                String frase = in.readLine();
                System.out.println("I am Toorg!");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let frase = lines.shift();
        console.log('I am Toorg!');
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        for _ in range(N):
            frase = input()
            print('I am Toorg!')
    except EOFError:
        break
```