# 1050 - DDD

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1050)

## Solução

Para este problema, basta usar sequência de ifs, switches ou dicionários. Para cada linguagem, vamos fazer da maneira mais apropriada.

### C99

```c
#include <stdio.h>

int main(){
    int DDD;

    scanf("%d", &DDD);

    switch(DDD){
        case 61:    printf("Brasilia\n");
                    break;
        case 71:    printf("Salvador\n");
                    break;
        case 11:    printf("Sao Paulo\n");
                    break;
        case 21:    printf("Rio de Janeiro\n");
                    break;
        case 32:    printf("Juiz de Fora\n");
                    break;
        case 19:    printf("Campinas\n");
                    break;
        case 27:    printf("Vitoria\n");
                    break;
        case 31:    printf("Belo Horizonte\n");
                    break;
        default:    printf("DDD nao cadastrado\n");
                    break;
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int DDD;

    cin >> DDD;

    switch(DDD){
        case 61:    cout << "Brasilia" << endl;
                    break;
        case 71:    cout << "Salvador" << endl;
                    break;
        case 11:    cout << "Sao Paulo" << endl;
                    break;
        case 21:    cout << "Rio de Janeiro" << endl;
                    break;
        case 32:    cout << "Juiz de Fora" << endl;
                    break;
        case 19:    cout << "Campinas" << endl;
                    break;
        case 27:    cout << "Vitoria" << endl;
                    break;
        case 31:    cout << "Belo Horizonte" << endl;
                    break;
        default:    cout << "DDD nao cadastrado" << endl;
                    break;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int DDD = int.Parse(Console.ReadLine());
        
        switch(DDD){
            case 61:    Console.WriteLine("Brasilia");
                        break;
            case 71:    Console.WriteLine("Salvador");
                        break;
            case 11:    Console.WriteLine("Sao Paulo");
                        break;
            case 21:    Console.WriteLine("Rio de Janeiro");
                        break;
            case 32:    Console.WriteLine("Juiz de Fora");
                        break;
            case 19:    Console.WriteLine("Campinas");
                        break;
            case 27:    Console.WriteLine("Vitoria");
                        break;
            case 31:    Console.WriteLine("Belo Horizonte");
                        break;
            default:    Console.WriteLine("DDD nao cadastrado");
                        break;
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
        
        int DDD = Integer.parseInt(in.readLine());
        
        switch(DDD){
            case 61:    System.out.printf("Brasilia\n");
                        break;
            case 71:    System.out.printf("Salvador\n");
                        break;
            case 11:    System.out.printf("Sao Paulo\n");
                        break;
            case 21:    System.out.printf("Rio de Janeiro\n");
                        break;
            case 32:    System.out.printf("Juiz de Fora\n");
                        break;
            case 19:    System.out.printf("Campinas\n");
                        break;
            case 27:    System.out.printf("Vitoria\n");
                        break;
            case 31:    System.out.printf("Belo Horizonte\n");
                        break;
            default:    System.out.printf("DDD nao cadastrado\n");
                        break;
        }
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let DDD = parseInt(lines.shift().trim());

switch(DDD){
    case 61:    console.log("Brasilia");
                break;
    case 71:    console.log("Salvador");
                break;
    case 11:    console.log("Sao Paulo");
                break;
    case 21:    console.log("Rio de Janeiro");
                break;
    case 32:    console.log("Juiz de Fora");
                break;
    case 19:    console.log("Campinas");
                break;
    case 27:    console.log("Vitoria");
                break;
    case 31:    console.log("Belo Horizonte");
                break;
    default:    console.log("DDD nao cadastrado");
                break;
}
```

### Python 3.9

```py
codigos = {
    61: "Brasilia",
    71: "Salvador",
    11: "Sao Paulo",
    21: "Rio de Janeiro",
    32: "Juiz de Fora",
    19: "Campinas",
    27: "Vitoria",
    31: "Belo Horizonte"    
}

DDD = int(input())

print("DDD nao cadastrado" if not DDD in codigos else codigos[DDD])
```