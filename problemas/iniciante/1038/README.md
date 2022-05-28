# 1038 - Lanche

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1038)

## Solução

Para todas as linguagens que suportam a diretiva switch, aqui está um exemplo bem simples de como ele funciona na prática. Para Python, que não possui switch, decidi guardar os preços em vetores e acessá-los diretamente, o que resultou num código bem mais curto. Também é possível seguir essa abordagem do Python em outras linguagens.

### C99

```c
#include <stdio.h>

int main(){
    double total;
    int codigo, quantidade;

    scanf("%d %d", &codigo, &quantidade);

    switch(codigo){
        case 1: total = quantidade * 4.00;
                break;
        case 2: total = quantidade * 4.50;
                break;
        case 3: total = quantidade * 5.00;
                break;
        case 4: total = quantidade * 2.00;
                break;
        case 5: total = quantidade * 1.50;
                break;
    }

    printf("Total: R$ %.2lf\n", total);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double total;
    int codigo, quantidade;

    cin >> codigo >> quantidade;

    switch(codigo){
        case 1: total = quantidade * 4.00;
                break;
        case 2: total = quantidade * 4.50;
                break;
        case 3: total = quantidade * 5.00;
                break;
        case 4: total = quantidade * 2.00;
                break;
        case 5: total = quantidade * 1.50;
                break;
    }

    cout << "Total: R$ " << setprecision(2) << fixed << total << endl;

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
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int codigo = entrada[0];
        int quantidade = entrada[1];
        
        double total = 0.0;
        switch(codigo){
            case 1: total = quantidade * 4.00;
                    break;
            case 2: total = quantidade * 4.50;
                    break;
            case 3: total = quantidade * 5.00;
                    break;
            case 4: total = quantidade * 2.00;
                    break;
            case 5: total = quantidade * 1.50;
                    break;
        }
        
        Console.WriteLine($"Total: R$ {total:0.00}");
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
        
        String[] entrada = in.readLine().trim().split(" ");
        int codigo = Integer.parseInt(entrada[0]);
        int quantidade = Integer.parseInt(entrada[1]);
        
        double valor = 0.0;
        switch(codigo){
            case 1: valor = quantidade * 4.00;
                    break;
            case 2: valor = quantidade * 4.50;
                    break;
            case 3: valor = quantidade * 5.00;
                    break;
            case 4: valor = quantidade * 2.00;
                    break;
            case 5: valor = quantidade * 1.50;
                    break;
        }
        
        System.out.printf("Total: R$ %.2f\n", valor);
    }
}
```

### JavaScript 12.18

```js
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let [codigo, quantidade] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let total;

switch(codigo){
    case 1: total = quantidade * 4.00;
            break;
    case 2: total = quantidade * 4.50;
            break;
    case 3: total = quantidade * 5.00;
            break;
    case 4: total = quantidade * 2.00;
            break;
    case 5: total = quantidade * 1.50;
            break;
}

console.log(`Total: R$ ${total.toFixed(2)}`);
```

### Python 3.9

```py
codigo, quantidade = [int(x) for x in input().strip().split(' ')]
precos = [4.00, 4.50, 5.00, 2.00, 1.50]

total = quantidade * precos[codigo - 1]

print(f"Total: R$ {total:.2f}")
```