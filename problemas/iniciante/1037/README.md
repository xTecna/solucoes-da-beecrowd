# 1037 - Intervalo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1037)

## Solução

A solução desse problema é bem direta, basta ver se o número pertence a um dos intervalos, lembrando de usar cadeias de if-else ou pode haver mais de uma impressão.

### C99

```c
#include <stdio.h>

int main(){
    double numero;

    scanf("%lf", &numero);

    if(0 <= numero && numero <= 25){
        printf("Intervalo [0,25]\n");
    }else if(25 < numero && numero <= 50){
        printf("Intervalo (25,50]\n");
    }else if(50 < numero && numero <= 75){
        printf("Intervalo (50,75]\n");
    }else if(75 < numero && numero <= 100){
        printf("Intervalo (75,100]\n");
    }else{
        printf("Fora de intervalo\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    double numero;

    cin >> numero;

    if(0 <= numero && numero <= 25){
        cout << "Intervalo [0,25]" << endl;
    }else if(25 < numero && numero <= 50){
        cout << "Intervalo (25,50]" << endl;
    }else if(50 < numero && numero <= 75){
        cout << "Intervalo (50,75]" << endl;
    }else if(75 < numero && numero <= 100){
        cout << "Intervalo (75,100]" << endl;
    }else{
        cout << "Fora de intervalo" << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double numero = double.Parse(Console.ReadLine());
        
        if(0 <= numero && numero <= 25){
            Console.WriteLine("Intervalo [0,25]");
        }else if(25 < numero && numero <= 50){
            Console.WriteLine("Intervalo (25,50]");
        }else if(50 < numero && numero <= 75){
            Console.WriteLine("Intervalo (50,75]");
        }else if(75 < numero && numero <= 100){
            Console.WriteLine("Intervalo (75,100]");
        }else{
            Console.WriteLine("Fora de intervalo");
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
        
        double numero = Double.parseDouble(in.readLine());
        
        if(0 <= numero && numero <= 25){
            System.out.printf("Intervalo [0,25]\n");
        }else if(25 < numero && numero <= 50){
            System.out.printf("Intervalo (25,50]\n");
        }else if(50 < numero && numero <= 75){
            System.out.printf("Intervalo (50,75]\n");
        }else if(75 < numero && numero <= 100){
            System.out.printf("Intervalo (75,100]\n");
        }else{
            System.out.printf("Fora de intervalo\n");
        }
    }
}
```

### JavaScript 12.18

```js
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let numero = parseFloat(lines.shift());

if (0 <= numero && numero <= 25) {
  console.log("Intervalo [0,25]");
} else if (25 < numero && numero <= 50) {
  console.log("Intervalo (25,50]");
} else if (50 < numero && numero <= 75) {
  console.log("Intervalo (50,75]");
} else if (75 < numero && numero <= 100) {
  console.log("Intervalo (75,100]");
} else {
  console.log("Fora de intervalo");
}
```

### Python 3.9

```py
numero = float(input())

if(0 <= numero <= 25):
    print("Intervalo [0,25]")
elif(25 < numero <= 50):
    print("Intervalo (25,50]")
elif(50 < numero <= 75):
    print("Intervalo (50,75]")
elif(75 < numero <= 100):
    print("Intervalo (75,100]")
else:
    print("Fora de intervalo")
```