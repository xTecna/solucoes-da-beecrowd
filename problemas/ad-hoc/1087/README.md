# 1087 - Dama

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1087)

## Solução

Primeiramente, vamos provar que é possível ir de uma casa até qualquer outra casa do tabuleiro com no máximo dois movimentos. Considere a origem com as coordenadas $(x_1, y_1)$ e o destino com as coordenadas $(x_2, y_2)$. Os dois movimentos no máximo que você pode fazer com a rainha consistem em primeiro ir para $(x_2, y_1)$ e depois ir para $(x_2, y_2)$.

A partir daí, podemos economizar uma viagem se pudermos ir direto para $(x_2, y_2)$ usando os movimentos possíveis da rainha, o que pode acontecer em três casos diferentes:

* Os pontos de origem e destino estão na mesma linha, ou seja, $x_1 = x_2$;
* Os pontos de origem e destino estão na mesma coluna, ou seja, $y_1 = y_2$;
* Os pontos de origem e destino estão na mesma diagonal, ou seja, $|x_1 - x_2| = |y_1 - y_2|$ (a diferença entre as distâncias horizontal e vertical são iguais).

Lembrando que quando $x_1 = x_2$ e $y_1 = y_2$, não é necessário fazer movimento algum.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int main(){
    int X1, Y1, X2, Y2;

    while(scanf("%d %d %d %d", &X1, &Y1, &X2, &Y2)){
        if(!X1 && !Y1 && !X2 && !Y2)    break;

        if(X1 == X2 && Y1 == Y2){
            printf("0\n");
        }else if(X1 == X2 || Y1 == Y2 || abs(X1 - X2) == abs(Y1 - Y2)){
            printf("1\n");
        }else{
            printf("2\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int X1, Y1, X2, Y2;

    while(cin >> X1 >> Y1 >> X2 >> Y2){
        if(!X1 && !Y1 && !X2 && !Y2)    break;

        if(X1 == X2 && Y1 == Y2){
            cout << 0 << endl;
        }else if(X1 == X2 || Y1 == Y2 || abs(X1 - X2) == abs(Y1 - Y2)){
            cout << 1 << endl;
        }else{
            cout << 2 << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            string[] partes = entrada.Trim().Split(' ');

            int X1 = int.Parse(partes[0]);
            int Y1 = int.Parse(partes[1]);
            int X2 = int.Parse(partes[2]);
            int Y2 = int.Parse(partes[3]);
            
            if(X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0){
                break;
            }

            if(X1 == X2 && Y1 == Y2){
                Console.WriteLine(0);
            }else if(X1 == X2 || Y1 == Y2 || Math.Abs(X1 - X2) == Math.Abs(Y1 - Y2)){
                Console.WriteLine(1);
            }else{
                Console.WriteLine(2);
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
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] partes = in.readLine().trim().split(" ");

            int X1 = Integer.parseInt(partes[0]);
            int Y1 = Integer.parseInt(partes[1]);
            int X2 = Integer.parseInt(partes[2]);
            int Y2 = Integer.parseInt(partes[3]);

            if(X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0){
                break;
            }

            if(X1 == X2 && Y1 == Y2){
                System.out.println("0");
            }else if(X1 == X2 || Y1 == Y2 || Math.abs(X1 - X2) == Math.abs(Y1 - Y2)){
                System.out.println("1");
            }else{
                System.out.println("2");
            }
        }
    }
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let [X1, Y1, X2, Y2] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (X1 == X2 && Y1 == Y2)
    console.log(0);
  else if (X1 == X2 || Y1 == Y2 || Math.abs(X1 - X2) == Math.abs(Y1 - Y2))
    console.log(1);
  else
    console.log(2);
}
```

### Python 3.9
```python
while True:
    try:
        [X1, Y1, X2, Y2] = [int(x) for x in input().strip().split(' ')]

        if(not X1 and not Y1 and not X2 and not Y2):
            break

        if(X1 == X2 and Y1 == Y2):
            print(0)
        elif(X1 == X2 or Y1 == Y2 or abs(X1 - X2) == abs(Y1 - Y2)):
            print(1)
        else:
            print(2)
    except EOFError:
        break
```