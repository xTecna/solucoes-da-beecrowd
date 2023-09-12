# 1743 - Máquina de Verificação Automatizada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1743)

## Solução

É importante notar que duas posições do conector só podem ser compatíveis se em uma delas tiver um plugue e em outra uma tomada. Isso é a cara do ou exclusivo, onde dá verdadeiro se um e somente um dos valores é 1.

Com isso, podemos transformar os dois conectores em números binários e fazer a comparação apenas uma vez, onde o objetivo é que a operação ou exclusivo dê verdadeiro nas cinco posições. Com isso, o resultado procurado é 11111, que na base 10 é igual a 31.

### C99
```c
#include <stdio.h>

int main(){
    int X, Y, a;

    X = 0;
    for(int i = 0; i < 5; ++i){
        scanf("%d", &a);
        X *= 2;
        X += a;
    }

    Y = 0;
    for(int i = 0; i < 5; ++i){
        scanf("%d", &a);
        Y *= 2;
        Y += a;
    }

    printf("%c\n", (X ^ Y) == 31 ? 'Y' : 'N');

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int X, Y, a;

    X = 0;
    for(int i = 0; i < 5; ++i){
        cin >> a;
        X *= 2;
        X += a;
    }

    Y = 0;
    for(int i = 0; i < 5; ++i){
        cin >> a;
        Y *= 2;
        Y += a;
    }

    cout << ((X ^ Y) == 31 ? 'Y' : 'N') << endl;

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
        int X = 0;
        List<int> Xs = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 0; i < 5; ++i){
            X *= 2;
            X += Xs[i];
        }
        
        int Y = 0;
        List<int> Ys = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        for(int i = 0; i < 5; ++i){
            Y *= 2;
            Y += Ys[i];
        }
        
        if((X ^ Y) == 31){
            Console.WriteLine("Y");
        }else{
            Console.WriteLine("N");
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

        int X = 0;
        String[] Xs = in.readLine().trim().split(" ");
        for(int i = 0; i < 5; ++i){
            X *= 2;
            X += Integer.parseInt(Xs[i]);
        }

        int Y = 0;
        String[] Ys = in.readLine().trim().split(" ");
        for(int i = 0; i < 5; ++i){
            Y *= 2;
            Y += Integer.parseInt(Ys[i]);
        }

        if((X ^ Y) == 31){
            System.out.println("Y");
        }else{
            System.out.println("N");
        }
    }
}
```

### JavaScript 12.18
```js
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

X = parseInt(lines[0].trim().split(' ').join(''), 2);
Y = parseInt(lines[1].trim().split(' ').join(''), 2);

console.log(`${(X ^ Y) == 31 ? 'Y' : 'N'}`);
```

### Python 3.9
```py
X = int(''.join(input().strip().split(' ')), 2)
Y = int(''.join(input().strip().split(' ')), 2)

print('Y' if (X ^ Y) == 31 else 'N')
```