# 2685 - A Mudança

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2685)

## Solução

Primeira coisa é pegar M e tirar o módulo base $360$ para ter o número no intervalo de ângulos $[0, 359]$ (por algum motivo, o ângulo $360$ também é aceito, então a gente corrige isso aqui).

Dito isso, pela figura podemos ver que aos $360º$ ($0º$), o Sol está no pico, então a resposta é `Bom Dia!!`. Seguindo o sentido anti-horário da figura então temos que

* Abaixo de $89º$, `Bom Dia!!`.
* De $90º$ até $179º$, `Boa Tarde!!`.
* De $180º$ até $269º$, `Boa Noite!!`.
* Caso contrário, `De Madrugada!!`.

### C99

```c
#include <stdio.h>

int main()
{
    int M;

    while (scanf("%d", &M) != EOF)
    {
        M %= 360;

        if (M < 90)
        {
            printf("Bom Dia!!\n");
        }
        else if (M < 180)
        {
            printf("Boa Tarde!!\n");
        }
        else if (M < 270)
        {
            printf("Boa Noite!!\n");
        }
        else
        {
            printf("De Madrugada!!\n");
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
    int M;

    while (cin >> M)
    {
        M %= 360;

        if (M < 90)
        {
            cout << "Bom Dia!!" << endl;
        }
        else if (M < 180)
        {
            cout << "Boa Tarde!!" << endl;
        }
        else if (M < 270)
        {
            cout << "Boa Noite!!" << endl;
        }
        else
        {
            cout << "De Madrugada!!" << endl;
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
            int M = int.Parse(entrada);

            M %= 360;

            if(M < 90){
                Console.WriteLine("Bom Dia!!");
            }else if(M < 180){
                Console.WriteLine("Boa Tarde!!");
            }else if(M < 270){
                Console.WriteLine("Boa Noite!!");
            }else{
                Console.WriteLine("De Madrugada!!");
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
            int M = Integer.parseInt(in.readLine());

            M %= 360;

            if (M < 90) {
                System.out.println("Bom Dia!!");
            } else if (M < 180) {
                System.out.println("Boa Tarde!!");
            } else if (M < 270) {
                System.out.println("Boa Noite!!");
            } else {
                System.out.println("De Madrugada!!");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let M = parseInt(lines.shift());

    M %= 360;

    if (M < 90) {
        console.log('Bom Dia!!');
    } else if (M < 180) {
        console.log('Boa Tarde!!');
    } else if (M < 270) {
        console.log('Boa Noite!!');
    } else {
        console.log('De Madrugada!!');
    }
}
```

### Python 3.9

```py
while True:
    try:
        M = int(input())

        M %= 360

        if(M < 90):
            print('Bom Dia!!')
        elif(M < 180):
            print('Boa Tarde!!')
        elif(M < 270):
            print('Boa Noite!!')
        else:
            print('De Madrugada!!')
    except EOFError:
        break
```