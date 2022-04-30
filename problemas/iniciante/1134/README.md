# 1134 - Tipo de Combustível

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1134)

## Solução

É importante lembrar aqui que o programa só é encerrado em duas situações:
* Quando não há mais entrada
* Quando o código recebido é 4

Quando se recebe qualquer outro código inválido, o programa segue no *loop*.

### C99

```c
#include <stdio.h>

int main()
{
    int codigo, alcool, gasolina, diesel;

    alcool = 0, gasolina = 0, diesel = 0;
    while (scanf("%d", &codigo) != EOF)
    {
        if (codigo == 4)
        {
            break;
        }

        switch (codigo)
        {
        case 1:
            ++alcool;
            break;
        case 2:
            ++gasolina;
            break;
        case 3:
            ++diesel;
            break;
        default:
            break;
        }
    }

    printf("MUITO OBRIGADO\n");
    printf("Alcool: %d\n", alcool);
    printf("Gasolina: %d\n", gasolina);
    printf("Diesel: %d\n", diesel);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int codigo, alcool, gasolina, diesel;

    alcool = 0, gasolina = 0, diesel = 0;
    while (cin >> codigo)
    {
        if (codigo == 4)
        {
            break;
        }

        switch (codigo)
        {
        case 1:
            ++alcool;
            break;
        case 2:
            ++gasolina;
            break;
        case 3:
            ++diesel;
            break;
        default:
            break;
        }
    }

    cout << "MUITO OBRIGADO" << endl;
    cout << "Alcool: " << alcool << endl;
    cout << "Gasolina: " << gasolina << endl;
    cout << "Diesel: " << diesel << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string codigo;
        int alcool, gasolina, diesel;

        alcool = 0;
        gasolina = 0;
        diesel = 0;
        while((codigo = Console.ReadLine()) != null){
            if(codigo == "4"){
                break;
            }

            switch(codigo){
                case "1":   ++alcool;
                            break;
                case "2":   ++gasolina;
                            break;
                case "3":   ++diesel;
                            break;
                default:    break;
            }
        }

        Console.WriteLine("MUITO OBRIGADO");
        Console.WriteLine($"Alcool: {alcool}");
        Console.WriteLine($"Gasolina: {gasolina}");
        Console.WriteLine($"Diesel: {diesel}");
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
    
        int alcool = 0, gasolina = 0, diesel = 0;
        while(in.ready()){
            int codigo = Integer.parseInt(in.readLine());

            if(codigo == 4){
                break;
            }

            switch(codigo){
                case 1:     ++alcool;
                            break;
                case 2:     ++gasolina;
                            break;
                case 3:     ++diesel;
                            break;
                default:    break;
            }
        }

        System.out.println("MUITO OBRIGADO");
        System.out.printf("Alcool: %d\n", alcool);
        System.out.printf("Gasolina: %d\n", gasolina);
        System.out.printf("Diesel: %d\n", diesel);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [alcool, gasolina, diesel] = [0, 0, 0];
while (lines.length) {
    let codigo = parseInt(lines.shift());

    if (codigo === 4) {
        break;
    }

    switch (codigo) {
        case 1: ++alcool;
            break;
        case 2: ++gasolina;
            break;
        case 3: ++diesel;
            break;
        default: break;
    }
}

console.log("MUITO OBRIGADO");
console.log(`Alcool: ${alcool}`);
console.log(`Gasolina: ${gasolina}`);
console.log(`Diesel: ${diesel}`);
```

### Python 3.9

```py
alcool, gasolina, diesel = 0, 0, 0

while True:
    try:
        codigo = int(input())

        if(codigo == 1):
            alcool += 1
        elif(codigo == 2):
            gasolina += 1
        elif(codigo == 3):
            diesel += 1
        elif(codigo == 4):
            break
    except EOFError:
        break

print('MUITO OBRIGADO')
print(f'Alcool: {alcool}')
print(f'Gasolina: {gasolina}')
print(f'Diesel: {diesel}')
```