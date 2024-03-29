# 1871 - Zero vale Zero

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1871)

## Solução

O _problemsetter_ desse problema nos fez um grande favor: ele já deixou claro que os números a serem somados não terão zero, ou seja, só precisamos tirar o zero do resultado da soma. Com isso, podemos transformar a soma em _string_ e retirar todos os zeros presentes no resultado. Em cada linguagem eu lido com isso de uma maneira diferente, confira como eu fiz na sua linguagem escolhida.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int M, N, n, soma;
    char aux, resposta[11];

    while(scanf("%d %d", &M, &N)){
        if(!M && !N)    break;

        memset(resposta, '\0', sizeof(resposta));

        n = 0;
        soma = M + N;
        while(soma){
            if(soma % 10)   resposta[n++] = (soma % 10) + '0';
            soma /= 10;
        }

        for(int i = 0; i < n/2; ++i){
            aux = resposta[i];
            resposta[i] = resposta[n - i - 1];
            resposta[n - i - 1] = aux;
        }

        printf("%s\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int main(){
    int M, N, soma;
    string aux, resposta;
    stringstream fluxo;

    while(cin >> M >> N){
        if(!M && !N)    break;

        soma = M + N;

        fluxo.clear();
        fluxo.str("");

        fluxo << soma;
        fluxo >> aux;

        resposta = "";
        for(int i = 0; i < aux.length(); ++i){
            if(aux[i] != '0')   resposta += aux[i];
        }

        cout << resposta << endl;
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
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> NM = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            if(NM[0] == 0 && NM[1] == 0){
                break;
            }

            string soma = (NM[0] + NM[1]).ToString();
            soma = soma.Replace("0", "");

            Console.WriteLine(soma);
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

        while(in.ready()){
            String[] NM = in.readLine().trim().split(" ");

            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            if(N == 0 && M == 0){
                break;
            }

            String soma = String.format("%d", N + M);
            soma = soma.replace("0", "");

            System.out.println(soma);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!M && !N)    break;

    let soma = (M + N).toString();
    let resposta = soma.split('0').join('');

    console.log(resposta);
}
```

### Python 3.9
```py
while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        if(not M and not N):
            break

        soma = str(M + N)
        resposta = soma.replace('0', '')

        print(resposta)
    except EOFError:
        break
```