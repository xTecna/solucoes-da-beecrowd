# 1019 - Conversão de Tempo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1019)

## Solução

Para calcular o número de horas cheias que existem em um tempo em segundos, basta pegar a divisão inteira deste tempo por 3600, a quantidade de segundos em uma hora. Após pegar o número de horas cheias, a única informação que permanece relevante é o resto da divisão por 3600, já que o resto você já converteu em horas. Seguindo um raciocínio similar para os minutos, podemos calcular rapidamente os valores que precisamos. Vamos testar nossa ideia com 140153 segundos.

1. Tem 38 horas completas em 140153 segundos, que calculamos dividindo 140153/3600;
2. Fora dessas 38 horas completas, temos 3353 segundos que podemos continuar convertendo (resto da divisão de 140153 por 3600);
3. Tem 55 minutos nestes 3353, pois 3353/60 = 55;
4. Fora desses 55 minutos completos, sobraram 53 segundos;
5. Logo, nossa resposta é 38 horas, 55 minutos e 53 segundos.

### C99

```c
#include <stdio.h>

int main(){
    int segundos, horas, minutos;

    scanf("%d", &segundos);

    horas = segundos/3600;
    segundos %= 3600;
    minutos = segundos/60;
    segundos %= 60;

    printf("%d:%d:%d\n", horas, minutos, segundos);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int segundos, horas, minutos;

    cin >> segundos;

    horas = segundos/3600;
    segundos %= 3600;
    minutos = segundos/60;
    segundos %= 60;

    cout << horas << ':' << minutos << ':' << segundos << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int segundos = int.Parse(Console.ReadLine());
        
        int horas = segundos/3600;
        segundos %= 3600;
        int minutos = segundos/60;
        segundos %= 60;
        
        Console.WriteLine($"{horas}:{minutos}:{segundos}");
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
        
        int segundos = Integer.parseInt(in.readLine());
        
        int horas = segundos/3600;
        segundos %= 3600;
        int minutos = segundos/60;
        segundos %= 60;
        
        System.out.printf("%d:%d:%d\n", horas, minutos, segundos);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let segundos = parseInt(lines.shift());

let horas = Math.floor(segundos / 3600);
segundos %= 3600;
let minutos = Math.floor(segundos / 60);
segundos %= 60;

console.log(`${horas}:${minutos}:${segundos}`);
```

### Python 3.9

```python
segundos = int(input())

horas = segundos//3600
segundos %= 3600
minutos = segundos//60
segundos %= 60

print(f"{horas}:{minutos}:{segundos}")
```