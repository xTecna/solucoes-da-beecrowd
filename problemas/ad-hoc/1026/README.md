# 1026 - Carrega ou não Carrega?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1026)

## Solução

Vemos que nosso colega Mofiz desenvolveu um programa para somar dois números em binário, mas ele acabou se enrolando. Normalmente, quando fazemos tal soma, nós temos um carregador de bit importante para servir como o "vai um" que fazemos quando somamos na base 10, mas na versão de Mofiz, ele simplesmente esqueceu de implementar esse "vai um". A partir daqui, vou explicar mais sobre o erro que ele cometeu por duas abordagens diferentes e peço para que você selecione seu melhor jeito de entender: do jeito empírico, com exemplos, ou do jeito lógico, com prova matemática.

### Empiricamente falando

Como ele esqueceu de implementar o "vai um", na tabela abaixo estão todos os resultados possíveis de uma possível soma à moda Mofiz.

| Operação | Resultado esperado | Resultado obtido | Veredito                             |
| -------- | ------------------ | ---------------- | ------------------------------------ |
| 0 + 0    | 0                  | 0                | Correto, Mofiz não errou aqui!       |
| 0 + 1    | 1                  | 1                | Também correto, tudo certo até aqui. |
| 1 + 0    | 1                  | 1                | Certo, vamos continuar...            |
| 1 + 1    | 0 com vai um       | 0 sem vai um     | Aqui está nosso erro.                |

Com a ausência de um vai um, isso significa que essa operação não vai influenciar resultados futuros, ou seja, cada bit somado só vai afetar ele mesmo. Com isso, já que cada soma é influenciada apenas pelo seu próprio resultado, podemos ver que essa tabela é idêntica à tabela verdade do operador de ou exclusivo, tornando as duas operações (a de Mofiz e o ou exclusivo) equivalentes. Logo, basta fazermos a operação de ou exclusivo para obtermos nosso resultado.

### Logicamente falando

Se repararmos no desenho ali apresentado no enunciado, vemos que o fio de carry não vai a lugar algum, então podemos facilmente descarta-lo da operação lógica. A operação lógica construída por Mofiz então pode ser representada pela seguinte expressão, sendo simplificada a uma operação lógica bem conhecida.

$$(\lnot A \lor B) \land (A \lor \lnot B)\\
\lnot(\lnot A \lor B) \lor \lnot(A \lor \lnot B)\\
(A \land \lnot B) \lor (\lnot A \lor B)\\
A \veebar B$$

Logo, a operação do Mofiz e a operação do ou exclusivo são equivalentes. Desta maneira, basta fazermos a operação de ou exclusivo para obtermos nosso resultado.

> Em JavaScript, precisamos usar BigInt, já que os números não cabem em um inteiro normal.

### C99

```c
#include <stdio.h>

int main(){
    long long int a, b;

    while(scanf("%lld %lld", &a, &b) != EOF){
        printf("%lld\n", a ^ b);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    long long int a, b;

    while(cin >> a >> b){
        cout << (a ^ b) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            long a = long.Parse(entrada.Trim().Split(' ')[0]);
            long b = long.Parse(entrada.Trim().Split(' ')[1]);

            Console.WriteLine(a ^ b);
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

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            long a = Long.parseLong(entrada[0]);
            long b = Long.parseLong(entrada[1]);

            System.out.println(a ^ b);
        }
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

lines.forEach((line) => {
  let [a, b] = line.trim().split(" ").map((x) => BigInt(x));

  console.log((a ^ b).toString());
});
```

### Python 3.9

```python
while True:
    try:
        a, b = [int(x) for x in input().strip().split(' ')]

        print(a ^ b)
    except EOFError:
        break
```