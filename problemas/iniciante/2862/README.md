# 2862 - Inseto!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2862)

## Solução

Aqui você precisa ler um valor e determinar se é maior do que 8000 ou não.

### C99
```c
#include <stdio.h>

int main() {
    int C, N;

    scanf("%d\n", &C);
    for(int i = 0; i < C; ++i){
        scanf("%d\n", &N);

        if(N > 8000){
            printf("Mais de 8000!\n");
        }else{
            printf("Inseto!\n");
        }
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main() {
    int C, N;

    cin >> C;
    for(int i = 0; i < C; ++i){
        cin >> N;

        if(N > 8000){
            cout << "Mais de 8000!" << endl;
        }else{
            cout << "Inseto!" << endl;
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
        int C = int.Parse(Console.ReadLine());
        for(int i = 0; i < C; ++i){
            int N = int.Parse(Console.ReadLine());

            if(N > 8000){
                Console.WriteLine("Mais de 8000!");
            }else{
                Console.WriteLine("Inseto!");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int C = Integer.parseInt(in.readLine());
        for(int i = 0; i < C; ++i){
            int N = Integer.parseInt(in.readLine());

            if(N > 8000){
                System.out.println("Mais de 8000!");
            }else{
                System.out.println("Inseto!");
            }
        }
    }
}
```

### Javascript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());
for(let i = 0; i < C; ++i){
    let N = parseInt(lines.shift());

    if(N > 8000){
        console.log('Mais de 8000!');
    }else{
        console.log('Inseto!');
    }
}
```

### Python 3.9
```py
C = int(input())
for _ in range(C):
    N = int(input())

    if(N > 8000):
        print('Mais de 8000!')
    else:
        print('Inseto!')
```