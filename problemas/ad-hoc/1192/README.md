# 1192 - O jogo Matemático de Paula

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1192)

## Solução

Basta fazer todas as verificações de acordo com o que o enunciado apresenta. Entender de [código ASCII](../../../base-teorica/strings/ascii/README.md) vai te ajudar mais nas linguagens de baixo nível, mas nada que seja muito complicado.

### C99
```c
#include <stdio.h>
#include <ctype.h>

int main()
{
    char linha[4];
    int N, digito1, digito2;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%s", &linha);

        digito1 = linha[0] - '0';
        digito2 = linha[2] - '0';

        if (digito1 == digito2)
        {
            printf("%d\n", digito1 * digito2);
        }
        else if (isupper(linha[1]))
        {
            printf("%d\n", digito2 - digito1);
        }
        else
        {
            printf("%d\n", digito1 + digito2);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>

using namespace std;

int main()
{
    string linha;
    int N, digito1, digito2;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> linha;

        digito1 = linha[0] - '0';
        digito2 = linha[2] - '0';

        if (digito1 == digito2)
        {
            cout << digito1 * digito2 << endl;
        }
        else if (isupper(linha[1]))
        {
            cout << digito2 - digito1 << endl;
        }
        else
        {
            cout << digito1 + digito2 << endl;
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
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string sequencia = Console.ReadLine();
            
            int a = int.Parse(sequencia[0].ToString());
            int b = int.Parse(sequencia[2].ToString());
            
            if(a == b){
                Console.WriteLine(a * b);
            }else if(Char.IsUpper(sequencia[1])){
                Console.WriteLine(b - a);
            }else{
                Console.WriteLine(a + b);
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

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String sequencia = in.readLine().trim();

            int a = sequencia.charAt(0) - '0';
            int b = sequencia.charAt(2) - '0';

            if(a == b){
                System.out.println(a * b);
            }else if(Character.isUpperCase(sequencia.charAt(1))){
                System.out.println(b - a);
            }else{
                System.out.println(a + b);
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
  let linha = lines.shift();

  let digito1 = parseInt(linha[0]);
  let digito2 = parseInt(linha[2]);

  if (digito1 === digito2)
    console.log(digito1 * digito2);
  else if (/[A-Z]/.test(linha[1]))
    console.log(digito2 - digito1);
  else
    console.log(digito1 + digito2);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    linha = input()

    digito1 = int(linha[0])
    digito2 = int(linha[2])

    if(digito1 == digito2):
        print(digito1 * digito2)
    elif(linha[1].isupper()):
        print(digito2 - digito1)
    else:
        print(digito1 + digito2)
```