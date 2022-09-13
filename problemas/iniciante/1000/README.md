# 1000 - Hello World!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1000)

## Solução

Este é considerado um dos problemas mais difíceis da beecrowd por questões frias: poucos acertos para muuuitas tentativas. Normalmente, esse é o primeiro problema que as pessoas resolvem na beecrowd e a primeira experiência normalmente não é muito bacana pois a maior parte dos vereditos é Wrong Answer e as pessoas ficam sem saber onde erraram. Se você está aqui por esse motivo, tudo bem, acontece, vida que segue.

Perceba que este programa é bem direto, os únicos dois objetivos deste problema são imprimir um "Hello World!" e pular a linha (normalmente as pessoas erram por causa desse segundo objetivo). Com isso, certifique-se de imprimir a frase e colocar ao final o caractere de pular linha ou de usar uma função que ao final da impressão já pule a linha para você. E é isso.

Espero que este problema não tenha te desmotivado de continuar tentando resolver problemas no site. Para qualquer coisa, por favor, consulte este solucionário e continue estudando!

### C99

```c
#include <stdio.h>

int main(){
    printf("Hello World!\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    cout << "Hello World!" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        Console.WriteLine("Hello World!");
    }
}
```

### Java 14
```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("Hello World!");
    }
}
```

### JavaScript 12.18

```javascript
console.log("Hello World!");
```

### Python 3.9
```python
print("Hello World!")
```
