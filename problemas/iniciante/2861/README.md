# 2861 - A Saída

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2861)

## Solução

Para literalmente toda frase, pode-se usar a resposta `gzuz`.

### C99
```c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int C;
  char frase[100];

  scanf("%d\n", &C);
  for (int k = 0; k < C; ++k) {
      scanf("%[^\n]\n", &frase);
      printf("gzuz\n");
  }

  return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main() {
    int C;

    cin >> C;
    cin.ignore();

    string frase;
    for(int k = 0; k < C; ++k){
        getline(cin, frase);
        cout << "gzuz" << endl;
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

        for(int k = 0; k < C; ++k){
            string frase = Console.ReadLine();
            Console.WriteLine("gzuz");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int C = Integer.parseInt(in.readLine());

        for(int k = 0; k < C; ++k){
            String frase = in.readLine();
            System.out.println("gzuz");
        }
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let C = parseInt(lines.shift());

for (let k = 0; k < C; ++k) {
    let frase = lines.shift();
    console.log('gzuz');
}
```

### Python 3.9
```py
C = int(input())

for _ in range(C):
    frase = input()
    print('gzuz')
```