# 1118 - Várias Notas Com Validação

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1118)

## Solução

Você precisa ir lendo enquanto você não receber duas notas válidas e após fazer o cálculo, perguntar se a pessoa gostaria de continuar ou não. É uma boa separar em funções a pergunta do novo cálculo para facilitar o controle do `while` exterior, no caso, parando o _loop_ caso a pessoa digite 2.

Aqui eu uso uma das duas variáveis para ficar recebendo duas notas, mas outras abordagens como ir acrescentando num vetor até o vetor ter dois elementos também são bem válidas e podem inclusive facilitar a leitura do código.

### C99

```c
#include <stdio.h>

int valido(double x)
{
    return (x >= 0.0) && (x <= 10.0);
}

int novoCalculo()
{
    int codigo;

    printf("novo calculo (1-sim 2-nao)\n");
    while (scanf("%d", &codigo) != EOF)
    {
        switch (codigo)
        {
        case 1:
            return 1;
        case 2:
            return 0;
        default:
            break;
        }

        printf("novo calculo (1-sim 2-nao)\n");
    }

    return 0;
}

int main()
{
    int codigo;
    double X, Y;

    X = -1.0;
    Y = -1.0;
    while (scanf("%lf", &Y) != EOF)
    {
        if (valido(Y))
        {
            if (X == -1.0)
            {
                X = Y;
            }
            else
            {
                printf("media = %.2lf\n", (X + Y) / 2);
                X = -1.0;

                if (!novoCalculo())
                {
                    break;
                }
            }
        }
        else
        {
            printf("nota invalida\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

bool valido(double x)
{
    return (x >= 0.0) && (x <= 10.0);
}

bool novoCalculo()
{
    int codigo;

    cout << "novo calculo (1-sim 2-nao)" << endl;
    while (cin >> codigo)
    {
        switch (codigo)
        {
        case 1:
            return true;
        case 2:
            return false;
        default:
            break;
        }

        cout << "novo calculo (1-sim 2-nao)" << endl;
    }

    return false;
}

int main()
{
    double X, Y;

    X = -1.0;
    Y = -1.0;
    while (cin >> Y)
    {
        if (valido(Y))
        {
            if (X == -1.0)
            {
                X = Y;
            }
            else
            {
                cout << "media = " << setprecision(2) << fixed << (X + Y) / 2 << endl;
                X = -1.0;

                if (!novoCalculo())
                {
                    break;
                }
            }
        }
        else
        {
            cout << "nota invalida" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static bool valido(double x){
        return (x >= 0.0) && (x <= 10.0);
    }

    static bool novoCalculo(){
        string entrada;

        Console.WriteLine("novo calculo (1-sim 2-nao)");
        while((entrada = Console.ReadLine()) != null){
            switch(entrada){
                case "1":   return true;
                case "2":   return false;
                default:    break;
            }

            Console.WriteLine("novo calculo (1-sim 2-nao)");
        }

        return false;
    }

    static void Main(string[] args) {
        string entrada;

        double X = -1.0;
        while((entrada = Console.ReadLine()) != null){
            double Y = double.Parse(entrada);

            if(valido(Y)){
                if(X == -1.0){
                    X = Y;
                }else{
                    Console.WriteLine($"media = {((X + Y)/2):0.00}");
                    X = -1.0;

                    if(!novoCalculo()){
                        break;
                    }
                }
            }else{
                Console.WriteLine("nota invalida");
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
    public static boolean valido(double x) {
        return (x >= 0.0) && (x <= 10.0);
    }

    public static boolean novoCalculo(BufferedReader in) throws IOException {
        System.out.println("novo calculo (1-sim 2-nao)");
        while (in.ready()) {
            int codigo = Integer.parseInt(in.readLine());

            switch (codigo) {
                case 1:
                    return true;
                case 2:
                    return false;
                default:
                    break;
            }

            System.out.println("novo calculo (1-sim 2-nao)");
        }

        return false;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double X = -1.0;
        while (in.ready()) {
            double Y = Double.parseDouble(in.readLine());

            if (valido(Y)) {
                if (X == -1.0) {
                    X = Y;
                } else {
                    System.out.printf("media = %.2f\n", (X + Y) / 2.0);
                    X = -1.0;

                    if (!novoCalculo(in)) {
                        break;
                    }
                }
            } else {
                System.out.println("nota invalida");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let valido = (x) => (x >= 0.0) && (x <= 10.0);
let novoCalculo = (lines) => {
    console.log('novo calculo (1-sim 2-nao)');
    while (lines.length) {
        let codigo = lines.shift().trim();

        switch (codigo) {
            case '1': return true;
            case '2': return false;
            default: break;
        }

        console.log('novo calculo (1-sim 2-nao)');
    }

    return false;
};

let X = -1.0;
while (lines.length) {
    let Y = parseFloat(lines.shift());

    if (valido(Y)) {
        if (X === -1.0) {
            X = Y;
        } else {
            console.log(`media = ${((X + Y) / 2).toFixed(2)}`);
            X = -1.0;

            if (!novoCalculo(lines)) {
                break;
            }
        }
    } else {
        console.log('nota invalida');
    }
}
```

### Python 3.9

```py
def valido(x):
    return (x >= 0.0 and x <= 10.0)


def novoCalculo():
    print('novo calculo (1-sim 2-nao)')
    while True:
        try:
            codigo = int(input())
            if(codigo == 1):
                return True
            elif(codigo == 2):
                return False
            print('novo calculo (1-sim 2-nao)')
        except EOFError:
            break
    return False


X = -1.0
while True:
    try:
        Y = float(input())

        if(valido(Y)):
            if(X == -1.0):
                X = Y
            else:
                print(f'media = {(X + Y)/2:.2f}')
                X = -1.0

                if(not novoCalculo()):
                    break
        else:
            print('nota invalida')
    except EOFError:
        break
```