# 1555 - Funções

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1555)

## Soluções

Eu resolvi usar funções apenas para fins de organização (na verdade para combinar com o título do problema), mas seria perfeitamente possível fazer as contas diretamente.

### C99
```c
#include <stdio.h>

int r(int x, int y)
{
    return (3 * x) * (3 * x) + y * y;
}

int b(int x, int y)
{
    return 2 * (x * x) + (5 * y) * (5 * y);
}

int c(int x, int y)
{
    return -100 * x + y * y * y;
}

int main()
{
    int N, x, y, rafael, beto, carlos;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &x, &y);

        rafael = r(x, y);
        beto = b(x, y);
        carlos = c(x, y);

        if (rafael > beto && rafael > carlos)
            printf("Rafael ganhou\n");
        else if (beto > rafael && beto > carlos)
            printf("Beto ganhou\n");
        else
            printf("Carlos ganhou\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int r(int x, int y)
{
    return (3 * x) * (3 * x) + y * y;
}

int b(int x, int y)
{
    return 2 * x * x + (5 * y) * (5 * y);
}

int c(int x, int y)
{
    return -100 * x + y * y * y;
}

int main()
{
    int N, x, y, rafael, beto, carlos;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> x >> y;

        rafael = r(x, y);
        beto = b(x, y);
        carlos = c(x, y);

        if (rafael > beto && rafael > carlos)
            cout << "Rafael ganhou" << endl;
        else if (beto > carlos)
            cout << "Beto ganhou" << endl;
        else
            cout << "Carlos ganhou" << endl;
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
    static int r(int x, int y){
        return (3 * x) * (3 * x) + y * y;
    }

    static int b(int x, int y){
        return 2 * x * x + (5 * y) * (5 * y);
    }

    static int c(int x, int y){
        return -100 * x + y * y * y;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            List<int> xy = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int rafael = r(xy[0], xy[1]);
            int beto = b(xy[0], xy[1]);
            int carlos = c(xy[0], xy[1]);

            if(rafael > beto && rafael > carlos){
                Console.WriteLine("Rafael ganhou");
            }else if(beto > carlos){
                Console.WriteLine("Beto ganhou");
            }else{
                Console.WriteLine("Carlos ganhou");
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int r(int x, int y){
        return (3 * x) * (3 * x) + y * y;
    }

    public static int b(int x, int y){
        return 2 * x * x + (5 * y) * (5 * y);
    }

    public static int c(int x, int y){
        return -100 * x + y * y * y;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] xy = in.readLine().trim().split(" ");

            int x = Integer.parseInt(xy[0]);
            int y = Integer.parseInt(xy[1]);

            int rafael = r(x, y);
            int beto = b(x, y);
            int carlos = c(x, y);

            if(rafael > beto && rafael > carlos){
                System.out.println("Rafael ganhou");
            }else if(beto > carlos){
                System.out.println("Beto ganhou");
            }else{
                System.out.println("Carlos ganhou");
            }
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const r = (x, y) => (3 * x) * (3 * x) + y * y;
const b = (x, y) => 2 * x * x + (5 * y) * (5 * y);
const c = (x, y) => -100 * x + y * y * y;

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [x, y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let rafael = r(x, y);
    let beto = b(x, y);
    let carlos = c(x, y);

    if (rafael > beto && rafael > carlos)
        console.log('Rafael ganhou');
    else if (beto > carlos)
        console.log('Beto ganhou');
    else
        console.log('Carlos ganhou');
}
```

### Python 3.9
```python
def r(x, y):
    return (3 * x) * (3 * x) + y * y


def b(x, y):
    return 2 * x * x + (5 * y) * (5 * y)


def c(x, y):
    return -100 * x + y * y * y


N = int(input())

for _ in range(N):
    x, y = [int(x) for x in input().strip().split(' ')]

    rafael = r(x, y)
    beto = b(x, y)
    carlos = c(x, y)

    if(rafael > beto and rafael > carlos):
        print('Rafael ganhou')
    elif(beto > carlos):
        print('Beto ganhou')
    else:
        print('Carlos ganhou')
```