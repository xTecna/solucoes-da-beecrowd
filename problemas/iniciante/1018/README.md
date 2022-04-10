# 1018 - Cédulas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1018)

## Solução

A ideia deste problema é ir utilizando divisões e restos de divisão para ir dividindo o número recebido em pedaços adequados de acordo com o enunciado, mais ou menos como faríamos se fôssemos resolver esse problema na vida real.

Por exemplo, com o número 576, seguimos o seguinte raciocínio:

1. R$ 576,00 precisa de 5 notas de R$ 100,00 porque 576/100 = 5 (divisão inteira);
2. Beleza, representamos 500, então agora sobra 76;
3. R$ 76,00 precisa de 1 nota de R$ 50,00 porque 76/50 = 1;
4. OK, agora temos 26;
5. R$ 26,00 precisa de 1 nota de R$ 20,00 porque 26/20 = 1;
6. Temos 6;
7. R$ 6,00 precisa de 0 nota de R$ 10,00 porque 6/10 = 0;
8. Continuamos com 6;
9. R$ 6,00 precisa de 1 nota de R$ 5,00 porque 6/5 = 1;
10. Agora só sobrou 1;
11. R$ 1,00 precisa de 0 nota de R$ 2,00 porque 1/2 = 0;
12. Continua sobrando 1;
13. Agora o que sobrou é o que dá para representar com 1 nota de R$ 1,00.

Dessa maneira, nossa resposta final são 5 notas de R$ 100,00, 1 nota de R$ 50,00, 1 de R$ 20,00, 1 de R$ 5,00 e 1 de R$ 1,00. Experimente com outros valores de `N` e veja que pegar as divisões inteiras e seus respectivos restos forma um raciocínio interessante para a resolução deste e dos próximos problemas subsequentes.

### C99

```c
#include <stdio.h>

int main(){
    int N;

    scanf("%d", &N);

    printf("%d\n", N);
    
    printf("%d nota(s) de R$ 100,00\n", N/100);
    N %= 100;
    printf("%d nota(s) de R$ 50,00\n", N/50);
    N %= 50;
    printf("%d nota(s) de R$ 20,00\n", N/20);
    N %= 20;
    printf("%d nota(s) de R$ 10,00\n", N/10);
    N %= 10;
    printf("%d nota(s) de R$ 5,00\n", N/5);
    N %= 5;
    printf("%d nota(s) de R$ 2,00\n", N/2);
    N %= 2;
    printf("%d nota(s) de R$ 1,00\n", N);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int N;

    cin >> N;

    cout << N << endl;

    cout << N/100 << " nota(s) de R$ 100,00" << endl;
    N %= 100;
    cout << N/50 << " nota(s) de R$ 50,00" << endl;
    N %= 50;
    cout << N/20 << " nota(s) de R$ 20,00" << endl;
    N %= 20;
    cout << N/10 << " nota(s) de R$ 10,00" << endl;
    N %= 10;
    cout << N/5 << " nota(s) de R$ 5,00" << endl;
    N %= 5;
    cout << N/2 << " nota(s) de R$ 2,00" << endl;
    N %= 2;
    cout << N << " nota(s) de R$ 1,00" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        Console.WriteLine(N);
        
        Console.WriteLine($"{N/100} nota(s) de R$ 100,00");
        N %= 100;
        Console.WriteLine($"{N/50} nota(s) de R$ 50,00");
        N %= 50;
        Console.WriteLine($"{N/20} nota(s) de R$ 20,00");
        N %= 20;
        Console.WriteLine($"{N/10} nota(s) de R$ 10,00");
        N %= 10;
        Console.WriteLine($"{N/5} nota(s) de R$ 5,00");
        N %= 5;
        Console.WriteLine($"{N/2} nota(s) de R$ 2,00");
        N %= 2;
        Console.WriteLine($"{N} nota(s) de R$ 1,00");
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
        
        int N = Integer.parseInt(in.readLine());
        
        System.out.printf("%d\n", N);
        
        System.out.printf("%d nota(s) de R$ 100,00\n", N/100);
        N %= 100;
        System.out.printf("%d nota(s) de R$ 50,00\n", N/50);
        N %= 50;
        System.out.printf("%d nota(s) de R$ 20,00\n", N/20);
        N %= 20;
        System.out.printf("%d nota(s) de R$ 10,00\n", N/10);
        N %= 10;
        System.out.printf("%d nota(s) de R$ 5,00\n", N/5);
        N %= 5;
        System.out.printf("%d nota(s) de R$ 2,00\n", N/2);
        N %= 2;
        System.out.printf("%d nota(s) de R$ 1,00\n", N);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());

console.log(N);

console.log(`${Math.floor(N / 100)} nota(s) de R$ 100,00`);
N %= 100;
console.log(`${Math.floor(N / 50)} nota(s) de R$ 50,00`);
N %= 50;
console.log(`${Math.floor(N / 20)} nota(s) de R$ 20,00`);
N %= 20;
console.log(`${Math.floor(N / 10)} nota(s) de R$ 10,00`);
N %= 10;
console.log(`${Math.floor(N / 5)} nota(s) de R$ 5,00`);
N %= 5;
console.log(`${Math.floor(N / 2)} nota(s) de R$ 2,00`);
N %= 2;
console.log(`${N} nota(s) de R$ 1,00`);
```

### Python 3.9

```python
N = int(input())

print(N)

print(f"{N//100} nota(s) de R$ 100,00")
N %= 100
print(f"{N//50} nota(s) de R$ 50,00")
N %= 50
print(f"{N//20} nota(s) de R$ 20,00")
N %= 20
print(f"{N//10} nota(s) de R$ 10,00")
N %= 10
print(f"{N//5} nota(s) de R$ 5,00")
N %= 5
print(f"{N//2} nota(s) de R$ 2,00")
N %= 2
print(f"{N} nota(s) de R$ 1,00")
```