# 2717 - Tempo do Duende

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2717)

## Solução

Veja se somando os dois tempos dá menor ou igual ao tempo disponível, caso tenha tempo, então dá pra fazer tudo hoje. Caso contrário, deixe pra amanhã.

### C99

```c
#include <stdio.h>

int main()
{
    int N, A, B;

    scanf("%d", &N);
    scanf("%d %d", &A, &B);

    if (A + B <= N)
    {
        printf("Farei hoje!\n");
    }
    else
    {
        printf("Deixa para amanha!\n");
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
    int N, A, B;

    cin >> N;
    cin >> A >> B;

    if (A + B <= N)
    {
        cout << "Farei hoje!" << endl;
    }
    else
    {
        cout << "Deixa para amanha!" << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());
        List<int> AB = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        if(AB[0] + AB[1] <= N){
            Console.WriteLine("Farei hoje!");
        }else{
            Console.WriteLine("Deixa para amanha!");
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

        int N = Integer.parseInt(in.readLine());

        String[] AB = in.readLine().trim().split(" ");
        int A = Integer.parseInt(AB[0]);
        int B = Integer.parseInt(AB[1]);

        if (A + B <= N) {
            System.out.println("Farei hoje!");
        } else {
            System.out.println("Deixa para amanha!");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let [A, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

if (A + B <= N) {
    console.log('Farei hoje!');
} else {
    console.log('Deixa para amanha!');
}
```

### Python 3.9

```py
N = int(input())
A, B = [int(x) for x in input().strip().split(' ')]

if(A + B <= N):
    print('Farei hoje!')
else:
    print('Deixa para amanha!')
```