# 2157 - Sequência Espelho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2157)

## Solução

Para esse problema, precisamos transformar cada número em string e ir concatenando. Após isso, podemos pegar a string resultante e concatenar com sua string oposta. Fazer isso em algumas linguagens é mais fácil do que em outras.

### C99
```c
#include <math.h>
#include <stdio.h>

int main(void) {
    int i, j, k, C, B, E;
    char sequencia[200000];

    scanf("%d\n", &C);
    for (i = 0; i < C; ++i) {
        scanf("%d %d\n", &B, &E);

        int pos = 0;
        for (j = B; j <= E; ++j) {
            int numero = j;
            int digitos = floor(log10(numero)) + 1;
            for (k = digitos - 1; k > -1; --k) {
                sequencia[pos + k] = (numero % 10) + '0';
                numero /= 10;
            }
            pos += digitos;
        }
        for (j = 0; j < pos; ++j) {
            sequencia[2 * pos - j - 1] = sequencia[j];
        }
        sequencia[2 * pos] = '\0';

        printf("%s\n", sequencia);
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int main() {
    int C;

    cin >> C;
    for (int k = 0; k < C; ++k) {
        int B, E;
        cin >> B >> E;

        stringstream ss;
        for (int i = B; i <= E; ++i) {
            ss << i;
        }

        string s;
        ss >> s;
        int tamanho = s.length();
        for (int i = tamanho - 1; i > -1; --i) {
            s += s[i];
        }

        cout << s << endl;
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
        int C = int.Parse(Console.ReadLine());

        for(int k = 0; k < C; ++k){
            List<int> BE = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            string resposta = "";
            for(int i = BE[0]; i <= BE[1]; ++i){
                resposta += i.ToString();
            }
            resposta += string.Join("", resposta.Reverse().ToArray());

            Console.WriteLine(resposta);
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
            String[] BE = in.readLine().trim().split(" ");
            int B = Integer.parseInt(BE[0]);
            int E = Integer.parseInt(BE[1]);

            String resposta = "";
            for(int i = B; i <= E; ++i){
                resposta += Integer.toString(i);
            }
            int tamanho = resposta.length();
            for(int i = tamanho - 1; i > -1; --i){
                resposta += resposta.charAt(i);
            }

            System.out.println(resposta);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let C = parseInt(lines.shift());
for(let k = 0; k < C; ++k){
    let [B, E] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let resposta = "";
    for(let i = B; i <= E; ++i){
        resposta += i.toString();
    }
    let tamanho = resposta.length;
    for(let i = tamanho - 1; i > -1; --i){
        resposta += resposta[i];
    }
    console.log(resposta);
}
```

### Python 3.9
```py
C = int(input())
for _ in range(C):
    B, E = [int(x) for x in input().strip().split(' ')]

    resposta = ''
    for i in range(B, E + 1):
        resposta += str(i)
    
    resposta += resposta[::-1]
    print(resposta)
```