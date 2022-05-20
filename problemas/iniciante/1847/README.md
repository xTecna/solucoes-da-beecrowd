# 1847 - Bem-vindos e Bem-vindas ao Inverno!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1847)

## Solução

Existem formas muito mais enxutas de resolver este problema, mas decidi implementar cada um dos casos das figuras para me certificar de que está tudo certo. Sugiro seguir esse caminho para entender como o problema funcionar e deixar para enxutar o código depois. Se você esperava ver um código enxuto aqui, por favor, me mande uma issue para que eu possa incluí-lo.

### C99

```c
#include <stdio.h>

int main()
{
    int A, B, C;

    scanf("%d %d %d", &A, &B, &C);

    if (B < A && C >= B)
    {
        printf(":)\n");
    }
    else if (B > A && C <= B)
    {
        printf(":(\n");
    }
    else if (B > A && C > B && C - B < B - A)
    {
        printf(":(\n");
    }
    else if (B > A && C > B && C - B >= B - A)
    {
        printf(":)\n");
    }
    else if (B < A && C < B && B - C < A - B)
    {
        printf(":)\n");
    }
    else if (B < A && C < B && B - C >= A - B)
    {
        printf(":(\n");
    }
    else if (A == B)
    {
        if (C > B)
        {
            printf(":)\n");
        }
        else
        {
            printf(":(\n");
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
    int A, B, C;

    cin >> A >> B >> C;

    if (B < A && C >= B)
    {
        cout << ":)" << endl;
    }
    else if (B > A && C <= B)
    {
        cout << ":(" << endl;
    }
    else if (B > A && C > B && C - B < B - A)
    {
        cout << ":(" << endl;
    }
    else if (B > A && C > B && C - B >= B - A)
    {
        cout << ":)" << endl;
    }
    else if (B < A && C < B && B - C < A - B)
    {
        cout << ":)" << endl;
    }
    else if (B < A && C < B && B - C >= A - B)
    {
        cout << ":(" << endl;
    }
    else if (A == B)
    {
        if (C > B)
        {
            cout << ":)" << endl;
        }
        else
        {
            cout << ":(" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        int A = entrada[0];
        int B = entrada[1];
        int C = entrada[2];

        if (B < A && C >= B)
        {
            Console.WriteLine(":)");
        }
        else if (B > A && C <= B)
        {
            Console.WriteLine(":(");
        }
        else if (B > A && C > B && C - B < B - A)
        {
            Console.WriteLine(":(");
        }
        else if (B > A && C > B && C - B >= B - A)
        {
            Console.WriteLine(":)");
        }
        else if (B < A && C < B && B - C < A - B)
        {
            Console.WriteLine(":)");
        }
        else if (B < A && C < B && B - C >= A - B)
        {
            Console.WriteLine(":(");
        }
        else if (A == B)
        {
            if (C > B)
            {
                Console.WriteLine(":)");
            }
            else
            {
                Console.WriteLine(":(");
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

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);

        if (B < A && C >= B) {
            System.out.println(":)");
        } else if (B > A && C <= B) {
            System.out.println(":(");
        } else if (B > A && C > B && C - B < B - A) {
            System.out.println(":(");
        } else if (B > A && C > B && C - B >= B - A) {
            System.out.println(":)");
        } else if (B < A && C < B && B - C < A - B) {
            System.out.println(":)");
        } else if (B < A && C < B && B - C >= A - B) {
            System.out.println(":(");
        } else if (A == B) {
            if (C > B) {
                System.out.println(":)");
            } else {
                System.out.println(":(");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (B < A && C >= B) {
    console.log(":)");
} else if (B > A && C <= B) {
    console.log(":(");
} else if (B > A && C > B && C - B < B - A) {
    console.log(":(");
} else if (B > A && C > B && C - B >= B - A) {
    console.log(":)");
} else if (B < A && C < B && B - C < A - B) {
    console.log(":)");
} else if (B < A && C < B && B - C >= A - B) {
    console.log(":(");
} else if (A === B) {
    if (C > B) {
        console.log(":)");
    } else {
        console.log(":(");
    }
}
```

### Python 3.9

```py
A, B, C = [int(x) for x in input().strip().split(' ')]

if (B < A and C >= B):
    print(":)")
elif (B > A and C <= B):
    print(":(")
elif (B > A and C > B and C - B < B - A):
    print(":(")
elif (B > A and C > B and C - B >= B - A):
    print(":)")
elif (B < A and C < B and B - C < A - B):
    print(":)")
elif (B < A and C < B and B - C >= A - B):
    print(":(")
elif (A == B):
    if (C > B):
        print(":)")
    else:
        print(":(")
```