# 1078 - Tabuada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1078)

## Solução

Faça um `for` para escrever cada um dos resultados da tabuada de 1 até 10.

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i < 11; ++i)
        printf("%d x %d = %d\n", i, N, i * N);

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

    for (int i = 1; i < 11; ++i)
    {
        cout << i << " x " << N << " = " << i * N << endl;
    }

    return 0;
}
```

### C#

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 1; i < 11; ++i)
    {
        cout << i << " x " << N << " = " << i * N << endl;
    }

    return 0;
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
        
        for(int i = 1; i <= 10; ++i){
            System.out.printf("%d x %d = %d\n", i, N, i * N);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 1; i < 11; ++i)
    console.log(`${i} x ${N} = ${i * N}`);
```

### Python 3.9

```py
N = int(input())

for i in range(1, 11):
    print(f'{i} x {N} = {i * N}')
```