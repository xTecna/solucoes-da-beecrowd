# 1796 - Economia Brasileira

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1796)

## Solução

Para este problema, apenas um contador de votos satisfatórios basta, pois eles é que vão decidir se sua resposta será sim ou não. É importante notar que se metade das pessoas estão satisfeitas com a economia, ainda assim a resposta precisa ser `'N'` já que, para ser maioria, precisa ser maior do que a metade.

### C99
```c
#include <stdio.h>

int main(){
    int Q, V, satisfatorio;

    satisfatorio = 0;
    scanf("%d", &Q);
    for(int i = 0; i < Q; ++i){
        scanf("%d", &V);
        if(!V)  ++satisfatorio;
    }

    printf("%c\n", satisfatorio > Q/2 ? 'Y' : 'N');

    return 0;
}
```

### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    int Q, V, satisfatorio;

    satisfatorio = 0;
    cin >> Q;
    for(int i = 0; i < Q; ++i){
        cin >> V;
        if(!V)  ++satisfatorio;
    }

    cout << (char) (satisfatorio > Q/2 ? 'Y': 'N') << endl;

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
        int Q = int.Parse(Console.ReadLine());
        List<int> votos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        int satisfatorio = Q;
        for(int i = 0; i < Q; ++i){
            satisfatorio -= votos[i];
        }

        if(satisfatorio > Q/2){
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

        int Q = Integer.parseInt(in.readLine());
        String[] votos = in.readLine().trim().split(" ");
        
        int satisfatorio = Q;
        for(int i = 0; i < Q; ++i){
            satisfatorio -= Integer.parseInt(votos[i]);
        }

        if(satisfatorio > Q/2){
            System.out.println("Y");
        }else{
            System.out.println("N");
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let Q = lines.shift();
let votos = lines.shift().trim().split(' ').map((x) => parseInt(x));

let satisfatorio = Q - votos.reduce((acc, cur) => acc + cur, 0);

if(satisfatorio > Q/2){
    console.log('Y');
}else{
    console.log('N');
}
```

### Python 3.9
```py
Q = int(input())
votos = [int(x) for x in input().strip().split(' ')]

satisfatorio = Q - sum(votos)

print('Y' if satisfatorio > Q/2 else 'N')
```